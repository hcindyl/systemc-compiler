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
// Clocked THREAD: multi1 (test_fcall_multi_state.cpp:39:5) 

// Thread-local variables
logic signed [31:0] arrb[3];
logic signed [31:0] arrb_next[3];
logic signed [31:0] arra[3];
logic signed [31:0] arra_next[3];
logic [1:0] multi1_PROC_STATE;
logic [1:0] multi1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : multi1_comb     // test_fcall_multi_state.cpp:39:5
    multi1_func;
end
function void multi1_func;
    integer i;
    integer TMP_0;
    integer res;
    integer res_1;
    integer TMP_2;
    integer TMP_3;
    integer TMP_4;
    arra_next = arra;
    arrb_next = arrb;
    multi1_PROC_STATE_next = multi1_PROC_STATE;
    
    case (multi1_PROC_STATE)
        0: begin
            if (|s)
            begin
                // Call cref_wait1() begin
                multi1_PROC_STATE_next = 1; return;    // test_fcall_multi_state.cpp:34:9;
                // Call cref_wait1() end
            end
            multi1_PROC_STATE_next = 2; return;    // test_fcall_multi_state.cpp:49:13;
        end
        1: begin
            // Call cref_wait1() begin
            res = arra_next[2] + 1;
            TMP_0 = res;
            // Call cref_wait1() end
            res_1 = TMP_0;
            multi1_PROC_STATE_next = 2; return;    // test_fcall_multi_state.cpp:49:13;
        end
        2: begin
            if (s < 3)
            begin
                i = s;
                // Call cref_wait1() begin
                multi1_PROC_STATE_next = 3; return;    // test_fcall_multi_state.cpp:34:9;
                // Call cref_wait1() end
            end
            if (|s)
            begin
                // Call cref_wait1() begin
                multi1_PROC_STATE_next = 1; return;    // test_fcall_multi_state.cpp:34:9;
                // Call cref_wait1() end
            end
            multi1_PROC_STATE_next = 2; return;    // test_fcall_multi_state.cpp:49:13;
        end
        3: begin
            // Call cref_wait1() begin
            res = arrb_next[i] + 1;
            TMP_2 = res;
            // Call cref_wait1() end
            if (|s)
            begin
                // Call cref_wait1() begin
                multi1_PROC_STATE_next = 1; return;    // test_fcall_multi_state.cpp:34:9;
                // Call cref_wait1() end
            end
            multi1_PROC_STATE_next = 2; return;    // test_fcall_multi_state.cpp:49:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : multi1_ff
    if ( ~nrst ) begin
        integer i;
        i = 0;
        multi1_PROC_STATE <= 0;    // test_fcall_multi_state.cpp:42:9;
    end
    else begin
        arrb <= arrb_next;
        arra <= arra_next;
        multi1_PROC_STATE <= multi1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: multi2 (test_fcall_multi_state.cpp:64:5) 

// Thread-local variables
logic signed [31:0] a;
logic signed [31:0] a_next;
logic signed [31:0] b;
logic signed [31:0] b_next;
logic [1:0] multi2_PROC_STATE;
logic [1:0] multi2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : multi2_comb     // test_fcall_multi_state.cpp:64:5
    multi2_func;
end
function void multi2_func;
    integer TMP_0;
    integer TMP_1;
    integer TMP_2;
    integer TMP_3;
    integer TMP_4;
    a_next = a;
    b_next = b;
    multi2_PROC_STATE_next = multi2_PROC_STATE;
    
    case (multi2_PROC_STATE)
        0: begin
            if (s == 1)
            begin
                // Call cref_wait2() begin
                multi2_PROC_STATE_next = 1; return;    // test_fcall_multi_state.cpp:60:9;
                // Call cref_wait2() end
            end
            if (s == 2)
            begin
                // Call cref_wait2() begin
                multi2_PROC_STATE_next = 2; return;    // test_fcall_multi_state.cpp:60:9;
                // Call cref_wait2() end
            end
            multi2_PROC_STATE_next = 3; return;    // test_fcall_multi_state.cpp:76:13;
        end
        1: begin
            // Call cref_wait2() begin
            TMP_0 = a_next;
            // Call cref_wait2() end
            if (s == 2)
            begin
                // Call cref_wait2() begin
                multi2_PROC_STATE_next = 2; return;    // test_fcall_multi_state.cpp:60:9;
                // Call cref_wait2() end
            end
            multi2_PROC_STATE_next = 3; return;    // test_fcall_multi_state.cpp:76:13;
        end
        2: begin
            // Call cref_wait2() begin
            TMP_2 = b_next;
            // Call cref_wait2() end
            multi2_PROC_STATE_next = 3; return;    // test_fcall_multi_state.cpp:76:13;
        end
        3: begin
            if (s == 1)
            begin
                // Call cref_wait2() begin
                multi2_PROC_STATE_next = 1; return;    // test_fcall_multi_state.cpp:60:9;
                // Call cref_wait2() end
            end
            if (s == 2)
            begin
                // Call cref_wait2() begin
                multi2_PROC_STATE_next = 2; return;    // test_fcall_multi_state.cpp:60:9;
                // Call cref_wait2() end
            end
            multi2_PROC_STATE_next = 3; return;    // test_fcall_multi_state.cpp:76:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : multi2_ff
    if ( ~nrst ) begin
        multi2_PROC_STATE <= 0;    // test_fcall_multi_state.cpp:67:9;
    end
    else begin
        a <= a_next;
        b <= b_next;
        multi2_PROC_STATE <= multi2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: multi3 (test_fcall_multi_state.cpp:86:5) 

