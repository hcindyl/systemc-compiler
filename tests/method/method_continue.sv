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
logic a;
logic b;
logic c;


//------------------------------------------------------------------------------

A a_mod
(
  .a(a),
  .b(b),
  .c(c)
);

endmodule



//==============================================================================
//
// Module: A (test_continue.cpp:232:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c
);

// SystemC signals
logic signed [31:0] si;

//------------------------------------------------------------------------------
// Method process: for_level (test_continue.cpp:50:5) 

always_comb 
begin : for_level     // test_continue.cpp:50:5
    for (integer i = 0; i < 3; i++)
    begin
        if (i < 2)
        begin
            continue;
        end
    end
end

//------------------------------------------------------------------------------
// Method process: while_level (test_continue.cpp:58:5) 

always_comb 
begin : while_level     // test_continue.cpp:58:5
    integer i;
    i = 0;
    while (i < 3)
    begin
        i++;
        if (i < 2)
        begin
            continue;
        end
    end
end

//------------------------------------------------------------------------------
// Method process: do_while_level (test_continue.cpp:68:5) 

always_comb 
begin : do_while_level     // test_continue.cpp:68:5
    integer i;
    i = 0;
    do
    begin
        i++;
        if (i < 2)
        begin
            continue;
        end
    end
    while (i < 3);
end

//------------------------------------------------------------------------------
// Method process: for_continue1 (test_continue.cpp:82:5) 

always_comb 
begin : for_continue1     // test_continue.cpp:82:5
    integer k;
    k = 0;
    for (integer i = 0; i < 2; i++)
    begin
        if (a)
        begin
            continue;
        end
        k = k + 1;
    end
    k = 2;
end

//------------------------------------------------------------------------------
// Method process: for_continue4 (test_continue.cpp:92:5) 

always_comb 
begin : for_continue4     // test_continue.cpp:92:5
    integer k;
    k = 0;
    for (integer i = 0; i < 2; i++)
    begin
        for (integer j = 0; j < 3; j++)
        begin
            if (a)
            begin
                continue;
            end
            k = k + 1;
        end
        if (b)
        begin
            continue;
        end
        k = k - 1;
    end
    k = 2;
end

//------------------------------------------------------------------------------
// Method process: for_continue5 (test_continue.cpp:108:5) 

always_comb 
begin : for_continue5     // test_continue.cpp:108:5
    integer k;
    integer m;
    k = 0;
    m = si;
    if (m > 0)
    begin
        for (integer i = 0; i < 2; i++)
        begin
            if (a)
            begin
                if (b)
                begin
                    continue;
                end
                k = k - 1;
                continue;
            end
            k = k + 1;
        end
    end
    k = 2;
end

//------------------------------------------------------------------------------
// Method process: for_continue6 (test_continue.cpp:124:5) 

always_comb 
begin : for_continue6     // test_continue.cpp:124:5
    integer k;
    integer m;
    k = 0;
    m = si;
    if (m > 0)
    begin
        for (integer i = 0; i < 2; i++)
        begin
            if (a)
            begin
                continue;
            end
            if (b)
            begin
                continue;
            end
            k = k + 1;
        end
    end
    k = 2;
end

//------------------------------------------------------------------------------
// Method process: for_continue7 (test_continue.cpp:140:5) 

always_comb 
begin : for_continue7     // test_continue.cpp:140:5
    integer k;
    integer m;
    k = 0;
    m = si;
    if (m > 0)
    begin
        for (integer i = 0; i < 2; i++)
        begin
            if (a)
            begin
                if (b)
                begin
                    break;
                end
                k = k - 1;
                continue;
            end
            k = k + 1;
        end
    end
    k = 2;
end

//------------------------------------------------------------------------------
// Method process: while_continue1 (test_continue.cpp:158:5) 

always_comb 
begin : while_continue1     // test_continue.cpp:158:5
    integer i;
    integer k;
    integer m;
    i = 0;
    k = 0;
    m = si;
    if (m > 0)
    begin
        while (i < 2)
        begin
            i++;
            if (a)
            begin
                continue;
            end
        end
    end
    k = 2;
end

//------------------------------------------------------------------------------
// Method process: while_continue2 (test_continue.cpp:173:5) 

always_comb 
begin : while_continue2     // test_continue.cpp:173:5
    integer i;
    integer k;
    i = 0;
    k = 0;
    while (k < 4)
    begin
        while (i < 2)
        begin
            i++;
            if (a)
            begin
                continue;
            end
            k++;
        end
        if (k == 3)
        begin
            continue;
        end
    end
    k = 2;
end

//------------------------------------------------------------------------------
// Method process: do_while_continue1 (test_continue.cpp:194:5) 

always_comb 
begin : do_while_continue1     // test_continue.cpp:194:5
    integer i;
    integer k;
    i = 0;
    k = 0;
    do
    begin
        i++;
        if (i == 1 && a)
        begin
            continue;
        end
    end
    while (i < 2);
    k = 2;
end

//------------------------------------------------------------------------------
// Method process: do_while_continue2 (test_continue.cpp:207:5) 

always_comb 
begin : do_while_continue2     // test_continue.cpp:207:5
    integer i;
    integer k;
    i = 0;
    k = 0;
    do
    begin
        k++;
        do
        begin
            i++;
            if (i < 2 && a)
            begin
                continue;
            end
        end
        while (i < 3);
    end
    while (k < 4);
    k = 2;
end

endmodule


