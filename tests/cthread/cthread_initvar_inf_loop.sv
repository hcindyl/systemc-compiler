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
module Top // "top_inst"
(
    input logic clk
);

// SystemC signals
logic arstn;
logic signed [31:0] in;

//------------------------------------------------------------------------------
// Clocked THREAD: test_cthread1 (test_cthread_initvar_inf_loop.cpp:26:5) 

// Thread-local variables
logic [30:0] var_a;
logic [30:0] var_a_next;
logic signed [31:0] in_next;

// Next-state combinational logic
always_comb begin : test_cthread1_comb     // test_cthread_initvar_inf_loop.cpp:26:5
    test_cthread1_func;
end
function void test_cthread1_func;
    in_next = in;
    var_a_next = var_a;
    in_next = var_a_next;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_cthread1_ff
    if ( ~arstn ) begin
        var_a <= 1;
    end
    else begin
        var_a <= var_a_next;
        in <= in_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: test_cthread2 (test_cthread_initvar_inf_loop.cpp:37:5) 

// Thread-local variables
logic [30:0] var_a0;
logic [30:0] var_a_next0;
logic signed [31:0] in_next0;
logic test_cthread2_PROC_STATE;
logic test_cthread2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : test_cthread2_comb     // test_cthread_initvar_inf_loop.cpp:37:5
    test_cthread2_func;
end
function void test_cthread2_func;
    in_next0 = in;
    var_a_next0 = var_a0;
    test_cthread2_PROC_STATE_next = test_cthread2_PROC_STATE;
    
    case (test_cthread2_PROC_STATE)
        0: begin
            var_a_next0 = 1;
            test_cthread2_PROC_STATE_next = 1; return;    // test_cthread_initvar_inf_loop.cpp:43:13;
        end
        1: begin
            in_next0 = var_a_next0;
            var_a_next0 = 1;
            test_cthread2_PROC_STATE_next = 1; return;    // test_cthread_initvar_inf_loop.cpp:43:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : test_cthread2_ff
    if ( ~arstn ) begin
        test_cthread2_PROC_STATE <= 0;    // test_cthread_initvar_inf_loop.cpp:39:9;
    end
    else begin
        var_a0 <= var_a_next0;
        in <= in_next0;
        test_cthread2_PROC_STATE <= test_cthread2_PROC_STATE_next;
    end
end

endmodule


