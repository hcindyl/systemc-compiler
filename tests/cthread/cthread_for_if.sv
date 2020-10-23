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
logic rst;
logic clk_gen;
logic clk;

assign clk = clk_gen;


//------------------------------------------------------------------------------

A a_mod
(
  .clk(clk),
  .rst(rst)
);

endmodule



//==============================================================================
//
// Module: A (test_cthread_for_if.cpp:93:5)
//
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic rst
);

// SystemC signals
logic sleep_enable;
logic block_access[3];
logic mem_active[3];
logic [2:0] sleep_time;
logic [2:0] wakeup_time;

//------------------------------------------------------------------------------
// Clocked THREAD: for_in_if1 (test_cthread_for_if.cpp:32:5) 

// Thread-local variables
logic [31:0] i;
logic [31:0] i_next;
logic [31:0] sleepTime;
logic [31:0] sleepTime_next;
logic [1:0] for_in_if1_PROC_STATE;
logic [1:0] for_in_if1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_in_if1_comb     // test_cthread_for_if.cpp:32:5
    for_in_if1_func;
end
function void for_in_if1_func;
    integer k;
    i_next = i;
    sleepTime_next = sleepTime;
    for_in_if1_PROC_STATE_next = for_in_if1_PROC_STATE;
    
    case (for_in_if1_PROC_STATE)
        0: begin
            sleepTime_next = sleep_time;
            if (sleep_enable)
            begin
                i_next = 0;
                if (i_next < sleepTime_next)
                begin
                    for_in_if1_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:43:21;
                end
                k = 1;
            end
            k = 2;
            for_in_if1_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:49:13;
        end
        1: begin
            i_next++;
            if (i_next < sleepTime_next)
            begin
                for_in_if1_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:43:21;
            end
            k = 1;
            k = 2;
            for_in_if1_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:49:13;
        end
        2: begin
            sleepTime_next = sleep_time;
            if (sleep_enable)
            begin
                i_next = 0;
                if (i_next < sleepTime_next)
                begin
                    for_in_if1_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:43:21;
                end
                k = 1;
            end
            k = 2;
            for_in_if1_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:49:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or posedge rst) 
begin : for_in_if1_ff
    if (rst ) begin
        integer k;
        k = 0;
        for_in_if1_PROC_STATE <= 0;    // test_cthread_for_if.cpp:36:9;
    end
    else begin
        i <= i_next;
        sleepTime <= sleepTime_next;
        for_in_if1_PROC_STATE <= for_in_if1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: for_in_if2 (test_cthread_for_if.cpp:54:5) 

// Thread-local variables
logic [31:0] i0;
logic [31:0] i_next0;
logic [2:0] wakeupTime;
logic [2:0] wakeupTime_next;
logic [31:0] i1;
logic [31:0] i_next1;
logic [2:0] sleepTime0;
logic [2:0] sleepTime_next0;
logic mem_active_next[3];
logic [1:0] for_in_if2_PROC_STATE;
logic [1:0] for_in_if2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : for_in_if2_comb     // test_cthread_for_if.cpp:54:5
    for_in_if2_func;
end
function void for_in_if2_func;
    integer k;
    logic blockFlags_flat[3];
    i_next0 = i0;
    i_next1 = i1;
    mem_active_next = mem_active;
    sleepTime_next0 = sleepTime0;
    wakeupTime_next = wakeupTime;
    for_in_if2_PROC_STATE_next = for_in_if2_PROC_STATE;
    
    case (for_in_if2_PROC_STATE)
        0: begin
            wakeupTime_next = wakeup_time;
            i_next0 = 0;
            if (i_next0 < wakeupTime_next)
            begin
                for_in_if2_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:64:17;
            end
            if (sleep_enable)
            begin
                for (integer i = 0; i < 3; i++)
                begin
                    blockFlags_flat[i] = block_access[i];
                    if (blockFlags_flat[i])
                    begin
                        mem_active_next[i] = 0;
                    end
                end
                sleepTime_next0 = sleep_time;
                i_next1 = 0;
                if (i_next1 < sleepTime_next0)
                begin
                    for_in_if2_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:76:21;
                end
                k = 1;
            end
            k = 2;
            for_in_if2_PROC_STATE_next = 3; return;    // test_cthread_for_if.cpp:82:13;
        end
        1: begin
            i_next0++;
            if (i_next0 < wakeupTime_next)
            begin
                for_in_if2_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:64:17;
            end
            if (sleep_enable)
            begin
                for (integer i = 0; i < 3; i++)
                begin
                    blockFlags_flat[i] = block_access[i];
                    if (blockFlags_flat[i])
                    begin
                        mem_active_next[i] = 0;
                    end
                end
                sleepTime_next0 = sleep_time;
                i_next1 = 0;
                if (i_next1 < sleepTime_next0)
                begin
                    for_in_if2_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:76:21;
                end
                k = 1;
            end
            k = 2;
            for_in_if2_PROC_STATE_next = 3; return;    // test_cthread_for_if.cpp:82:13;
        end
        2: begin
            i_next1++;
            if (i_next1 < sleepTime_next0)
            begin
                for_in_if2_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:76:21;
            end
            k = 1;
            k = 2;
            for_in_if2_PROC_STATE_next = 3; return;    // test_cthread_for_if.cpp:82:13;
        end
        3: begin
            wakeupTime_next = wakeup_time;
            i_next0 = 0;
            if (i_next0 < wakeupTime_next)
            begin
                for_in_if2_PROC_STATE_next = 1; return;    // test_cthread_for_if.cpp:64:17;
            end
            if (sleep_enable)
            begin
                for (integer i = 0; i < 3; i++)
                begin
                    blockFlags_flat[i] = block_access[i];
                    if (blockFlags_flat[i])
                    begin
                        mem_active_next[i] = 0;
                    end
                end
                sleepTime_next0 = sleep_time;
                i_next1 = 0;
                if (i_next1 < sleepTime_next0)
                begin
                    for_in_if2_PROC_STATE_next = 2; return;    // test_cthread_for_if.cpp:76:21;
                end
                k = 1;
            end
            k = 2;
            for_in_if2_PROC_STATE_next = 3; return;    // test_cthread_for_if.cpp:82:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or posedge rst) 
begin : for_in_if2_ff
    if (rst ) begin
        integer k;
        k = 0;
        for_in_if2_PROC_STATE <= 0;    // test_cthread_for_if.cpp:57:9;
    end
    else begin
        i0 <= i_next0;
        wakeupTime <= wakeupTime_next;
        i1 <= i_next1;
        sleepTime0 <= sleepTime_next0;
        mem_active <= mem_active_next;
        for_in_if2_PROC_STATE <= for_in_if2_PROC_STATE_next;
    end
end

endmodule


