//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a_mod"
(
    input logic clk
);

// SystemC signals
logic [7:0] s;

//------------------------------------------------------------------------------
// Method process: reference (test_var_ref_arr_unkwn.cpp:24:5) 

always_comb 
begin : reference     // test_var_ref_arr_unkwn.cpp:24:5
    integer unsigned larr[5];
    integer i;
    i = s;
    i++;
    larr[i] = 1;
end

//------------------------------------------------------------------------------
// Method process: reference2 (test_var_ref_arr_unkwn.cpp:34:5) 

// Process-local variables
logic [31:0] arr[3][4];

always_comb 
begin : reference2     // test_var_ref_arr_unkwn.cpp:34:5
    integer i;
    i = s;
    i++;
    i = arr[i][1];
end

endmodule


