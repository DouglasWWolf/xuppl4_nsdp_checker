//=============================================================================
//                   ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 27-Apr-24  DWW     1  Initial creation
//
// 04-May-24  DWW     2  Added support for checking RDMX target addresses
//
// 22-May-24  DWW     3  Added support for ignoring sensor-chip header data
//
// 19-Jun-25  DWW     4  Added support for BAD_SRC_QSFP and BAD_nn_FLAGS
//=============================================================================


/*

    NOTE:

    This logic ignores sensor-chip frame-header bytes in the first 256 cycles
    of a half-frame arriving on channel 0, and ignores the sensor-chip frame-
    footer cycles arriving in the last 256 cycles of a half-frame arriving on
    channel 1.

    This means that PACKET_SIZE x PACKETS_PER_GROUP must always be 256 data-
    cycles.   Since a single data-cycle is 64 bytes, that means that PACKET_
    SIZE x PACKETS_PER_GROUP must always equal exactly 16K

*/

module data_checker # (FREQ_HZ = 250000000)
(
    input   clk, resetn,

    // Tells us which Ethernet channel we are, 0 or 1
    input   channel,

    // Input stream for the frame-data patterns
    input[31:0]     axis_pattern_tdata,
    input           axis_pattern_tvalid,
    output          axis_pattern_tready,

    // The data stream arriving from the CMAC
    input[511:0]    axis_eth_tdata,
    input           axis_eth_tvalid,
    input           axis_eth_tlast,
    input           axis_eth_tuser,
    output          axis_eth_tready,

    // Expected size of frame-data packets, in bytes
    input[15:0]     PACKET_SIZE,
    
    // Expected size of a full-frame (i.e., one phase) in bytes
    input[31:0]     FRAME_SIZE,

    // Expected range of RDMX target-addresses for frame-data
    input[63:0]     RFD_ADDR, RFD_SIZE,

    // Expected ranged of RMDX target-addresses for meta-data
    input[63:0]     RMD_ADDR, RMD_SIZE,

    // Expected address of RDMX target-address for frame-counter
    input[63:0]     RFC_ADDR,

    // The number of packets in a ping-pong group
    input[31:0]     PACKETS_PER_GROUP,

    // This is asserted when we detect activity on axis_eth
    output eth_active,

    // The total number of packets completely received
    output reg[63:0] total_packets_rcvd,

    // The total number of malformed (i.e., bad Ethernet FCS) packets
    output reg[63:0] malformed_packets,

    // The frame counter we expect to see in the frame-counter packet
    output reg[31:0] expected_fc,

    // This is the data-pattern we expect to see in the frame-data
    output reg[31:0] expected_frame_pattern,

    // This is the RDMX target address we expected to see
    output reg[63:0] expected_rdmx_addr, 

    // This is the RDMX sequence number we expected to see
    output reg[15:0] expected_rdmx_seq,

    // Contains error status bits
    output reg[31:0] error,

    // Contains the data that failed to match
    output reg[511:0] error_data,

    // This is high while "error = 0"
    output all_good
);

// If this many clock cycles pass without seeing incoming ethernet 
// data, we declare the incoming ethernet port to be "inactive"
localparam DATA_TIMEOUT = FREQ_HZ * 2;

// This IP packet sizes of the various kinds of packets we expect to arrive
localparam PACKET_OVERHEAD   = 50;
wire[31:0] FD_IP_PACKET_SIZE = PACKET_SIZE + PACKET_OVERHEAD;
localparam MD_IP_PACKET_SIZE = 128         + PACKET_OVERHEAD;
localparam FC_IP_PACKET_SIZE = 4           + PACKET_OVERHEAD;

// This is the magic number that identifies an RDMX packet
localparam RDMX_MAGIC = 16'h0122;


//=============================================================================
// Get a big-endian version of the incoming ethernet data
//=============================================================================
wire[511:0] be_tdata;
byte_swap#(.DW(512)) (.I(axis_eth_tdata), .O(be_tdata));
//=============================================================================


