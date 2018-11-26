#ifndef _TRACE_68K_H_
#define _TRACE_68K_H_

#include "verilated.h"
#include <stdlib.h>
#include <stdio.h>

/*
typedef struct
{
    unsigned long  cyc;       // 00
    unsigned long  pc;        // 04
    unsigned long  usp;       // 08
    unsigned long  ssp;       // 0C
    unsigned long  dchg;      // 10
    unsigned long  achg;      // 14
    unsigned long  regs[16];  // 18
    unsigned short sr;        // 58
    unsigned short nb_inst;   // 5A
    unsigned short *inst;     // 5C
    unsigned short nb_rd;     // 60
    unsigned short nb_wr;     // 62
    unsigned long  raddr;     // 64
    unsigned long  waddr;     // 68
    unsigned short *data;     // 6C
} TRACE_SLOT;                 // 70
*/

#define MEM_NONE 0
#define MEM_DRAM 1
#define MEM_BIOS 2
#define MEM_CART 3

class Trace68k
{
    public:
        // Constructor and destructor
        Trace68k(vluint8_t *cart, vluint8_t *bios, vluint8_t *ram);
        ~Trace68k();
        // Methods
        int open(const char *name);
        int openNext(void);
        void close(void);
        void dump(vluint64_t cycle,     vluint8_t  clk,       vluint8_t  ifetch,
                  vluint8_t  regs_wren, vluint8_t  regs_addr, vluint16_t regs_data,
                  vluint16_t sr_reg,    vluint32_t pc_reg,    vluint32_t usp_reg,   vluint32_t ssp_reg);
    private:
        // Memory access functions
        vluint32_t translate_addr(vluint32_t addr, int &region);
        vluint8_t  read_mem_8(vluint32_t addr);
        vluint16_t read_mem_16(vluint32_t addr);
        vluint32_t read_mem_32(vluint32_t addr);
        vluint8_t  read_imm_8(void);
        vluint16_t read_imm_16(void);
        vluint32_t read_imm_32(void);
        // Utility functions
        char      *uhex_to_str(char *buf, vluint32_t val, int dig);
        char      *shex_to_str(char *buf, vluint32_t val, int dig);
        char      *get_Dx_str(char *buf, vluint16_t idx);
        char      *get_Ax_str(char *buf, vluint16_t idx);
        char      *get_ea_mode_str(char *buf, vluint16_t opcode, int size);
        char      *get_regs_list(char *buf, vluint16_t list);
        char      *get_regs_list_pd(char *buf, vluint16_t list);
        // Opcode group disassembly
        char      *dasm_group_0(char *buf, vluint16_t opcode);
        char      *dasm_group_1(char *buf, vluint16_t opcode);
        char      *dasm_group_2(char *buf, vluint16_t opcode);
        char      *dasm_group_3(char *buf, vluint16_t opcode);
        char      *dasm_group_4(char *buf, vluint16_t opcode);
        char      *dasm_group_5(char *buf, vluint16_t opcode);
        char      *dasm_group_6(char *buf, vluint16_t opcode);
        char      *dasm_group_7(char *buf, vluint16_t opcode);
        char      *dasm_group_8(char *buf, vluint16_t opcode);
        char      *dasm_group_9(char *buf, vluint16_t opcode);
        char      *dasm_group_A(char *buf, vluint16_t opcode);
        char      *dasm_group_B(char *buf, vluint16_t opcode);
        char      *dasm_group_C(char *buf, vluint16_t opcode);
        char      *dasm_group_D(char *buf, vluint16_t opcode);
        char      *dasm_group_E(char *buf, vluint16_t opcode);
        char      *dasm_group_F(char *buf, vluint16_t opcode);
        // 68000 disassembler
        vluint32_t d68k_dasm(char *buf, vluint32_t addr);
        // Mapped memory (from SDRAM module)
        // vluint8_t *lo_mem;               // SDRAM LSB
        // vluint8_t *hi_mem;               // SDRAM MSB
				vluint8_t *cart;			// Cartridge
				vluint8_t *bios;			// BIOS
				vluint8_t *ram;		// SSRAM
        // vluint32_t mem_size;             // SDRAM size
        // Disassembly PC
        vluint32_t dasm_pc;
        // Data and address registers D0 - D7, A0 - A7
        vluint16_t regs_l[16];           // LSW
        vluint16_t regs_h[16];           // MSW
        // Trace file handle
        char       tname[256];           // Trace file name
        FILE      *tfh;
        // Internal variables
        vluint8_t  prev_clk;             // Previous clock state
};

#endif /* _TRACE_68K_H_ */
