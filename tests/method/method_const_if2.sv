//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: test_if ()
//
module test_if // "tinst"
(
);

// SystemC signals

//------------------------------------------------------------------------------
// Method process: method_true (test_const_if2.cpp:19:5) 

always_comb 
begin : method_true     // test_const_if2.cpp:19:5
    integer x;
    x = 0;
    if (1)
    begin
        x = 1;
    end
end

//------------------------------------------------------------------------------
// Method process: method_false (test_const_if2.cpp:35:5) 

always_comb 
begin : method_false     // test_const_if2.cpp:35:5
    integer x;
    x = 1;
    if (0)
    begin
    end else begin
        x++;
    end
end

//------------------------------------------------------------------------------
// Method process: method_const_prop (test_const_if2.cpp:51:5) 

always_comb 
begin : method_const_prop     // test_const_if2.cpp:51:5
end

endmodule


