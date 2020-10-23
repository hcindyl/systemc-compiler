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


//------------------------------------------------------------------------------

A a_mod
(
  .a(a),
  .b(b),
  .c(c)
);

endmodule



//==============================================================================
//
// Module: A (test_unary.cpp:154:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c
);

// SystemC signals

//------------------------------------------------------------------------------
// Method process: narrowCastNeg (test_unary.cpp:35:5) 

always_comb 
begin : narrowCastNeg     // test_unary.cpp:35:5
    logic signed [7:0] k1;
    logic signed [7:0] k2;
    k1 = -11'sd541;
    assert (k1 == -6'sd29) else $error("Assertion failed at test_unary.cpp:41:9");
    k2 = (-8'sd211) * 14 + (-9'sd211) + (-16'sd211);
    assert (k2 == -7'sd48) else $error("Assertion failed at test_unary.cpp:47:9");
end

//------------------------------------------------------------------------------
// Method process: negativeLiterals (test_unary.cpp:50:5) 

always_comb 
begin : negativeLiterals     // test_unary.cpp:50:5
    integer i;
    logic signed [3:0] x;
    logic signed [7:0] y;
    logic signed [7:0] j;
    i = -2'sd1;
    x = -3'sd2;
    y = -3'sd3;
    i = (-4'sd4) * (-4'sd5);
    i = -3'sd2;
    i = -12'sd2;
    i = (-4'sd2) - 2 * (-3'sd2);
    assert (i == 2) else $error("Assertion failed at test_unary.cpp:60:9");
    j = 0;
    j = -8'sd211;
    assert (j == 45) else $error("Assertion failed at test_unary.cpp:65:9");
end

//------------------------------------------------------------------------------
// Method process: increment1 (test_unary.cpp:69:5) 

always_comb 
begin : increment1     // test_unary.cpp:69:5
    integer i;
    integer j;
    integer k1;
    integer k2;
    i = 1;
    j = 2;
    i--;
    j++;
    k1 = ++i;
    k2 = --j;
    b = |k1;
    b = |k2;
    b = |(i++);
    b = |(--j);
end

//------------------------------------------------------------------------------
// Method process: increment2 (test_unary.cpp:86:5) 

always_comb 
begin : increment2     // test_unary.cpp:86:5
    integer i;
    integer j;
    integer k1;
    integer k2;
    i = a;
    j = a;
    i--;
    j++;
    k1 = ++i;
    k2 = --j;
    b = |k1;
    b = |k2;
    b = |(i++);
    b = |(--j);
end

//------------------------------------------------------------------------------
// Method process: plus1 (test_unary.cpp:103:5) 

always_comb 
begin : plus1     // test_unary.cpp:103:5
    integer i;
    integer j;
    integer k1;
    integer k2;
    i = -a;
    j = a;
    k1 = i + (-j);
    k2 = j + i;
    b = |(-k1);
    b = |k2;
end

//------------------------------------------------------------------------------
// Method process: not1 (test_unary.cpp:115:5) 

// Process-local variables
logic signed [31:0] k;
logic signed [31:0] m;

always_comb 
begin : not1     // test_unary.cpp:115:5
    logic l1;
    logic l2;
    logic l3;
    logic l4;
    logic ll1;
    logic ll2;
    integer unsigned x;
    integer unsigned y;
    integer unsigned z;
    l1 = a == b;
    l2 = !l1;
    l3 = l2 || !(k == m);
    l4 = !(l2 && !l3);
    k = l4 || !l3;
    l2 = !l2;
    ll1 = 1;
    ll2 = ~ll1;
    b = |(!l2 + ~ll2);
    x = 43;
    y = ~x;
    z = ~y;
end

//------------------------------------------------------------------------------
// Method process: not2 (test_unary.cpp:140:5) 

always_comb 
begin : not2     // test_unary.cpp:140:5
    logic [9:0] par1;
    logic [11:0] par2;
    logic [9:0] a_1;
    logic [11:0] b_1;
    par1 = 10'd41; par2 = 12'd42;
    // Call not_test() begin
    a_1 = par1;
    b_1 = par2;
    // Call not_test() end
end

endmodule


