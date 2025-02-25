//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.16
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
);


//------------------------------------------------------------------------------
// Child module instances

A ar1_0
(

);

A0 ar1_1
(

);

B br1_0
(

);

B0 br1_1
(

);

A ar2_0
(

);

A0 ar2_1
(

);

B br2_0
(

);

B0 br2_1
(

);

A1 ar3_0
(

);

A2 ar3_1
(

);

B br3_0
(

);

B0 br3_1
(

);

endmodule



//==============================================================================
//
// Module: A ()
//
module A // "top.ar2_0"
(
);

// Variables generated for SystemC signals

// Local parameters generated for C++ constants
localparam logic [31:0] V = 1;
localparam logic [31:0] C = 1;

//------------------------------------------------------------------------------
// Method process: proc (test_mod_array_differ.cpp:30:5) 

always_comb 
begin : proc     // test_mod_array_differ.cpp:30:5
    integer unsigned l;
    l = V + C;
end

endmodule



//==============================================================================
//
// Module: A ()
//
module A0 // "top.ar2_1"
(
);

// Variables generated for SystemC signals

// Local parameters generated for C++ constants
localparam logic [31:0] V = 2;
localparam logic [31:0] C = 2;

//------------------------------------------------------------------------------
// Method process: proc (test_mod_array_differ.cpp:30:5) 

always_comb 
begin : proc     // test_mod_array_differ.cpp:30:5
    integer unsigned l;
    l = V + C;
end

endmodule



//==============================================================================
//
// Module: B ()
//
module B // "top.br2_0"
(
);

// Variables generated for SystemC signals

// Local parameters generated for C++ constants
localparam logic [31:0] V = 1;

//------------------------------------------------------------------------------
// Method process: proc (test_mod_array_differ.cpp:50:5) 

always_comb 
begin : proc     // test_mod_array_differ.cpp:50:5
    integer unsigned l;
    l = V;
end

endmodule



//==============================================================================
//
// Module: B ()
//
module B0 // "top.br2_1"
(
);

// Variables generated for SystemC signals

// Local parameters generated for C++ constants
localparam logic [31:0] V = 2;

//------------------------------------------------------------------------------
// Method process: proc (test_mod_array_differ.cpp:50:5) 

always_comb 
begin : proc     // test_mod_array_differ.cpp:50:5
    integer unsigned l;
    l = V;
end

endmodule



//==============================================================================
//
// Module: A ()
//
module A1 // "top.ar3_0"
(
);

// Variables generated for SystemC signals

// Local parameters generated for C++ constants
localparam logic [31:0] V = 1;
localparam logic [31:0] C = 0;

//------------------------------------------------------------------------------
// Method process: proc (test_mod_array_differ.cpp:30:5) 

always_comb 
begin : proc     // test_mod_array_differ.cpp:30:5
    integer unsigned l;
    l = V + C;
end

endmodule



//==============================================================================
//
// Module: A ()
//
module A2 // "top.ar3_1"
(
);

// Variables generated for SystemC signals

// Local parameters generated for C++ constants
localparam logic [31:0] V = 2;
localparam logic [31:0] C = 0;

//------------------------------------------------------------------------------
// Method process: proc (test_mod_array_differ.cpp:30:5) 

always_comb 
begin : proc     // test_mod_array_differ.cpp:30:5
    integer unsigned l;
    l = V + C;
end

endmodule


