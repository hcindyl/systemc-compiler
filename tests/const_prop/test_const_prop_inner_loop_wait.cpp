//
// Created by ripopov on 7/10/18.
//

#include <systemc.h>
#include <sct_assert.h>

SC_MODULE(top) {

    sc_clock    clk_gen{"clk_gen", 10 , SC_NS};

    SC_CTOR(top) {
        SC_THREAD(test_thread);
        sensitive << clk_gen.posedge_event();
    }

    sc_signal<bool> din;

    int x;

    void test_thread() {
        while (1) {

            for (size_t i = 0; i < 2; ++i) {
                wait();
            }

        }

    }

};

int sc_main (int argc, char ** argv ) {

    top t_inst{"t_inst"};
    sc_start(100, SC_NS);

    return 0;
}