// Thread-local variables
logic signed [31:0] b0;
logic signed [31:0] b_next0;
logic signed [31:0] a0;
logic signed [31:0] a_next0;
logic [1:0] multi3_PROC_STATE;
logic [1:0] multi3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : multi3_comb     // test_fcall_multi_state.cpp:86:5
    multi3_func;
end
function void multi3_func;
    integer TMP_0;
    integer TMP_1;
    integer TMP_2;
    integer TMP_3;
    a_next0 = a0;
    b_next0 = b0;
    multi3_PROC_STATE_next = multi3_PROC_STATE;
    
    case (multi3_PROC_STATE)
        0: begin
            if (s == 1)
            begin
                // Call cref_wait3() begin
                multi3_PROC_STATE_next = 1; return;    // test_fcall_multi_state.cpp:82:9;
                // Call cref_wait3() end
            end
            multi3_PROC_STATE_next = 2; return;    // test_fcall_multi_state.cpp:95:13;
        end
        1: begin
            // Call cref_wait3() begin
            TMP_0 = a_next0;
            // Call cref_wait3() end
            multi3_PROC_STATE_next = 2; return;    // test_fcall_multi_state.cpp:95:13;
        end
        2: begin
            if (s == 2)
            begin
                // Call cref_wait3() begin
                multi3_PROC_STATE_next = 3; return;    // test_fcall_multi_state.cpp:82:9;
                // Call cref_wait3() end
            end
            if (s == 1)
            begin
                // Call cref_wait3() begin
                multi3_PROC_STATE_next = 1; return;    // test_fcall_multi_state.cpp:82:9;
                // Call cref_wait3() end
            end
            multi3_PROC_STATE_next = 2; return;    // test_fcall_multi_state.cpp:95:13;
        end
        3: begin
            // Call cref_wait3() begin
            TMP_1 = b_next0;
            // Call cref_wait3() end
            if (s == 1)
            begin
                // Call cref_wait3() begin
                multi3_PROC_STATE_next = 1; return;    // test_fcall_multi_state.cpp:82:9;
                // Call cref_wait3() end
            end
            multi3_PROC_STATE_next = 2; return;    // test_fcall_multi_state.cpp:95:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : multi3_ff
    if ( ~nrst ) begin
        multi3_PROC_STATE <= 0;    // test_fcall_multi_state.cpp:89:9;
    end
    else begin
        b0 <= b_next0;
        a0 <= a_next0;
        multi3_PROC_STATE <= multi3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: multi20 (test_fcall_multi_state.cpp:64:5) 

// Thread-local variables
logic signed [31:0] a1;
logic signed [31:0] a_next1;
logic signed [31:0] b1;
logic signed [31:0] b_next1;
logic [1:0] multi2_PROC_STATE0;
logic [1:0] multi2_PROC_STATE_next0;

// Next-state combinational logic
always_comb begin : multi20_comb     // test_fcall_multi_state.cpp:64:5
    multi20_func;
