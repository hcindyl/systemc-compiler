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
module A // "test_top.a_mod"
(
    input logic clk,
    input logic rstn,
    input logic nrpi,
    output logic nrpo
);

// Variables generated for SystemC signals
logic signed [31:0] o;
logic signed [31:0] r;
logic signed [31:0] s;
logic signed [31:0] s_d;
logic signed [31:0] s_d2;
logic signed [31:0] s_d3;
logic [7:0] u;
logic [7:0] up;
logic signed [31:0] r0;
logic signed [31:0] reg_v;
logic nrs;
logic nrs2;
logic nrs3;
logic nrarr[3];
logic nrptr;
logic signed [31:0] ps;
logic signed [31:0] sarr[3];
logic [2:0] psarr[3];

// Local parameters generated for C++ constants
localparam logic [7:0] marr[3] = '{ 1, 2, 3 };
localparam logic CONST_B = 1;
localparam logic arr[3] = '{ 1, 1, 0 };
localparam logic [31:0] NN = 2;

//------------------------------------------------------------------------------
// Clocked THREAD: test_thread (test_sva_generate_mod.cpp:143:5) 

// Thread-local variables
logic signed [31:0] s_next;
logic signed [31:0] s_d_next;
logic signed [31:0] s_d2_next;
logic signed [31:0] s_d3_next;

// Next-state combinational logic
always_comb begin : test_thread_comb     // test_sva_generate_mod.cpp:143:5
    test_thread_func;
end
function void test_thread_func;
    s_d2_next = s_d2;
    s_d3_next = s_d3;
    s_d_next = s_d;
    s_next = s;
    s_d_next = s;
    s_d2_next = s_d;
    s_d3_next = s_d2;
    s_next = !(|s);
endfunction

// Synchronous register update
always_ff @(posedge clk or negedge rstn) 
begin : test_thread_ff
    if ( ~rstn ) begin
        nrs <= 0;
        s <= 0;
        s_d <= 0;
        s_d2 <= 0;
        s_d3 <= 0;
    end
    else begin
        s <= s_next;
        s_d <= s_d_next;
        s_d2 <= s_d2_next;
        s_d3 <= s_d3_next;
    end
end

`ifndef INTEL_SVA_OFF
sctAssertLine87 : assert property (
    @(posedge clk) |s |-> |s );
sctAssertLine88 : assert property (
    @(posedge clk) |s |=> |s_d );
sctAssertLine89 : assert property (
    @(posedge clk) |s |-> ##[1:5] |s_d );
sctAssertLine90 : assert property (
    @(posedge clk) |s |-> ##3 |s_d3 );
sctAssertLine93 : assert property (
    @(posedge clk) |s || |s_d |=> |s_d2 && |s_d3 );
sctAssertLine94 : assert property (
    @(posedge clk) m + 1 == 2 || CONST_B |=> mm - marr[1] > 3 );
sctAssertLine95 : assert property (
    @(posedge clk) m % 2 != NN || mm == s |=> |marr[2] );
sctAssertLine98 : assert property (
    @(posedge clk) u[1] |-> |s );
sctAssertLine99 : assert property (
    @(posedge clk) up[2] |-> |s );
sctAssertLine100 : assert property (
    @(posedge clk) |u[2 : 1] |-> |s );
sctAssertLine101 : assert property (
    @(posedge clk) |up[5 : 3] |-> |s );
sctAssertLine104 : assert property (
    @(posedge clk) nrpi |=> |r0 && nrpo );
sctAssertLine105 : assert property (
    @(posedge clk) nrs |-> nrs );
sctAssertLine106 : assert property (
    @(posedge clk) |r0 || nrs2 |-> !(|r0) && nrs3 );
sctAssertLine107 : assert property (
    @(posedge clk) |NN || nrs2 |-> !(|NN) && nrs3 );
sctAssertLine110 : assert property (
    @(posedge clk) s == 1 |-> ##3 |s_d3 );
sctAssertLine111 : assert property (
    @(posedge clk) |ps |-> ##[1:2] |s || |s );
sctAssertLine114 : assert property (
    @(posedge clk) arr[1] |=> |s );
sctAssertLine115 : assert property (
    @(posedge clk) |sarr[2] |-> |sarr[0] );
sctAssertLine116 : assert property (
    @(posedge clk) |psarr[1] |=> |sarr[2] );
sctAssertLine120 : assert property (
    @(posedge clk) arr[i] |=> |s );
sctAssertLine121 : assert property (
    @(posedge clk) |sarr[1 + i] |-> |(arr[0] + i) );
sctAssertLine122 : assert property (
    @(posedge clk) |psarr[1] |=> |psarr[2 + i] );
sctAssertLine125 : assert property (
    @(posedge clk) |s |=> |s_d || |o );
sctAssertLine126 : assert property (
    @(posedge clk) |o |-> |o );
sctAssertLine129 : assert property (
    @(posedge clk) rec_a |-> |(rec_b + 1) );
sctAssertLine132 : assert property (
    @(posedge clk) nrpi |=> nrpo || nrs );
sctAssertLine133 : assert property (
    @(posedge clk) nrarr[1] |=> nrptr );
sctAssertLine134 : assert property (
    @(posedge clk) s == 2 |=> ps != NN );
sctAssertLine137 : assert property (
    @(posedge clk) |reg_v |=> |r0 || |r );
sctAssertLine140 : assert property (
    @(posedge clk) 1 |-> rstn || !(|s) );
sctAssertLine141 : assert property (
    @(posedge clk) 1 |-> !(|s_d2) || |s );
`endif // INTEL_SVA_OFF

endmodule