//=============================================================================
// This block breaks an RDMX header into fields
//=============================================================================
wire[47:0]  w_eth_dst_mac    = be_tdata[511:464];
wire[47:0]  w_eth_src_mac    = be_tdata[463:416];
wire[15:0]  w_eth_frame_type = be_tdata[415:400];
wire[15:0]  w_ip4_ver_dsf    = be_tdata[399:384];
wire[15:0]  w_ip4_length     = be_tdata[383:368];
wire[15:0]  w_ip4_id         = be_tdata[367:352];
wire[15:0]  w_ip4_flags      = be_tdata[351:336];
wire[15:0]  w_ip4_ttl_prot   = be_tdata[335:320];
wire[15:0]  w_ip4_checksum   = be_tdata[319:304];
wire[31:0]  w_ip4_src_ip     = be_tdata[303:272];
wire[31:0]  w_ip4_dst_ip     = be_tdata[271:240];
wire[15:0]  w_udp_src_port   = be_tdata[239:224];
wire[15:0]  w_udp_dst_port   = be_tdata[223:208];
wire[15:0]  w_udp_length     = be_tdata[207:192];
wire[15:0]  w_udp_checksum   = be_tdata[191:176];
wire[15:0]  w_rdmx_magic     = be_tdata[175:160];
wire[63:0]  w_rdmx_address   = be_tdata[159:096];
wire[15:0]  w_rdmx_seq_num   = be_tdata[095:080];
wire[31:0]  w_rdmx_user_fld  = be_tdata[079:048];
wire[ 7:0]  w_rdmx_flags     = be_tdata[047:040];
//=============================================================================

// This is high when there is no error detected
assign all_good = (error == 0);

// States of our state machine
reg[2:0]   fsm_state;
localparam FSM_GET_PATTERN      = 0;
localparam FSM_GET_FDATA_HEADER = 1;
localparam FSM_GET_FDATA_PACKET = 2;
localparam FSM_GET_MDATA_HEADER = 3;
localparam FSM_GET_MDATA_PACKET = 4;
localparam FSM_GET_FC_HEADER    = 5;
localparam FSM_GET_FC_PACKET    = 6;