end
function void multi20_func;
    integer TMP_0;
    integer TMP_1;
    integer TMP_2;
    integer TMP_3;
    integer TMP_4;
    a_next1 = a1;
    b_next1 = b1;
    multi2_PROC_STATE_next0 = multi2_PROC_STATE0;
    
    case (multi2_PROC_STATE0)
        0: begin
            if (s == 1)
            begin
                // Call cref_wait2() begin
                multi2_PROC_STATE_next0 = 1; return;    // test_fcall_multi_state.cpp:60:9;
                // Call cref_wait2() end
            end
            if (s == 2)
            begin
                // Call cref_wait2() begin
                multi2_PROC_STATE_next0 = 2; return;    // test_fcall_multi_state.cpp:60:9;
                // Call cref_wait2() end
            end
            multi2_PROC_STATE_next0 = 3; return;    // test_fcall_multi_state.cpp:76:13;
        end
        1: begin
            // Call cref_wait2() begin
            TMP_0 = a_next1;
            // Call cref_wait2() end
            if (s == 2)
            begin
                // Call cref_wait2() begin
                multi2_PROC_STATE_next0 = 2; return;    // test_fcall_multi_state.cpp:60:9;
                // Call cref_wait2() end
            end
            multi2_PROC_STATE_next0 = 3; return;    // test_fcall_multi_state.cpp:76:13;
        end
        2: begin
            // Call cref_wait2() begin
            TMP_2 = b_next1;
            // Call cref_wait2() end
            multi2_PROC_STATE_next0 = 3; return;    // test_fcall_multi_state.cpp:76:13;
        end
        3: begin
            if (s == 1)
            begin
                // Call cref_wait2() begin
                multi2_PROC_STATE_next0 = 1; return;    // test_fcall_multi_state.cpp:60:9;
                // Call cref_wait2() end
            end
            if (s == 2)
            begin
                // Call cref_wait2() begin
                multi2_PROC_STATE_next0 = 2; return;    // test_fcall_multi_state.cpp:60:9;
                // Call cref_wait2() end
            end
            multi2_PROC_STATE_next0 = 3; return;    // test_fcall_multi_state.cpp:76:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : multi20_ff
    if ( ~nrst ) begin
        multi2_PROC_STATE0 <= 0;    // test_fcall_multi_state.cpp:67:9;
    end
    else begin
        a1 <= a_next1;
        b1 <= b_next1;
        multi2_PROC_STATE0 <= multi2_PROC_STATE_next0;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: multi30 (test_fcall_multi_state.cpp:86:5) 

// Thread-local variables
logic signed [31:0] b2;
logic signed [31:0] b_next2;
logic signed [31:0] a2;
logic signed [31:0] a_next2;
logic [1:0] multi3_PROC_STATE0;
logic [1:0] multi3_PROC_STATE_next0;

// Next-state combinational logic
always_comb begin : multi30_comb     // test_fcall_multi_state.cpp:86:5
    multi30_func;
end
function void multi30_func;
    integer TMP_0;
    integer TMP_1;
    integer TMP_2;
    integer TMP_3;
    a_next2 = a2;
    b_next2 = b2;
    multi3_PROC_STATE_next0 = multi3_PROC_STATE0;
    
    case (multi3_PROC_STATE0)
        0: begin
            if (s == 1)
            begin
                // Call cref_wait3() begin
                multi3_PROC_STATE_next0 = 1; return;    // test_fcall_multi_state.cpp:82:9;
                // Call cref_wait3() end
            end
            multi3_PROC_STATE_next0 = 2; return;    // test_fcall_multi_state.cpp:95:13;
        end
        1: begin
            // Call cref_wait3() begin
            TMP_0 = a_next2;
            // Call cref_wait3() end
            multi3_PROC_STATE_next0 = 2; return;    // test_fcall_multi_state.cpp:95:13;
        end
        2: begin
            if (s == 2)
            begin
                // Call cref_wait3() begin
                multi3_PROC_STATE_next0 = 3; return;    // test_fcall_multi_state.cpp:82:9;
                // Call cref_wait3() end
            end
            if (s == 1)
            begin
                // Call cref_wait3() begin
                multi3_PROC_STATE_next0 = 1; return;    // test_fcall_multi_state.cpp:82:9;
                // Call cref_wait3() end
            end
            multi3_PROC_STATE_next0 = 2; return;    // test_fcall_multi_state.cpp:95:13;
        end
        3: begin
            // Call cref_wait3() begin
            TMP_1 = b_next2;
            // Call cref_wait3() end
            if (s == 1)
            begin
                // Call cref_wait3() begin
                multi3_PROC_STATE_next0 = 1; return;    // test_fcall_multi_state.cpp:82:9;
                // Call cref_wait3() end
            end
            multi3_PROC_STATE_next0 = 2; return;    // test_fcall_multi_state.cpp:95:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge nrst) 
begin : multi30_ff
    if ( ~nrst ) begin
        multi3_PROC_STATE0 <= 0;    // test_fcall_multi_state.cpp:89:9;
    end
    else begin
        b2 <= b_next2;
        a2 <= a_next2;
        multi3_PROC_STATE0 <= multi3_PROC_STATE_next0;
    end
end

endmodule


