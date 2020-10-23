//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);

// SystemC signals
logic clk;
logic nrst;


//------------------------------------------------------------------------------

A a_mod
(
  .clk(clk),
  .nrst(nrst)
);

endmodule



//==============================================================================
//
// Module: A (test_array_to_pointer.cpp:70:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic nrst
);

//------------------------------------------------------------------------------
// Method process: read_array (test_array_to_pointer.cpp:46:5) 

// Process-local variables
logic signed [31:0] pi[3];
logic signed [31:0] pa[3];
logic signed [31:0] pb[3];

always_comb 
begin : read_array     // test_array_to_pointer.cpp:46:5
    integer i;
    i = pi[0];
    i = pa[1];
    i = pb[2];
end

endmodule


