//=============================================================================
//                ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 27-Apr-24  DWW     1  Initial creation
//=============================================================================

/*
    This is an AXI slave that reports errors that have been detected
*/


module axi_reporter
(
    input clk, resetn,

    input        eth_active,
    input        run_status,  
    input[ 17:0] error, 
    input[511:0] error_data,
    input[ 31:0] expected_fdata,
    input[ 63:0] expected_taddr,
    input[ 31:0] expected_fc,
    input[ 15:0] expected_seq,
    input[ 63:0] packets_rcvd,
    input[ 63:0] malformed_packets,

    //================== This is an AXI4-Lite slave interface ==================
        
    // "Specify write address"              -- Master --    -- Slave --
    input[31:0]                             S_AXI_AWADDR,   
    input                                   S_AXI_AWVALID,  
    output                                                  S_AXI_AWREADY,
    input[2:0]                              S_AXI_AWPROT,

    // "Write Data"                         -- Master --    -- Slave --
    input[31:0]                             S_AXI_WDATA,      
    input                                   S_AXI_WVALID,
    input[3:0]                              S_AXI_WSTRB,
    output                                                  S_AXI_WREADY,

    // "Send Write Response"                -- Master --    -- Slave --
    output[1:0]                                             S_AXI_BRESP,
    output                                                  S_AXI_BVALID,
    input                                   S_AXI_BREADY,

    // "Specify read address"               -- Master --    -- Slave --
    input[31:0]                             S_AXI_ARADDR,     
    input                                   S_AXI_ARVALID,
    input[2:0]                              S_AXI_ARPROT,     
    output                                                  S_AXI_ARREADY,

    // "Read data back to master"           -- Master --    -- Slave --
    output[31:0]                                            S_AXI_RDATA,
    output                                                  S_AXI_RVALID,
    output[1:0]                                             S_AXI_RRESP,
    input                                   S_AXI_RREADY
    //==========================================================================
);  


//=========================  AXI Register Map  =============================
localparam REG_RUN_STATUS =  0;
localparam REG_ETH_ACTIVE =  1;
localparam REG_ERROR      =  2;
localparam REG_PKTS_RCVDH =  3;
localparam REG_PKTS_RCVDL =  4;
localparam REG_EXP_FDATA  =  5;
localparam REG_EXP_TADDRH =  6;
localparam REG_EXP_TADDRL =  7;
localparam REG_EXP_FCTR   =  8;
localparam REG_EXP_SEQ    =  9;
localparam REG_MALFORMEDH = 10;
localparam REG_MALFORMEDL = 11;

localparam REG_ERR_DATA   = 16;
//==========================================================================


//==========================================================================
// We'll communicate with the AXI4-Lite Slave core with these signals.
//==========================================================================
// AXI Slave Handler Interface for write requests
wire[31:0]  ashi_windx;     // Input   Write register-index
wire[31:0]  ashi_waddr;     // Input:  Write-address
wire[31:0]  ashi_wdata;     // Input:  Write-data
wire        ashi_write;     // Input:  1 = Handle a write request
reg[1:0]    ashi_wresp;     // Output: Write-response (OKAY, DECERR, SLVERR)
wire        ashi_widle;     // Output: 1 = Write state machine is idle

// AXI Slave Handler Interface for read requests
wire[31:0]  ashi_rindx;     // Input   Read register-index
wire[31:0]  ashi_raddr;     // Input:  Read-address
wire        ashi_read;      // Input:  1 = Handle a read request
reg[31:0]   ashi_rdata;     // Output: Read data
reg[1:0]    ashi_rresp;     // Output: Read-response (OKAY, DECERR, SLVERR);
wire        ashi_ridle;     // Output: 1 = Read state machine is idle
//==========================================================================

// The state of the state-machines that handle AXI4-Lite read and AXI4-Lite write
reg ashi_write_state, ashi_read_state;

// The AXI4 slave state machines are idle when in state 0 and their "start" signals are low
assign ashi_widle = (ashi_write == 0) && (ashi_write_state == 0);
assign ashi_ridle = (ashi_read  == 0) && (ashi_read_state  == 0);
   
// These are the valid values for ashi_rresp and ashi_wresp
localparam OKAY   = 0;
localparam SLVERR = 2;
localparam DECERR = 3;

// Our address space is 256 bytes long (i.e., 64 32-bit registers)
localparam ADDR_MASK = 8'hFF;

//==========================================================================
// This state machine handles AXI4-Lite write requests
//
// Drives:
//==========================================================================
always @(posedge clk) begin

    // If we're in reset, initialize important registers
    if (resetn == 0) begin
        ashi_write_state  <= 0;

    // If we're not in reset, and a write-request has occured...        
    end else case (ashi_write_state)
        
        0:  if (ashi_write) begin
       
                // Assume for the moment that the result will be OKAY
                ashi_wresp <= OKAY;              
            
                // Convert the byte address into a register index
                case (ashi_windx)
               
                    // Writes to any register are a decode-error
                    default: ashi_wresp <= DECERR;
                endcase
            end

        // Dummy state, doesn't do anything
        1: ashi_write_state <= 0;

    endcase
end
//==========================================================================




