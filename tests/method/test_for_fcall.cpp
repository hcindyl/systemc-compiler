#include "systemc.h"
#include <sct_assert.h>

using namespace sc_core;

// FOR statement in method process body analysis
class A : public sc_module 
{
public:
    sc_in<bool>         a{"a"};
    sc_out<bool>        b{"b"};
    sc_signal<bool>     s{"s"};
    
    int                 m;
    int                 k;
    
    SC_CTOR(A) {
        SC_METHOD(func_call_cond);
        sensitive << a;
        
        // Not supported yet, #97
        // TODO: Uncomment me
        //SC_METHOD(func_call_cond1);
        //sensitive << a;
        //~TODO

        SC_METHOD(func_call_cond2);
        sensitive << a;
        SC_METHOD(func_call_cond3);
        sensitive << a;
        SC_METHOD(func_call_cond4);
        sensitive << a;
        SC_METHOD(func_call_cond5);
        sensitive << a;
        // TODO : Fix me, #104
        //SC_METHOD(func_call_cond6);
        //sensitive << a;
        SC_METHOD(func_call_cond7);
        sensitive << a;


    }
    
    // For with function call in condition w/o comparison
    bool cond(int i) {
        return (i < 2);
    }
    void func_call_cond() {
        k = 0;
        int i = 0;
        for (; cond(i); i++) {
            k = k + 1;
        }
    }
    
    void func_call_cond1() {
        k = 0;
        // Not supported yet as required "i" initialization before loop
        // to provide initialized "i" in first call of @cond()
        for (int i = 0; cond(i); i++) {
            k = k + 1;
        }
    }

    // For with function call in condition with comparison
    unsigned cond2() {
        return 2;
    }
    void func_call_cond2() {
        k = 0;
        for (int i = 0; i < cond2(); i++) {
            k = k + 1;
        }
    }
    
    // Condition fails from the beginning. Will never enter for loop
    int cond3(int k) {

            return k++;
    }
    void func_call_cond3() {
        k = 0;
        for (; cond3(k)>10;) {
            k = k + 1;
        }
    }

    // Complex condition
    int cond4(int j) {
            return (j+2);
    }
    void func_call_cond4() {
        k = 10;
        for (int i = 0; (2*i) < cond4(k);) {
            k = k - 1;
            i++;
        }
    }

    // Different type function
    sc_uint<1> cond5(int j) {
            return (j+2);
    }
    void func_call_cond5() {
        k = 10;
        for (sc_uint<3> i = 0; (2*i) < cond5(k);) {
            k = k - 1;
            i++;
        }
    }

    // Complex condition
    sc_bigint<30> cond6(int j) {
            return (j+2);
    }
    void func_call_cond6() {
        k = 10;
        for (sc_bigint<30> i = 0; (2 + i) < cond6(k);) {
            k = k - 1;
            i++;
        }
    }

    // Complex condition
    sc_biguint<32> cond7(int j) {
            return (j+2);
    }
    void func_call_cond7() {
        k = 10;
        for (sc_biguint<32> i = 0; (i+2) < cond7(k);) {
            k = k - 1;
            i++;
        }
    }


    // TODO: add more tests ...
};

class B_top : public sc_module 
{
public:

    sc_signal<bool>  a{"a"};
    sc_signal<bool>  b{"b"};

    A a_mod{"a_mod"};

    SC_CTOR(B_top) {
        a_mod.a(a);
        a_mod.b(b);
    }
};

int  sc_main(int argc, char* argv[])
{
    B_top b_mod{"b_mod"};
    sc_start();
    return 0;
}
