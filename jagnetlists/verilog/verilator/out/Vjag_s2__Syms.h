// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header

#ifndef _Vjag_s2__Syms_H_
#define _Vjag_s2__Syms_H_

#include "verilated_heavy.h"

// INCLUDE MODULE CLASSES
#include "Vjag_s2.h"

// SYMS CLASS
class Vjag_s2__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool	__Vm_activity;		///< Used by trace routines to determine change occurred
    bool	__Vm_didInit;
    //char	__VpadToAlign10[6];
    
    // SUBCELL STATE
    Vjag_s2*                       TOPp;
    
    // COVERAGE
    
    // SCOPE NAMES
    
    // CREATORS
    Vjag_s2__Syms(Vjag_s2* topp, const char* namep);
    ~Vjag_s2__Syms() {};
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    inline bool getClearActivity() { bool r=__Vm_activity; __Vm_activity=false; return r;}
    
} VL_ATTR_ALIGNED(64);

#endif  /*guard*/
