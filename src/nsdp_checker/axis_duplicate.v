//=============================================================================
//                            ------->  Revision History  <------
//=============================================================================
//
//   Date     Who   Ver  Changes
//=============================================================================
// 27-Apr-24  DWW     1  Initial creation
//=============================================================================

/*
    This module takes an AXI stream as an input, and clones it to a pair of
    outgoing AXI streams
*/
  
module axis_duplicate # (parameter DW = 32)
(
    input   clk, resetn,

    // The input stream
    input[DW-1:0]   axis_in_tdata,
    input           axis_in_tvalid,
    output          axis_in_tready,

    // The two output streams
    output[DW-1:0]  axis_out0_tdata,  axis_out1_tdata,
    output          axis_out0_tvalid, axis_out1_tvalid,
    input           axis_out0_tready, axis_out1_tready
);


reg fsm_state;

// The output data is driven directly from the input stream
assign axis_out0_tdata = axis_in_tdata;
assign axis_out1_tdata = axis_in_tdata;

// We can accept incoming data when both output streams are ready to receive
assign axis_in_tready = axis_out0_tready & axis_out1_tready & (resetn == 1) & (fsm_state == 0);

// The output data is valid only when <both> of them are ready to accept data
assign axis_out0_tvalid = axis_in_tvalid & axis_in_tready;
assign axis_out1_tvalid = axis_in_tvalid & axis_in_tready;

// This state machine ensures that a cycle of input-data car arrive
// every other cycle at maximum.
//
// We do this because the module up-stream of us can't keep up with 
// us if we accept new data on every cycle.
always @(posedge clk) begin
 
    if (resetn == 0) begin
        fsm_state <= 0;
    end
    
    else case(fsm_state)
        0:  if (axis_in_tvalid & axis_in_tready)
                fsm_state <= 1;

        1:  fsm_state <= 0;
    endcase
end

endmodule
