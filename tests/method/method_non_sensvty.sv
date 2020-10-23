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
logic a;
logic b;
logic c;
logic signed [31:0] d;


//------------------------------------------------------------------------------

A a_mod
(
  .a(a),
  .b(b),
  .c(c),
  .d(d)
);

endmodule



//==============================================================================
//
// Module: A (test_non_sensvty.cpp:137:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c,
    input logic signed [31:0] d
);

// SystemC signals
logic s1;

//------------------------------------------------------------------------------
// Method process: false_non_sensitive2 (test_non_sensvty.cpp:60:5) 

always_comb 
begin : false_non_sensitive2     // test_non_sensvty.cpp:60:5
    logic tmp;
    tmp = a;
    b = s1;
end

endmodule


