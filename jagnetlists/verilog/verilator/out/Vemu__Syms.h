// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef _Vemu__Syms_H_
#define _Vemu__Syms_H_

#include "verilated_heavy.h"

// INCLUDE MODULE CLASSES
#include "Vemu.h"

// SYMS CLASS
class Vemu__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_didInit;
    
    // SUBCELL STATE
    Vemu*                          TOPp;
    
    // CREATORS
    Vemu__Syms(Vemu* topp, const char* namep);
    ~Vemu__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    
} VL_ATTR_ALIGNED(64);

#endif  // guard
