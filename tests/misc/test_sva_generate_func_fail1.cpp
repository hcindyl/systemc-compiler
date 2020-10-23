#include "sct_assert.h"
#include "systemc.h"

// Assertion with function call which is not allowed, test failed
class A : sc_module
{
public:
    sc_in<bool>         clk{"clk"};
    sc_signal<bool>     rstn{"rstn"};
    
    sc_signal<int>      s;

    SC_HAS_PROCESS(A);
    
    explicit A(const sc_module_name& name) : sc_module(name)
    {
        SC_CTHREAD(sct_assert_call, clk.pos());
        async_reset_signal_is(rstn, false);
    }
    
    bool f() {
        return true;
    }
    
    void sct_assert_call() 
    {
        SCT_ASSERT(f(), SCT_TIME(1), s);
        wait();

        while (true) {
            wait();
        }
    }
};


int sc_main(int argc, char* argv[])
{
    sc_clock clk{"clock", 10, SC_NS};

    A a_mod{"a_mod"};
    a_mod.clk(clk);
    
    sc_start();
    return 0;
}
