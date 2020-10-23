//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: dut ()
//
module dut // "dut0"
(
);

// SystemC signals
logic clk;
logic rstn;
logic ready0;
logic valid0;
logic ready1;
logic valid1;

//------------------------------------------------------------------------------
// Clocked THREAD: thread0 (test_cthread_duplicate_states.cpp:28:5) 

// Thread-local variables
logic valid0_next;
logic [1:0] thread0_PROC_STATE;
logic [1:0] thread0_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread0_comb     // test_cthread_duplicate_states.cpp:28:5
    thread0_func;
end
function void thread0_func;
    valid0_next = valid0;
    thread0_PROC_STATE_next = thread0_PROC_STATE;
    
    case (thread0_PROC_STATE)
        0: begin
            valid0_next = 1;
            thread0_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:33:13;
        end
        1: begin
            if (!ready0)
            begin
                thread0_PROC_STATE_next = 2; return;    // test_cthread_duplicate_states.cpp:35:17;
            end
            valid0_next = 0;
            thread0_PROC_STATE_next = 3; return;    // test_cthread_duplicate_states.cpp:39:13;
        end
        2: begin
            if (!ready0)
            begin
                thread0_PROC_STATE_next = 2; return;    // test_cthread_duplicate_states.cpp:35:17;
            end
            valid0_next = 0;
            thread0_PROC_STATE_next = 3; return;    // test_cthread_duplicate_states.cpp:39:13;
        end
        3: begin
            valid0_next = 1;
            thread0_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:33:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread0_ff
    if ( ~rstn ) begin
        thread0_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:29:9;
    end
    else begin
        valid0 <= valid0_next;
        thread0_PROC_STATE <= thread0_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: thread1 (test_cthread_duplicate_states.cpp:43:5) 

// Thread-local variables
logic valid1_next;
logic [1:0] thread1_PROC_STATE;
logic [1:0] thread1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : thread1_comb     // test_cthread_duplicate_states.cpp:43:5
    thread1_func;
end
function void thread1_func;
    integer x;
    valid1_next = valid1;
    thread1_PROC_STATE_next = thread1_PROC_STATE;
    
    case (thread1_PROC_STATE)
        0: begin
            valid1_next = 1;
            thread1_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:50:17;
        end
        1: begin
            if (!ready1)
            begin
                thread1_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:50:17;
            end
            x = 42;
            thread1_PROC_STATE_next = 2; return;    // test_cthread_duplicate_states.cpp:54:13;
        end
        2: begin
            valid1_next = 1;
            thread1_PROC_STATE_next = 1; return;    // test_cthread_duplicate_states.cpp:50:17;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : thread1_ff
    if ( ~rstn ) begin
        valid1 <= 0;
        thread1_PROC_STATE <= 0;    // test_cthread_duplicate_states.cpp:45:9;
    end
    else begin
        valid1 <= valid1_next;
        thread1_PROC_STATE <= thread1_PROC_STATE_next;
    end
end

endmodule


