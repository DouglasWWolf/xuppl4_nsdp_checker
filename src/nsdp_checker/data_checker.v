//=============================================================================
//                   ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 27-Apr-24  DWW     1  Initial creation
//=============================================================================


module data_checker
(
    input   clk, resetn,

    // Input stream for the frame-data patterns
    input[31:0]     axis_pattern_tdata,
    input           axis_pattern_tvalid,
    output          axis_pattern_tready,

    // The data stream arriving from the CMAC
    input[511:0]    axis_eth_tdata,
    input           axis_eth_tvalid,
    input           axis_eth_tlast,
    output          axis_eth_tready,

    // Expected size of frame-data packets, in bytes
    input[15:0]     PACKET_SIZE,
    
    // Expected size of a full-frame (i.e., one phase) in bytes
    input[31:0]     FRAME_SIZE,

    // This is asserted when we detect activity on axis_eth
    output reg eth_active,

    // This is the data-pattern we expect to see in the frame-data
    output reg[31:0] expected_frame_pattern,

    // Contains error status bits
    output reg[8:0] error,

    // Contains the data that failed to match
    output reg[511:0] error_data,

    // This is high while "error = 0"
    output all_good
);

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

// 'axis_pattern_tready' is valid any time we're fetching a new pattern
assign axis_pattern_tready = (fsm_state == FSM_GET_PATTERN && resetn == 1);

// 'axis_eth_tready' is valid whenever we're ready for ethernet data
assign axis_eth_tready     = (fsm_state != FSM_GET_PATTERN && resetn == 1);

// Define the AXI stream data handshakes
wire axis_pattern_handshake = axis_pattern_tvalid & axis_pattern_tready;
wire axis_eth_handshake     = axis_eth_tvalid     & axis_eth_tready;

// This is the currently expected frame data
reg[511:0] expected_frame_data;

// This is the frame-counter we expect to receive
reg[31:0] expected_fc;


//=============================================================================
// This block asserts "eth_active" when it detects incoming ethernet data
//=============================================================================
always @(posedge clk) begin
    if (resetn == 0)
        eth_active <= 0;
    else if (axis_eth_tvalid)
        eth_active <= 1;
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
wire[31:0] packets_per_half_frame = packets_per_frame / 2;
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

// The number of cycles in this packet
reg[7:0] cycles_in_packet;

// Number of frame-data packets encountered thus far
reg[31:0] fd_packet_count;

//=============================================================================
// This block registers incoming ethernet data in order to make it easier
// to close timing
//=============================================================================
reg        reg_valid;
reg        reg_tlast;
reg[511:0] reg_tdata, reg_be_tdata;
reg[ 15:0] reg_rdmx_magic;
reg[ 15:0] reg_ip4_length;
reg[ 31:0] reg_frame_counter;
always @(posedge clk) begin
    reg_valid <= 0;

    if (axis_eth_handshake) begin
        reg_tdata         <= axis_eth_tdata;
        reg_be_tdata      <= be_tdata;
        reg_tlast         <= axis_eth_tlast;
        reg_frame_counter <= axis_eth_tdata[31:0];
        reg_rdmx_magic    <= w_rdmx_magic;
        reg_ip4_length    <= w_ip4_length;
        reg_valid         <= 1;
    end
end
//=============================================================================



//=============================================================================
// Error codes - corresponds to bit-numbers in the "error" port
//=============================================================================
localparam BAD_FD_HDR  = 0;
localparam BAD_FD      = 1;
localparam BAD_FD_PLEN = 2;
localparam BAD_MD_HDR  = 3;
localparam BAD_MD      = 4;
localparam BAD_MD_PLEN = 5;
localparam BAD_FC_HDR  = 6;
localparam BAD_FC      = 7;
localparam BAD_FC_PLEN = 8;
//=============================================================================


//=============================================================================
// This state machine 
//=============================================================================
reg have_initial_fc;

