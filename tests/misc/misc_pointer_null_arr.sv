//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
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

// Variables generated for SystemC signals
logic nrst;

//------------------------------------------------------------------------------
// Method process: meth_if (test_pointer_null_arr.cpp:42:5) 

always_comb 
begin : meth_if     // test_pointer_null_arr.cpp:42:5
    integer k;
    k = 0;
end

//------------------------------------------------------------------------------
// Method process: meth_other (test_pointer_null_arr.cpp:71:5) 

always_comb 
begin : meth_other     // test_pointer_null_arr.cpp:71:5
    integer k;
    k = 0;
    k = 1;
    do
    begin
        k++;
    end
    while (0);
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread_other (test_pointer_null_arr.cpp:86:5) 

// Next-state combinational logic
always_comb begin : thread_other_comb     // test_pointer_null_arr.cpp:86:5
    thread_other_func;
end
function void thread_other_func;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge nrst) 
begin : thread_other_ff
    if ( ~nrst ) begin
    end
    else begin
    end
end

endmodule


