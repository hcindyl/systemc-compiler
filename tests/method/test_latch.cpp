#include "sct_assert.h"
#include "systemc.h"

using namespace sc_core;

// Method with latch
class A : public sc_module {
public:
    sc_in<bool>     a{"a"};
    sc_out<bool>    b{"b"};

    SC_CTOR(A) {
        SC_METHOD(latch1); 
        sensitive << a;

        SC_METHOD(latch2); 
        sensitive << a;
    }
    
    // Bug in SMEM @full_access_port_base.popRespProc()
    void latch1() 
    {
        if (a) {
            if (true) {
                b = 1;
            }
        } else {
            b = 0;
        }
    }

    // Latch error message suppressed by @sct_assert_latch
    void latch2() 
    {
        if (a) {
            b = 1;
        }
        // Suppress latch error message
        sct_assert_latch(b);
    }
};

class B_top : public sc_module {
public:
    sc_signal<bool> a{"a"};
    sc_signal<bool> b{"b"};

    A a_mod{"a_mod"};

    SC_CTOR(B_top) {
        a_mod.a(a);
        a_mod.b(b);
    }
};

int sc_main(int argc, char *argv[]) {
    B_top b_mod{"b_mod"};
    sc_start();
    return 0;
}
