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
logic rstn;
logic signed [31:0] s;

//------------------------------------------------------------------------------
// Method process: var1 (test_init_local_var1.cpp:38:5) 

always_comb 
begin : var1     // test_init_local_var1.cpp:38:5
    logic a;
    integer i;
    logic [3:0] x;
    logic aa;
    integer ii;
    integer sum;
    logic b;
    integer j;
    a = 0;
    i = 0;
    b = 0;
    j = 0;
    x = 0;
    aa = 1;
    ii = 42;
    sum = a + i + aa + ii + x;
    if (|s)
    begin
        sum = b + j;
    end
end

//------------------------------------------------------------------------------
// Method process: var1_unused (test_init_local_var1.cpp:55:5) 

always_comb 
begin : var1_unused     // test_init_local_var1.cpp:55:5
    logic a;
    integer i;
    logic [3:0] x;
    logic aa;
    integer ii;
    logic b;
    integer j;
    a = 0;
    i = 0;
    b = 0;
    j = 0;
    x = 0;
    aa = 1;
    ii = 42;
end

//------------------------------------------------------------------------------
// Clocked THREAD: var2 (test_init_local_var1.cpp:71:5) 

// Thread-local variables
logic b0;
logic b_next;
logic d;
logic d_next;
logic signed [31:0] sum0;
logic signed [31:0] sum_next;
logic signed [63:0] n;
logic signed [63:0] n_next;
logic var2_PROC_STATE;
logic var2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : var2_comb     // test_init_local_var1.cpp:71:5
    var2_func;
end
function void var2_func;
    logic c;
    integer unsigned k;
    logic d_1;
    logic signed [63:0] n_1;
    c = 0;
    k = 0;
    d_1 = 0;
    n_1 = 0;
    b_next = b0;
    d_next = d;
    n_next = n;
    sum_next = sum0;
    var2_PROC_STATE_next = var2_PROC_STATE;
    
    case (var2_PROC_STATE)
        0: begin
            if (|s)
            begin
                sum_next = d_1 + n_1;
            end
            sum_next = b_next + c + k;
            var2_PROC_STATE_next = 1; return;    // test_init_local_var1.cpp:97:13;
        end
        1: begin
            sum_next = sum_next + d_next + n_next;
            if (|s)
            begin
                sum_next = d_1 + n_1;
            end
            sum_next = b_next + c + k;
            var2_PROC_STATE_next = 1; return;    // test_init_local_var1.cpp:97:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : var2_ff
    if ( ~rstn ) begin
        logic bb;
        integer jj;
        integer jjj;
        logic [3:0] y;
        bb = 1;
        jjj = 42;
        y = jjj + jj + 1;
        sum0 <= 0;
        var2_PROC_STATE <= 0;    // test_init_local_var1.cpp:79:9;
    end
    else begin
        b0 <= b_next;
        d <= d_next;
        sum0 <= sum_next;
        n <= n_next;
        var2_PROC_STATE <= var2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: var2_unused (test_init_local_var1.cpp:103:5) 

// Next-state combinational logic
always_comb begin : var2_unused_comb     // test_init_local_var1.cpp:103:5
    var2_unused_func;
end
function void var2_unused_func;
    logic d_1;
    logic signed [63:0] n_1;
    d_1 = 0;
    n_1 = 0;
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : var2_unused_ff
    if ( ~rstn ) begin
    end
    else begin
    end
end

endmodule


