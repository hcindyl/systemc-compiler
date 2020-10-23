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


//------------------------------------------------------------------------------

A a_mod
(

);

endmodule



//==============================================================================
//
// Module: A (test_virtual_field.cpp:93:5)
//
module A // "b_mod.a_mod"
(
);

// SystemC signals

//------------------------------------------------------------------------------
// Method process: proc (test_virtual_field.cpp:66:5) 

// Process-local variables
logic signed [31:0] e_n0;
logic signed [31:0] n;
logic signed [31:0] e_k0;

always_comb 
begin : proc     // test_virtual_field.cpp:66:5
    integer TMP_0;
    integer i;
    integer j;
    // Call g() begin
    e_n0--;
    // Call g() end
    n = 1;
    i = n;
    // Call g() begin
    e_n0 = e_n0 - i;
    TMP_0 = e_n0;
    // Call g() end
    j = TMP_0;
    e_k0 = j + e_n0;
end

//------------------------------------------------------------------------------
// Method process: proc_d (test_virtual_field.cpp:74:5) 

// Process-local variables
logic signed [31:0] d_n0;
logic [31:0] d_n;
logic [31:0] d_k;

always_comb 
begin : proc_d     // test_virtual_field.cpp:74:5
    // Call g() begin
    d_n0--;
    // Call g() end
    // Call f() begin
    d_k++;
    // Call f() end
end

//------------------------------------------------------------------------------
// Method process: proc_e (test_virtual_field.cpp:79:5) 

// Process-local variables
logic signed [31:0] e_k0;
logic [31:0] e_n;
logic [31:0] e_k;
logic signed [31:0] e_n0;

always_comb 
begin : proc_e     // test_virtual_field.cpp:79:5
    e_k0 = 0;
    e_k = 1;
    // Call f() begin
    e_k0--;
    // Call f() end
    // Call f() begin
    e_k++;
    // Call f() end
    // Call g() begin
    e_n0--;
    // Call g() end
end

endmodule


