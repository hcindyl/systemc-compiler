//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
    input logic clk
);

// SystemC signals
logic signed [31:0] t;
logic [3:0] minst_s[2];

//------------------------------------------------------------------------------
// Method process: minst_metProc (test_modular_iface_array_ptr3.cpp:21:5) 

// Process-local variables
logic [3:0] minst_v[2];

always_comb 
begin : minst_metProc     // test_modular_iface_array_ptr3.cpp:21:5
    minst_v[0] = minst_s[0];
end

//------------------------------------------------------------------------------
// Method process: minst_metProc0 (test_modular_iface_array_ptr3.cpp:21:5) 

always_comb 
begin : minst_metProc0     // test_modular_iface_array_ptr3.cpp:21:5
    minst_v[1] = minst_s[1];
end

//------------------------------------------------------------------------------
// Method process: top_method (test_modular_iface_array_ptr3.cpp:50:5) 

// Process-local variables
logic [3:0] minst_vvv[2];

always_comb 
begin : top_method     // test_modular_iface_array_ptr3.cpp:50:5
    logic [3:0] a;
    // Call f() begin
    minst_vvv[0] = minst_s[0];
    // Call f() end
    a = minst_s[1];
    minst_s[0] = a + minst_vvv[0];
end

//------------------------------------------------------------------------------
// Method process: top_method2 (test_modular_iface_array_ptr3.cpp:57:5) 

// Process-local variables
logic [3:0] minst_vv[2];

always_comb 
begin : top_method2     // test_modular_iface_array_ptr3.cpp:57:5
    minst_vv[1] = t;
end

endmodule