always @(posedge clk) begin
    
    // Count the number of data-cycles in a packet
    if (reg_valid) begin
        cycles_in_packet <= cycles_in_packet + 1;
    end

    // If we're in reset, start over
    if (resetn == 0) begin
        fsm_state       <= 0;
        have_initial_fc <= 0;
        error           <= 0;
    end

    // If there's an error, HANG!
    else if (error) begin
        error <= error;
    end

    // Otherwise, run the state machine
    else case(fsm_state)

        // Wait for a new frame-data-pattern to arrive
        FSM_GET_PATTERN:
            if (axis_pattern_handshake) begin
                expected_frame_pattern <= axis_pattern_tdata;
                expected_frame_data    <= {16{axis_pattern_tdata}};
                fd_packet_count        <= 0;
                fsm_state              <= FSM_GET_FDATA_HEADER;
            end

        // Get the RDMX header for a frame-data packet
        FSM_GET_FDATA_HEADER:
            if (reg_valid) begin

                if (reg_rdmx_magic != RDMX_MAGIC) begin
                    error[BAD_FD_HDR] <= 1; 
                    error_data        <= reg_be_tdata;                   
                end

                if (reg_ip4_length != FD_IP_PACKET_SIZE) begin
                    error[BAD_FD_HDR] <= 1;
                    error_data        <= reg_be_tdata;
                end

                fd_packet_count  <= fd_packet_count + 1;
                cycles_in_packet <= 1;
                fsm_state        <= FSM_GET_FDATA_PACKET;
            end

        // Fetch the data from a frame-data packet
        FSM_GET_FDATA_PACKET:
            if (reg_valid) begin

                // Check to see if the packet data is what we expect
                if (reg_tdata != expected_frame_data) begin
                    error_data    <= reg_tdata;
                    error[BAD_FD] <= 1;
                end

                // If this is the last cycle of the packet...
                if (reg_tlast) begin
                    
                    if (cycles_in_packet != cycles_per_fdata_packet) begin
                        error_data         <= cycles_in_packet;                        
                        error[BAD_FD_PLEN] <= 1;
                    end

                    if (fd_packet_count == packets_per_half_frame)
                        fsm_state <= FSM_GET_MDATA_HEADER;
                    else
                        fsm_state <= FSM_GET_FDATA_HEADER;
                end

            end

        // Get the RDMX header for a meta-data packet
        FSM_GET_MDATA_HEADER:
            if (reg_valid) begin

                if (reg_rdmx_magic != RDMX_MAGIC) begin
                    error[BAD_MD_HDR] <= 1;                    
                    error_data        <= reg_be_tdata;
                end

                if (reg_ip4_length != MD_IP_PACKET_SIZE) begin
                    error[BAD_MD_HDR] <= 1;
                    error_data        <= reg_be_tdata;                    
                end

                cycles_in_packet <= 1;
                fsm_state        <= FSM_GET_MDATA_PACKET;
            end

        // Fetch the data from a meta-data packet
        FSM_GET_MDATA_PACKET:
            if (reg_valid) begin
                if (reg_tlast) begin
                    if (cycles_in_packet != 2) begin
                        error[BAD_MD_PLEN] <= 1;
                        error_data         <= cycles_in_packet;
                    end
                    fsm_state <= FSM_GET_FC_HEADER;
                end
            end

        // Get the RDMX header for a frame-counter packet
        FSM_GET_FC_HEADER:
            if (reg_valid) begin

                if (reg_rdmx_magic != RDMX_MAGIC) begin
                    error[BAD_FC_HDR] <= 1; 
                    error_data        <= reg_be_tdata;
                end

                if (reg_ip4_length != FC_IP_PACKET_SIZE) begin
                    error[BAD_FC_HDR] <= 1;
                    error_data        <= reg_be_tdata;                    
                end

                cycles_in_packet <= 1;
                expected_fc      <= expected_fc + 1;
                fsm_state        <= FSM_GET_FC_PACKET;
            end

        // Fetch the data from a frame-counter packet 
        FSM_GET_FC_PACKET:
            if (reg_valid) begin

                // Check to see if we received the expected frame-counter
                if (have_initial_fc) begin
                    if (reg_frame_counter != expected_fc) begin
                        error[BAD_FC] <= 1;
                        error_data    <= {expected_fc, reg_frame_counter};
                    end
                end else begin
                    have_initial_fc <= 1;
                    expected_fc     <= reg_frame_counter;
                end

                // Check to make sure we have the correct packet length
                if (reg_tlast) begin
                    if (cycles_in_packet != 1) begin
                        error[BAD_FC_PLEN] <= 1;
                        error_data         <= cycles_in_packet;                          
                    end
                    fsm_state <= FSM_GET_PATTERN;
                end
            end

    endcase

end
//=============================================================================


endmodule