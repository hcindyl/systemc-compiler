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
logic rstn;
logic req[3];
logic [15:0] p_data[3];
logic p_clk;
logic p_rstn;
logic p_req[3];

assign p_clk = clk;
assign p_rstn = rstn;
assign p_req = req;

//------------------------------------------------------------------------------
// Clocked THREAD: p_threadProc (test_sc_vector.cpp:21:5) 

// Thread-local variables
logic [15:0] p_data_next[3];
logic [3:0] n;
logic [3:0] n_next;

// Next-state combinational logic
always_comb begin : p_threadProc_comb     // test_sc_vector.cpp:21:5
    p_threadProc_func;
end
function void p_threadProc_func;
    n_next = n;
    p_data_next = p_data;
    for (integer i = 1; i < 3; ++i)
    begin
        p_data_next[i] = p_req[i] ? p_data[i - 1] : 16'd0;
    end
    p_data_next[0] = n_next++;
endfunction

// Syncrhonous register update
always_ff @(posedge p_clk or negedge p_rstn) 
begin : p_threadProc_ff
    if ( ~p_rstn ) begin
        n <= 1;
        p_data[0] <= 0;
    end
    else begin
        p_data <= p_data_next;
        n <= n_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: mainProc (test_sc_vector.cpp:60:5) 

// Next-state combinational logic
always_comb begin : mainProc_comb     // test_sc_vector.cpp:60:5
    mainProc_func;
end
function void mainProc_func;
    logic [15:0] TMP_0;
    integer i_2;
    logic [15:0] x;
    for (integer i = 0; i < 3; ++i)
    begin
        i_2 = i;
        // Call getData() begin
        TMP_0 = p_data[i_2];
        // Call getData() end
        x = TMP_0;
    end
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : mainProc_ff
    if ( ~rstn ) begin
        for (integer i = 0; i < 3; ++i)
        begin
            req[i] <= 0;
        end
    end
    else begin
    end
end

endmodule