// The sensor-chip in the sequencer overlays certain bytes in the frame
// data with "frame-header" information.    The mask we create here is
// used to "mask off" those frame-header bytes, setting them to 0
localparam[511:0] FRAME_HEADER_MASK = {8{64'hFFFF_FFFF_FFFF_FF00}};


// The sensor-chip in the sequencer overlays certain bytes in the frame
// data with "frame-footer" information.    The mask we create here is
// used to "mask off" those frame-footer bytes, setting them to 0
localparam[255:0] FFMASK_1 = {4{64'h00FF_FFFF_FFFF_FFFF}};
localparam[255:0] FFMASK_0 = {32{8'hFF}};
localparam[511:0] FRAME_FOOTER_MASK = {FFMASK_1, FFMASK_0};


// 'axis_pattern_tready' is valid any time we're fetching a new pattern.  It's also
// valid when we're in the "error" state because we need to allow patterns to be
// consumed.
assign axis_pattern_tready = (resetn == 1) & (error || (fsm_state == FSM_GET_PATTERN));

// 'axis_eth_tready' is valid whenever we're ready for ethernet data
assign axis_eth_tready     = (resetn == 1) & (error || (fsm_state != FSM_GET_PATTERN));

// Define the AXI stream data handshakes
wire axis_pattern_handshake = axis_pattern_tvalid & axis_pattern_tready;
wire axis_eth_handshake     = axis_eth_tvalid     & axis_eth_tready;

// This is the currently expected frame data and frame-header.  A "frame-header"
// is an ordinary data-cycle of frame-data, but with 0's in every byte defined
// by "FRAME_HEADER_MASK"
reg [511:0] expected_frame_data, expected_frame_header, expected_frame_footer;


//=============================================================================
// This block manages the expected incoming RDMX address of frame-data
//=============================================================================
// Any cycle where this is '1' will increment 'expected_fd_offs'
reg        inc_fd_offs;

// "Expected offset" cycles between 0 and RFD_SIZE
reg [63:0] expected_fd_offs;

// The next "expected offset" if it doesn't wrap around
wire[63:0] next_fd_offs = expected_fd_offs + PACKET_SIZE;

// The expected target address of the frame-data is base address + offset
wire[63:0] expected_fd_addr = RFD_ADDR + expected_fd_offs;

// This state machine increments 'expected_fd_offs' and handles the wrap
always @(posedge clk) begin
    if (resetn == 0)
        expected_fd_offs <= 0;
    else if (inc_fd_offs) begin
        if (next_fd_offs < RFD_SIZE)
            expected_fd_offs <= next_fd_offs;
        else
            expected_fd_offs <= 0;
    end
end
//=============================================================================


//=============================================================================
// This block manages the expected incoming RDMX address of meta-data
//=============================================================================
// Any cycle where this is '1' will incredment 'expected_md_offs'
reg        inc_md_offs;

// "Expected offset" cycles between 0 and RMD_SIZE
reg [63:0] expected_md_offs;

// The next "expected offset" if it doesn't wrap around
wire[63:0] next_md_offs = expected_md_offs + 128;

// The expected target address of the meta-data is base address + offset
wire[63:0] expected_md_addr = RMD_ADDR + expected_md_offs;

// This state machine increments 'expected_md_offs' and handles the wrap
always @(posedge clk) begin
    if (resetn == 0)
        expected_md_offs <= 0;
    else if (inc_md_offs) begin
        if (next_md_offs < RMD_SIZE)
            expected_md_offs <= next_md_offs;
        else
            expected_md_offs <= 0;
    end
end
//=============================================================================



//=============================================================================
// This block asserts "eth_active" when it detects incoming ethernet data
//=============================================================================
reg[31:0] eth_active_timer;
assign eth_active = (eth_active_timer != 0);
always @(posedge clk) begin
    
    if (eth_active_timer)
        eth_active_timer <= eth_active_timer - 1;
    
    if (resetn == 0) 
        eth_active_timer <= 0;
    else if (axis_eth_tvalid)
        eth_active_timer <= FREQ_HZ * 2;

end
//=============================================================================


//=============================================================================
// This block computes the number of incoming packets per data-frame
//
// One instance of this module (rdmx_shim) will only see half of the packets
// for a data-frame.  The other half of the packets are being sent to the
// other instance of rdmx_shim.
//=============================================================================
reg [31:0] packets_per_frame;
wire[31:0] packets_per_hframe = packets_per_frame / 2;
always @* begin
    case (PACKET_SIZE)
          64:   packets_per_frame = FRAME_SIZE /   64;
         128:   packets_per_frame = FRAME_SIZE /  128;
         256:   packets_per_frame = FRAME_SIZE /  256;
         512:   packets_per_frame = FRAME_SIZE /  512;
        1024:   packets_per_frame = FRAME_SIZE / 1024;
        2048:   packets_per_frame = FRAME_SIZE / 2048;
        4096:   packets_per_frame = FRAME_SIZE / 4096;
        8192:   packets_per_frame = FRAME_SIZE / 8192;
     default:   packets_per_frame = 1;
    endcase
end
//=============================================================================


// This is the number of cycles in a frame-data packet
wire[7:0] cycles_per_fdata_packet = PACKET_SIZE / 64;

// The number of cycles thus far in this packet.  1-based
reg[7:0] cycles_in_packet;

// The number of frame-data cycles thus far in this half-frame.  0-based
reg[31:0] hframe_cycle;

// The number of data-cycles in a half-frame.
wire[31:0] cycles_per_hframe = (FRAME_SIZE / 64) / 2;

// This is the hframe_cycle where we should expect to encounter the 
// first set of sensor-chip footer data
wire[31:0] first_footer_hframe_cycle = cycles_per_hframe - 256;

// Number of frame-data packets encountered thus far
reg[31:0] fd_packet_count;

//=============================================================================
// This block registers incoming ethernet data in order to make it easier
// to close timing
//=============================================================================
reg        reg_valid;
reg        reg_tlast;
reg[511:0] reg_tdata, reg_be_tdata, reg_frame_header, reg_frame_footer;
reg[ 15:0] reg_rdmx_magic;
reg[ 63:0] reg_rdmx_address;
reg[ 15:0] reg_rdmx_seq_num;
reg[  7:0] reg_rdmx_flags;
reg[ 15:0] reg_ip4_length;
reg[ 31:0] reg_frame_counter;
reg[  7:0] reg_source_qsfp;
reg        reg_well_formed;



always @(posedge clk) begin
    reg_valid <= 0;
    reg_tlast <= 0;

    if (axis_eth_handshake) begin
        reg_well_formed   <= (axis_eth_tuser == 0);
        reg_tdata         <= axis_eth_tdata;
        reg_frame_header  <= axis_eth_tdata & FRAME_HEADER_MASK;
        reg_frame_footer  <= axis_eth_tdata & FRAME_FOOTER_MASK;
        reg_be_tdata      <= be_tdata;
        reg_tlast         <= axis_eth_tlast;
        reg_frame_counter <= axis_eth_tdata[31:0];
        reg_rdmx_magic    <= w_rdmx_magic;
        reg_rdmx_address  <= w_rdmx_address;
        reg_rdmx_seq_num  <= w_rdmx_seq_num;
        reg_ip4_length    <= w_ip4_length;
        reg_rdmx_flags    <= w_rdmx_flags;
        reg_source_qsfp   <= w_eth_src_mac[7:0];
        reg_valid         <= 1;
    end
end
//=============================================================================



//=============================================================================
// Error codes - corresponds to bit-numbers in the "error" port
//=============================================================================
localparam BAD_FD_MAGIC =  0;
localparam BAD_FD_SEQ   =  1;
localparam BAD_FD_PSIZE =  2;
localparam BAD_FD_TADDR =  3;
localparam BAD_FD       =  4;
localparam BAD_FD_PLEN  =  5;

localparam BAD_MD_MAGIC =  6;
localparam BAD_MD_SEQ   =  7;
localparam BAD_MD_PSIZE =  8;
localparam BAD_MD_TADDR =  9;
localparam BAD_MD       = 10;
localparam BAD_MD_PLEN  = 11;

localparam BAD_FC_MAGIC = 12;
localparam BAD_FC_SEQ   = 13;
localparam BAD_FC_PSIZE = 14;
localparam BAD_FC_TADDR = 15;
localparam BAD_FC       = 16;
localparam BAD_FC_PLEN  = 17;

localparam BAD_SRC_QSFP = 18;
localparam BAD_FD_FLAGS = 19;
localparam BAD_MD_FLAGS = 20;
localparam BAD_FC_FLAGS = 21;

//=============================================================================


//=============================================================================
// This state machine watches incoming packets and checks to see if all
// the data is as expected
//=============================================================================
always @(posedge clk) begin

    // These will only strobe high for a single cycle
    inc_fd_offs <= 0;
    inc_md_offs <= 0;

    // Keep track of the number of Ethernet frames we receive that
    // have a bad FCS.  We count these even if testing has otherwise
    // been halted due to an error-condition.
    if (reg_valid & reg_tlast & !reg_well_formed)
        malformed_packets <= malformed_packets + 1;

    // If we're in reset, start over
    if (resetn == 0) begin
        fsm_state          <= FSM_GET_PATTERN;
        expected_fc        <= 0;
        error              <= 0;
        total_packets_rcvd <= 0;
        malformed_packets  <= 0;
        expected_rdmx_addr <= 0;
        expected_rdmx_seq  <= 1;
    end

    // If we're still looking for errors...
    else if (error == 0) begin

        // Count the number of data-cycles in a packet
        if (reg_valid)
            cycles_in_packet <= cycles_in_packet + 1;

        // Keep track of the total number of packets received
        // and the next expected RDMX sequence number
        if (reg_valid & reg_tlast) begin
            total_packets_rcvd <= total_packets_rcvd + 1;
            expected_rdmx_seq  <= expected_rdmx_seq  + 1;
        end

        // Run the state machine
        case(fsm_state)

        // Wait for a new frame-data-pattern to arrive
        FSM_GET_PATTERN:
            if (axis_pattern_handshake) begin
                expected_frame_pattern <= axis_pattern_tdata;
                expected_frame_data    <= {16{axis_pattern_tdata}};
                expected_frame_header  <= {16{axis_pattern_tdata}} & FRAME_HEADER_MASK;
                expected_frame_footer  <= {16{axis_pattern_tdata}} & FRAME_FOOTER_MASK;                
                expected_fc            <= expected_fc + 1;
                fd_packet_count        <= 0;
                hframe_cycle           <= 0;
                fsm_state              <= FSM_GET_FDATA_HEADER;
            end

        // Get the RDMX header for a frame-data packet
        FSM_GET_FDATA_HEADER:
            if (reg_valid) begin

                if (reg_well_formed) begin
                    if (reg_rdmx_magic != RDMX_MAGIC) begin
                        error[BAD_FD_MAGIC] <= 1; 
                        error_data          <= reg_be_tdata;                   
                    end

                    if (reg_rdmx_seq_num != expected_rdmx_seq) begin
                        error[BAD_FD_SEQ] <= 1;
                        error_data        <= reg_be_tdata;                   
                    end

                    if (reg_source_qsfp != channel) begin
                        error[BAD_SRC_QSFP] <= 1;
                        error_data          <= reg_be_tdata;                   
                    end

                    if (reg_rdmx_flags != 0) begin
                        error[BAD_FD_FLAGS] <= 1;
                        error_data       <= reg_be_tdata;                   
                    end

                    if (reg_ip4_length != FD_IP_PACKET_SIZE) begin
                        error[BAD_FD_PSIZE] <= 1;
                        error_data          <= reg_be_tdata;
                    end

                    if (reg_rdmx_address != expected_fd_addr) begin
                        error[BAD_FD_TADDR] <= 1;
                        error_data          <= reg_be_tdata;
                        expected_rdmx_addr  <= expected_fd_addr;
                    end
                end

                inc_fd_offs      <= 1;
                fd_packet_count  <= fd_packet_count + 1;
                cycles_in_packet <= 1;
                fsm_state        <= FSM_GET_FDATA_PACKET;

            end

        // Fetch the data from a frame-data packet
        FSM_GET_FDATA_PACKET:
            if (reg_valid) begin

                if (reg_well_formed) begin
                    
                    // If this data-cycle contains sensor-chip "header" cells...
                    if (channel == 0 && hframe_cycle < 256 && hframe_cycle[1:0] == 0) begin
                        if (reg_frame_header != expected_frame_header) begin
                            error_data    <= reg_tdata;
                            error[BAD_FD] <= 1;
                        end
                    end

                    // If this data-cycle contains sensor-chip "header" cells...
                    else if (channel == 0 && hframe_cycle < 256 && hframe_cycle[1:0] == 1) begin
                        if (reg_frame_header != expected_frame_header) begin
                            error_data    <= reg_tdata;
                            error[BAD_FD] <= 1;
                        end
                    end

                    // If this data-cycle contains sensor-chip "footer" cells...
                    else if (channel == 1 && hframe_cycle >= first_footer_hframe_cycle && hframe_cycle[1:0] == 3) begin
                        if (reg_frame_footer != expected_frame_footer) begin
                            error_data    <= reg_tdata;
                            error[BAD_FD] <= 1;
                        end
                    end

                    // Otherwise, we are looking an an ordinary data-cycle of frame-data that
                    // does not contain sensor-chip frame-header or frame-footer cells
                    else begin
                        if (reg_tdata != expected_frame_data) begin
                            error_data    <= reg_tdata;
                            error[BAD_FD] <= 1;
                        end
                    end

                    // Check to see if we received the correct number of data-cycles
                    if (reg_tlast & (cycles_in_packet != cycles_per_fdata_packet)) begin
                        error_data         <= cycles_in_packet;                        
                        error[BAD_FD_PLEN] <= 1;
                    end
                end

                // Keep track of which cycle within the half-frame this is
                hframe_cycle <= hframe_cycle + 1;

                // If this is the last cycle of the packet...
                if (reg_tlast) begin
                    if (fd_packet_count == packets_per_hframe)
                        fsm_state <= FSM_GET_MDATA_HEADER;
                    else
                        fsm_state <= FSM_GET_FDATA_HEADER;
                end

            end

        // Get the RDMX header for a meta-data packet
        FSM_GET_MDATA_HEADER:
            if (reg_valid) begin

                if (reg_well_formed) begin

                    if (reg_rdmx_magic != RDMX_MAGIC) begin
                        error[BAD_MD_MAGIC] <= 1;                    
                        error_data          <= reg_be_tdata;
                    end

                    if (reg_rdmx_seq_num != expected_rdmx_seq) begin
                        error[BAD_MD_SEQ]   <= 1;
                        error_data          <= reg_be_tdata;                   
                    end

                    if (reg_source_qsfp != channel) begin
                        error[BAD_SRC_QSFP] <= 1;
                        error_data          <= reg_be_tdata;                   
                    end

                    if (reg_rdmx_flags != 0) begin
                        error[BAD_MD_FLAGS] <= 1;
                        error_data       <= reg_be_tdata;                   
                    end

                    if (reg_ip4_length != MD_IP_PACKET_SIZE) begin
                        error[BAD_MD_PSIZE] <= 1;
                        error_data          <= reg_be_tdata;                    
                    end

                    if (reg_rdmx_address != expected_md_addr) begin
                        error[BAD_MD_TADDR] <= 1;
                        expected_rdmx_addr  <= expected_md_addr;                    
                        error_data          <= reg_be_tdata;
                    end

                end

                inc_md_offs      <= 1;
                cycles_in_packet <= 1;
                fsm_state        <= FSM_GET_MDATA_PACKET;
            end

        // Fetch the data from a meta-data packet
        FSM_GET_MDATA_PACKET:
            if (reg_valid) begin
                if (reg_well_formed) begin
                    if (reg_tlast & (cycles_in_packet != 2)) begin
                        error[BAD_MD_PLEN] <= 1;
                        error_data         <= cycles_in_packet;
                    end
                end

                if (reg_tlast) fsm_state <= FSM_GET_FC_HEADER;
            end

        // Get the RDMX header for a frame-counter packet
        FSM_GET_FC_HEADER:
            if (reg_valid) begin

                if (reg_well_formed) begin

                    if (reg_rdmx_magic != RDMX_MAGIC) begin
                        error[BAD_FC_MAGIC] <= 1; 
                        error_data          <= reg_be_tdata;
                    end

                    if (reg_rdmx_seq_num != expected_rdmx_seq) begin
                        error[BAD_FC_SEQ]   <= 1;
                        error_data          <= reg_be_tdata;                   
                    end

                    if (reg_source_qsfp != channel) begin
                        error[BAD_SRC_QSFP] <= 1;
                        error_data          <= reg_be_tdata;                   
                    end

                    if (reg_rdmx_flags != 1) begin
                        error[BAD_FC_FLAGS] <= 1;
                        error_data       <= reg_be_tdata;                   
                    end

                    if (reg_ip4_length != FC_IP_PACKET_SIZE) begin
                        error[BAD_FC_PSIZE] <= 1;
                        error_data          <= reg_be_tdata;                    
                    end

                    if (reg_rdmx_address != RFC_ADDR) begin
                        error[BAD_FC_TADDR] <= 1;
                        expected_rdmx_addr  <= RFC_ADDR;
                        error_data          <= reg_be_tdata;
                    end

                end

                cycles_in_packet <= 1;
                fsm_state        <= FSM_GET_FC_PACKET;
            end

        // Fetch the data from a frame-counter packet 
        FSM_GET_FC_PACKET:
            if (reg_valid) begin

                if (reg_well_formed) begin

                    // Check to see if we received the expected frame-counter
                    if (reg_frame_counter != expected_fc) begin
                        error[BAD_FC] <= 1;
                        error_data    <= reg_be_tdata;
                    end

                    // Check for the correct number of cycles in the packet
                    if (reg_tlast & (cycles_in_packet != 1)) begin
                        error[BAD_FC_PLEN] <= 1;
                        error_data         <= cycles_in_packet;                          
                    end

                end

                // On the last cycle of the packet, go wait for the next frame
                if (reg_tlast) fsm_state <= FSM_GET_PATTERN;
            end
        
        endcase
    end

end
//=============================================================================


endmodule