//==========================================================================
// World's simplest state machine for handling AXI4-Lite read requests
//==========================================================================
always @(posedge clk) begin
    // If we're in reset, initialize important registers
    if (resetn == 0) begin
        ashi_read_state <= 0;
    
    // If we're not in reset, and a read-request has occured...        
    end else if (ashi_read) begin
   
        // Assume for the moment that the result will be OKAY
        ashi_rresp <= OKAY;              
        
        // Convert the byte address into a register index
        case (ashi_rindx)
            
            // Allow a read from any valid register                
            REG_RUN_STATUS:       ashi_rdata <= run_status;
            REG_ETH_ACTIVE:       ashi_rdata <= eth_active;
            REG_ERROR:            ashi_rdata <= error;
            REG_EXP_FDATA:        ashi_rdata <= expected_fdata;
            REG_PKTS_RCVDH:       ashi_rdata <= packets_rcvd[63:32];
            REG_PKTS_RCVDL:       ashi_rdata <= packets_rcvd[31:00];
            REG_EXP_TADDRH:       ashi_rdata <= expected_taddr[63:32];
            REG_EXP_TADDRL:       ashi_rdata <= expected_taddr[31:00];
            REG_EXP_FCTR:         ashi_rdata <= expected_fc;
            REG_EXP_SEQ:          ashi_rdata <= expected_seq;
            REG_MALFORMEDH:       ashi_rdata <= malformed_packets[63:32];
            REG_MALFORMEDL:       ashi_rdata <= malformed_packets[32:00];

            REG_ERR_DATA +  0:    ashi_rdata <= error_data[15 * 32 +: 32];
            REG_ERR_DATA +  1:    ashi_rdata <= error_data[14 * 32 +: 32];          
            REG_ERR_DATA +  2:    ashi_rdata <= error_data[13 * 32 +: 32];         
            REG_ERR_DATA +  3:    ashi_rdata <= error_data[12 * 32 +: 32];           
            REG_ERR_DATA +  4:    ashi_rdata <= error_data[11 * 32 +: 32];           
            REG_ERR_DATA +  5:    ashi_rdata <= error_data[10 * 32 +: 32];           
            REG_ERR_DATA +  6:    ashi_rdata <= error_data[ 9 * 32 +: 32];           
            REG_ERR_DATA +  7:    ashi_rdata <= error_data[ 8 * 32 +: 32];           
            REG_ERR_DATA +  8:    ashi_rdata <= error_data[ 7 * 32 +: 32];           
            REG_ERR_DATA +  9:    ashi_rdata <= error_data[ 6 * 32 +: 32];
            REG_ERR_DATA + 10:    ashi_rdata <= error_data[ 5 * 32 +: 32];           
            REG_ERR_DATA + 11:    ashi_rdata <= error_data[ 4 * 32 +: 32];           
            REG_ERR_DATA + 12:    ashi_rdata <= error_data[ 3 * 32 +: 32];           
            REG_ERR_DATA + 13:    ashi_rdata <= error_data[ 2 * 32 +: 32];           
            REG_ERR_DATA + 14:    ashi_rdata <= error_data[ 1 * 32 +: 32];           
            REG_ERR_DATA + 15:    ashi_rdata <= error_data[ 0 * 32 +: 32];           


            // Reads of any other register are a decode-error
            default: ashi_rresp <= DECERR;
        endcase
    end
end
//==========================================================================



//==========================================================================
// This connects us to an AXI4-Lite slave core
//==========================================================================
axi4_lite_slave#(ADDR_MASK) axil_slave
(
    .clk            (clk),
    .resetn         (resetn),
    
    // AXI AW channel
    .AXI_AWADDR     (S_AXI_AWADDR),
    .AXI_AWVALID    (S_AXI_AWVALID),   
    .AXI_AWREADY    (S_AXI_AWREADY),
    
    // AXI W channel
    .AXI_WDATA      (S_AXI_WDATA),
    .AXI_WVALID     (S_AXI_WVALID),
    .AXI_WSTRB      (S_AXI_WSTRB),
    .AXI_WREADY     (S_AXI_WREADY),

    // AXI B channel
    .AXI_BRESP      (S_AXI_BRESP),
    .AXI_BVALID     (S_AXI_BVALID),
    .AXI_BREADY     (S_AXI_BREADY),

    // AXI AR channel
    .AXI_ARADDR     (S_AXI_ARADDR), 
    .AXI_ARVALID    (S_AXI_ARVALID),
    .AXI_ARREADY    (S_AXI_ARREADY),

    // AXI R channel
    .AXI_RDATA      (S_AXI_RDATA),
    .AXI_RVALID     (S_AXI_RVALID),
    .AXI_RRESP      (S_AXI_RRESP),
    .AXI_RREADY     (S_AXI_RREADY),

    // ASHI write-request registers
    .ASHI_WADDR     (ashi_waddr),
    .ASHI_WINDX     (ashi_windx),
    .ASHI_WDATA     (ashi_wdata),
    .ASHI_WRITE     (ashi_write),
    .ASHI_WRESP     (ashi_wresp),
    .ASHI_WIDLE     (ashi_widle),

    // ASHI read registers
    .ASHI_RADDR     (ashi_raddr),
    .ASHI_RINDX     (ashi_rindx),
    .ASHI_RDATA     (ashi_rdata),
    .ASHI_READ      (ashi_read ),
    .ASHI_RRESP     (ashi_rresp),
    .ASHI_RIDLE     (ashi_ridle)
);
//==========================================================================



endmodule
