//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
    input logic clk,
    input logic rst,
    input logic in[3][2],
    input logic Top_inst,
    output logic [1:0] out_1,
    output logic [1:0] out_10,
    output logic [3:0] out[3]
);

// Variables generated for SystemC signals
logic [3:0] sig[3];

// Local parameters generated for C++ constants
localparam logic [31:0] N = 3;

//------------------------------------------------------------------------------
// Clocked THREAD: threadProc (test_array_in_top.cpp:41:5) 

// Thread-local variables
logic [3:0] out_next[3];

// Next-state combinational logic
always_comb begin : threadProc_comb     // test_array_in_top.cpp:41:5
    threadProc_func;
end
function void threadProc_func;
    out_next = out;
    for (integer i_1 = 1; i_1 < N; ++i_1)
    begin
        out_next[i_1] = in[i_1][0] ? sig[i_1] : 4'd0;
    end
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rst) 
begin : threadProc_ff
    if ( ~rst ) begin
        for (integer i = 1; i < N; ++i)
        begin
            out[i] <= 0;
        end
    end
    else begin
        out <= out_next;
    end
end

//------------------------------------------------------------------------------
// Method process: methProc (test_array_in_top.cpp:35:5) 

always_comb 
begin : methProc     // test_array_in_top.cpp:35:5
    sig[0] = 1;
    sig[2] = 2;
    out[0] = sig[1] + sig[2];
end

endmodule


