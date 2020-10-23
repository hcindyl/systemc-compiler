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
logic nrst;
logic [3:0] s;

//------------------------------------------------------------------------------
// Method process: no_sens_method (test_fcall_empty.cpp:37:5) 

integer a;
assign a = 1;

//------------------------------------------------------------------------------
// Method process: empty_if_method (test_fcall_empty.cpp:41:5) 

always_comb 
begin : empty_if_method     // test_fcall_empty.cpp:41:5
    integer a_1;
    a_1 = 0;
    if (|s)
    begin
        a_1 = 1;
    end
    if (|s)
    begin
    end else begin
        a_1 = 2;
    end
    if (|s)
    begin
        a_1 = 3;
    end
end

//------------------------------------------------------------------------------
// Method process: empty_loop_method (test_fcall_empty.cpp:64:5) 

always_comb 
begin : empty_loop_method     // test_fcall_empty.cpp:64:5
    integer a_1;
    integer j;
    a_1 = 0;
    j = 0;
    while (j < 3)
    begin
        ++j;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: empty_loop_thread (test_fcall_empty.cpp:83:5) 

// Thread-local variables
logic [1:0] empty_loop_thread_PROC_STATE;
logic [1:0] empty_loop_thread_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : empty_loop_thread_comb     // test_fcall_empty.cpp:83:5
    empty_loop_thread_func;
end
function void empty_loop_thread_func;
    integer a;
    empty_loop_thread_PROC_STATE_next = empty_loop_thread_PROC_STATE;
    
    case (empty_loop_thread_PROC_STATE)
        0: begin
            a = 0;
            if (|s)
            begin
                empty_loop_thread_PROC_STATE_next = 1; return;    // test_fcall_empty.cpp:91:31;
            end
            empty_loop_thread_PROC_STATE_next = 2; return;    // test_fcall_empty.cpp:92:13;
        end
        1: begin
            if (|s)
            begin
                empty_loop_thread_PROC_STATE_next = 1; return;    // test_fcall_empty.cpp:91:31;
            end
            empty_loop_thread_PROC_STATE_next = 2; return;    // test_fcall_empty.cpp:92:13;
        end
        2: begin
            a = 0;
            if (|s)
            begin
                empty_loop_thread_PROC_STATE_next = 1; return;    // test_fcall_empty.cpp:91:31;
            end
            empty_loop_thread_PROC_STATE_next = 2; return;    // test_fcall_empty.cpp:92:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : empty_loop_thread_ff
    if ( ~nrst ) begin
        empty_loop_thread_PROC_STATE <= 0;    // test_fcall_empty.cpp:86:9;
    end
    else begin
        empty_loop_thread_PROC_STATE <= empty_loop_thread_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Method process: fcall_method (test_fcall_empty.cpp:98:5) 

always_comb 
begin : fcall_method     // test_fcall_empty.cpp:98:5
end

//------------------------------------------------------------------------------
// Clocked THREAD: fcall_thread (test_fcall_empty.cpp:102:5) 

// Next-state combinational logic
always_comb begin : fcall_thread_comb     // test_fcall_empty.cpp:102:5
    fcall_thread_func;
end
function void fcall_thread_func;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : fcall_thread_ff
    if ( ~nrst ) begin
    end
    else begin
    end
end

endmodule


