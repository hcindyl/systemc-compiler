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
logic rst;
logic signed [31:0] t;


//------------------------------------------------------------------------------

A a_mod
(
  .clk(clk),
  .rst(rst),
  .in(t),
  .out(t)
);

endmodule



//==============================================================================
//
// Module: A (test_cthread_var_reg.cpp:149:5)
//
module A // "top.a_mod"
(
    input logic clk,
    input logic rst,
    input logic signed [31:0] in,
    output logic signed [31:0] out
);

// SystemC signals
logic a;
logic [3:0] b;
logic signed [31:0] c;
logic signed [32:0] d;
logic [31:0] e;
logic [3:0] f;
logic [3:0] g;
logic [3:0] h;
logic [3:0] arr[3];
logic signed [31:0] s1;

//------------------------------------------------------------------------------
// Method process: channels0 (test_cthread_var_reg.cpp:43:5) 

always_comb 
begin : channels0     // test_cthread_var_reg.cpp:43:5
    logic x;
    logic [3:0] y;
    x = a;
    y = signed'({1'b0, b}) + c;
    h = y;
end

//------------------------------------------------------------------------------
// Clocked THREAD: channels1 (test_cthread_var_reg.cpp:51:5) 

// Thread-local variables
logic [3:0] b_next;
logic signed [31:0] out_next;
logic signed [31:0] c_next;
logic signed [32:0] d_next;
logic [31:0] e_next;
logic channels1_PROC_STATE;
logic channels1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : channels1_comb     // test_cthread_var_reg.cpp:51:5
    channels1_func;
end
function void channels1_func;
    b_next = b;
    c_next = c;
    d_next = d;
    e_next = e;
    out_next = out;
    channels1_PROC_STATE_next = channels1_PROC_STATE;
    
    case (channels1_PROC_STATE)
        0: begin
            b_next = 42;
            c_next = 43;
            d_next = 44;
            out_next = in;
            e_next = 0;
            channels1_PROC_STATE_next = 1; return;    // test_cthread_var_reg.cpp:64:13;
        end
        1: begin
            e_next = 1;
            c_next = d + signed'({1'b0, e});
            b_next = 42;
            c_next = 43;
            d_next = 44;
            out_next = in;
            e_next = 0;
            channels1_PROC_STATE_next = 1; return;    // test_cthread_var_reg.cpp:64:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or posedge rst) 
begin : channels1_ff
    if (rst ) begin
        a <= 1;
        b <= 0;
        out <= 0;
        channels1_PROC_STATE <= 0;    // test_cthread_var_reg.cpp:56:9;
    end
    else begin
        b <= b_next;
        out <= out_next;
        c <= c_next;
        d <= d_next;
        e <= e_next;
        channels1_PROC_STATE <= channels1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: channels2 (test_cthread_var_reg.cpp:72:5) 

// Thread-local variables
logic [3:0] f_next;
logic [3:0] g_next;
logic [3:0] arr_next[3];

// Next-state combinational logic
always_comb begin : channels2_comb     // test_cthread_var_reg.cpp:72:5
    channels2_func;
end
function void channels2_func;
    arr_next = arr;
    f_next = f;
    g_next = g;
    if (a)
    begin
        g_next = f;
    end
    f_next = arr[1];
    arr_next[b] = in;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or posedge rst) 
begin : channels2_ff
    if (rst ) begin
        f <= 0;
        g <= 0;
        arr[0] <= 1;
        for (integer i = 1; i < 3; ++i)
        begin
            arr[i] <= i;
        end
    end
    else begin
        f <= f_next;
        g <= g_next;
        arr <= arr_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: variables1 (test_cthread_var_reg.cpp:97:5) 

// Thread-local variables
logic [3:0] n;
logic [3:0] n_next;
logic [31:0] m;
logic [31:0] m_next;
logic k;
logic k_next;
logic [3:0] z;
logic [3:0] z_next;
logic [3:0] p;
logic variables1_PROC_STATE;
logic variables1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : variables1_comb     // test_cthread_var_reg.cpp:97:5
    variables1_func;
end
function void variables1_func;
    integer t;
    k_next = k;
    m_next = m;
    n_next = n;
    z_next = z;
    variables1_PROC_STATE_next = variables1_PROC_STATE;
    
    case (variables1_PROC_STATE)
        0: begin
            z_next = b + n_next;
            t = m_next;
            p = n_next;
            variables1_PROC_STATE_next = 1; return;    // test_cthread_var_reg.cpp:108:13;
        end
        1: begin
            if (a)
            begin
                z_next = 0;
            end
            n_next = z_next + 0;
            m_next++;
            z_next = b + n_next;
            t = m_next;
            p = n_next;
            variables1_PROC_STATE_next = 1; return;    // test_cthread_var_reg.cpp:108:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or posedge rst) 
begin : variables1_ff
    if (rst ) begin
        logic [3:0] x;
        x = 1;
        k <= 0;
        m <= 0;
        variables1_PROC_STATE <= 0;    // test_cthread_var_reg.cpp:101:9;
    end
    else begin
        n <= n_next;
        m <= m_next;
        k <= k_next;
        z <= z_next;
        variables1_PROC_STATE <= variables1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: variables2 (test_cthread_var_reg.cpp:120:5) 

// Thread-local variables
logic signed [31:0] s1_next;
logic arrv[3];
logic arrv_next[3];
logic [1:0] r;
logic [1:0] r_next;
logic [3:0] w;
logic [3:0] w_next;
logic [63:0] v;
logic [63:0] v_next;
logic [1:0] variables2_PROC_STATE;
logic [1:0] variables2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : variables2_comb     // test_cthread_var_reg.cpp:120:5
    variables2_func;
end
function void variables2_func;
    arrv_next = arrv;
    r_next = r;
    s1_next = s1;
    v_next = v;
    w_next = w;
    variables2_PROC_STATE_next = variables2_PROC_STATE;
    
    case (variables2_PROC_STATE)
        0: begin
            if (|b)
            begin
                v_next = r_next >>> arrv_next[b];
                if (|c)
                begin
                    s1_next = w_next + v_next;
                    variables2_PROC_STATE_next = 1; return;    // test_cthread_var_reg.cpp:133:21;
                end
                s1_next = v_next;
            end
            variables2_PROC_STATE_next = 2; return;    // test_cthread_var_reg.cpp:138:13;
        end
        1: begin
            if (|c)
            begin
                s1_next = w_next + v_next;
                variables2_PROC_STATE_next = 1; return;    // test_cthread_var_reg.cpp:133:21;
            end
            s1_next = v_next;
            variables2_PROC_STATE_next = 2; return;    // test_cthread_var_reg.cpp:138:13;
        end
        2: begin
            if (|b)
            begin
                v_next = r_next >>> arrv_next[b];
                if (|c)
                begin
                    s1_next = w_next + v_next;
                    variables2_PROC_STATE_next = 1; return;    // test_cthread_var_reg.cpp:133:21;
                end
                s1_next = v_next;
            end
            variables2_PROC_STATE_next = 2; return;    // test_cthread_var_reg.cpp:138:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or posedge rst) 
begin : variables2_ff
    if (rst ) begin
        arrv[0] <= 1;
        r <= a ? arrv[0] : 1'd0;
        w <= 0;
        s1 <= 0;
        variables2_PROC_STATE <= 0;    // test_cthread_var_reg.cpp:125:9;
    end
    else begin
        s1 <= s1_next;
        arrv <= arrv_next;
        r <= r_next;
        w <= w_next;
        v <= v_next;
        variables2_PROC_STATE <= variables2_PROC_STATE_next;
    end
end

endmodule


