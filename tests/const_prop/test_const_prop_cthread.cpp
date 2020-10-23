//
// Created by ripopov on 7/9/18.
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


    void wrapstate () {


        for (size_t i = 0; i < 4; ++i) {
            wait();
        }


    }

    void test_thread() {

        while (1) {

            for (size_t i = 0; i < 3; ++i) {
                wait();
            }

            for (size_t j = 0; j < 3; ++j) {
                int x = 0;
                while (x < 3) {
                    x++;
                    wait();
                }

            }

            wrapstate();

            int k = 0;

            while (k > 0)  {
                wait();
                k++;
            }

            wait();

        }
    }

};

int sc_main (int argc, char ** argv ) {

    top t_inst{"t_inst"};
    sc_start(400, SC_NS);

    return 0;
}