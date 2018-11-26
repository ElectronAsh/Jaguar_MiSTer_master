#include "verilated.h"
#include "trace_68k.h"
#include <stdlib.h>
#include <stdio.h>

// Bits masking macros
#define BIT_00(v) (v & 0x00000001)
#define BIT_01(v) (v & 0x00000002)
#define BIT_02(v) (v & 0x00000004)
#define BIT_03(v) (v & 0x00000008)
#define BIT_04(v) (v & 0x00000010)
#define BIT_05(v) (v & 0x00000020)
#define BIT_06(v) (v & 0x00000040)
#define BIT_07(v) (v & 0x00000080)
#define BIT_08(v) (v & 0x00000100)
#define BIT_09(v) (v & 0x00000200)
#define BIT_0A(v) (v & 0x00000400)
#define BIT_0B(v) (v & 0x00000800)
#define BIT_0C(v) (v & 0x00001000)
#define BIT_0D(v) (v & 0x00002000)
#define BIT_0E(v) (v & 0x00004000)
#define BIT_0F(v) (v & 0x00008000)
#define BIT_10(v) (v & 0x00010000)
#define BIT_11(v) (v & 0x00020000)
#define BIT_12(v) (v & 0x00040000)
#define BIT_13(v) (v & 0x00080000)
#define BIT_14(v) (v & 0x00100000)
#define BIT_15(v) (v & 0x00200000)
#define BIT_16(v) (v & 0x00400000)
#define BIT_17(v) (v & 0x00800000)
#define BIT_18(v) (v & 0x01000000)
#define BIT_19(v) (v & 0x02000000)
#define BIT_1A(v) (v & 0x04000000)
#define BIT_1B(v) (v & 0x08000000)
#define BIT_1C(v) (v & 0x10000000)
#define BIT_1D(v) (v & 0x20000000)
#define BIT_1E(v) (v & 0x40000000)
#define BIT_1F(v) (v & 0x80000000)

#define SIZE_B    (0)
#define SIZE_W    (1)
#define SIZE_L    (2)

// Hexadecimal conversion macros
#define uimm8_to_str(buf)  uhex_to_str(buf, (vluint32_t)read_imm_8(), 2)
#define simm8_to_str(buf)  shex_to_str(buf, (vluint32_t)read_imm_8(), 2)
#define uimm16_to_str(buf) uhex_to_str(buf, (vluint32_t)read_imm_16(), 4)
#define simm16_to_str(buf) shex_to_str(buf, (vluint32_t)read_imm_16(), 4)
#define uimm32_to_str(buf) uhex_to_str(buf, (vluint32_t)read_imm_32(), 8)
#define simm32_to_str(buf) shex_to_str(buf, (vluint32_t)read_imm_32(), 8)

static const char sr_flags[32][6] =
{
    "-----",
    "----C",
    "---V-",
    "---VC",
    "--Z--",
    "--Z-C",
    "--ZV-",
    "--ZVC",
    "-N---",
    "-N--C",
    "-N-V-",
    "-N-VC",
    "-NZ--",
    "-NZ-C",
    "-NZV-",
    "-NZVC",
    "X----",
    "X---C",
    "X--V-",
    "X--VC",
    "X-Z--",
    "X-Z-C",
    "X-ZV-",
    "X-ZVC",
    "XN---",
    "XN--C",
    "XN-V-",
    "XN-VC",
    "XNZ--",
    "XNZ-C",
    "XNZV-",
    "XNZVC"
};

enum
{
  OPC_NONE     =   0,
  OPC_ABCD,   //   1
  OPC_ADD_B,  //   2
  OPC_ADD_W,  //   3
  OPC_ADD_L,  //   4
  OPC_ADDA_W, //   5
  OPC_ADDA_L, //   6
  OPC_ADDI_B, //   7
  OPC_ADDI_W, //   8
  OPC_ADDI_L, //   9
  OPC_ADDQ_B, //  10
  OPC_ADDQ_W, //  11
  OPC_ADDQ_L, //  12
  OPC_ADDX_B, //  13
  OPC_ADDX_W, //  14
  OPC_ADDX_L, //  15
  OPC_AND_B,  //  16
  OPC_AND_W,  //  17
  OPC_AND_L,  //  18
  OPC_ANDI_B, //  19
  OPC_ANDI_W, //  20
  OPC_ANDI_L, //  21
  OPC_ASL_B,  //  22
  OPC_ASL_W,  //  23
  OPC_ASL_L,  //  24
  OPC_ASR_B,  //  25
  OPC_ASR_W,  //  26
  OPC_ASR_L,  //  27
  OPC_BCC_B    =  28,
  OPC_BCC_W    =  44,
  OPC_BCHG     =  60,
  OPC_BCLR,   //  61
  OPC_BSET,   //  62
  OPC_BTST,   //  63
  OPC_CHK_W,  //  64
  OPC_CHK_L,  //  65
  OPC_CLR_B,  //  66
  OPC_CLR_W,  //  67
  OPC_CLR_L,  //  68
  OPC_CMP_B,  //  69
  OPC_CMP_W,  //  70
  OPC_CMP_L,  //  71
  OPC_CMPA_W, //  72
  OPC_CMPA_L, //  73
  OPC_CMPI_B, //  74
  OPC_CMPI_W, //  75
  OPC_CMPI_L, //  76
  OPC_CMPM_B, //  77
  OPC_CMPM_W, //  78
  OPC_CMPM_L, //  79
  OPC_DBCC     =  80,
  OPC_DIVS_W   =  96,
  OPC_DIVU_W, //  97
  OPC_EOR_B,  //  98
  OPC_EOR_W,  //  99
  OPC_EOR_L,  // 100
  OPC_EORI_B, // 101
  OPC_EORI_W, // 102
  OPC_EORI_L, // 103
  OPC_EXG,    // 104
  OPC_EXT_W,  // 105
  OPC_EXT_L,  // 106
  OPC_ILLEGAL,// 107
  OPC_JMP,    // 108
  OPC_JSR,    // 109
  OPC_LEA,    // 110
  OPC_LINK,   // 111
  OPC_LSL_B,  // 112
  OPC_LSL_W,  // 113
  OPC_LSL_L,  // 114
  OPC_LSR_B,  // 115
  OPC_LSR_W,  // 116
  OPC_LSR_L,  // 117
  OPC_MOVE_B, // 118
  OPC_MOVE_W, // 119
  OPC_MOVE_L, // 120
  OPC_MOVEA_W,// 121
  OPC_MOVEA_L,// 122
  OPC_MOVEM_W,// 123
  OPC_MOVEM_L,// 124
  OPC_MOVEP_W,// 125
  OPC_MOVEP_L,// 126
  OPC_MOVEQ,  // 127
  OPC_MULS_W, // 128
  OPC_MULU_W, // 129
  OPC_NBCD,   // 130
  OPC_NEG_B,  // 131
  OPC_NEG_W,  // 132
  OPC_NEG_L,  // 133
  OPC_NEGX_B, // 134
  OPC_NEGX_W, // 135
  OPC_NEGX_L, // 136
  OPC_NOP,    // 137
  OPC_NOT_B,  // 138
  OPC_NOT_W,  // 139
  OPC_NOT_L,  // 140
  OPC_OR_B,   // 141
  OPC_OR_W,   // 142
  OPC_OR_L,   // 143
  OPC_ORI_B,  // 144
  OPC_ORI_W,  // 145
  OPC_ORI_L,  // 146
  OPC_PEA,    // 147
  OPC_RESET,  // 148
  OPC_ROL_B,  // 149
  OPC_ROL_W,  // 150
  OPC_ROL_L,  // 151
  OPC_ROR_B,  // 152
  OPC_ROR_W,  // 153
  OPC_ROR_L,  // 154
  OPC_ROXL_B, // 155
  OPC_ROXL_W, // 156
  OPC_ROXL_L, // 157
  OPC_ROXR_B, // 158
  OPC_ROXR_W, // 159
  OPC_ROXR_L, // 160
  OPC_RTE,    // 161
  OPC_RTR,    // 162
  OPC_RTS,    // 163
  OPC_SBCD,   // 164
  OPC_SCC      = 165,
  OPC_STOP     = 181,
  OPC_SUB_B,  // 182
  OPC_SUB_W,  // 183
  OPC_SUB_L,  // 184
  OPC_SUBA_W, // 185
  OPC_SUBA_L, // 186
  OPC_SUBI_B, // 187
  OPC_SUBI_W, // 188
  OPC_SUBI_L, // 189
  OPC_SUBQ_B, // 190
  OPC_SUBQ_W, // 191
  OPC_SUBQ_L, // 192
  OPC_SUBX_B, // 193
  OPC_SUBX_W, // 194
  OPC_SUBX_L, // 195
  OPC_SWAP,   // 196
  OPC_TAS,    // 197
  OPC_TRAP,   // 198
  OPC_TRAPV,  // 199
  OPC_TST_B,  // 200
  OPC_TST_W,  // 201
  OPC_TST_L,  // 202
  OPC_UNLK,   // 203
  OPC_TOTAL
};

// Hexadecimal conversion table
static const char hex_dig[16] =
{
  '0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'
};

// Mnemonic table
static const char opc_str[OPC_TOTAL][9] =
{
  "dc.w    ",
  "abcd    ",
  "add.b   ", "add.w   ", "add.l   ",
              "adda.w  ", "adda.l  ",
  "addi.b  ", "addi.w  ", "addi.l  ",
  "addq.b  ", "addq.w  ", "addq.l  ",
  "addx.b  ", "addx.w  ", "addx.l  ",
  "and.b   ", "and.w   ", "and.l   ",
  "andi.b  ", "andi.w  ", "andi.l  ",
  "asl.b   ", "asl.w   ", "asl.l   ",
  "asr.b   ", "asr.w   ", "asr.l   ",
  "bra.b   ", "bsr.b   ", "bhi.b   ", "bls.b   ",
  "bcc.b   ", "bcs.b   ", "bne.b   ", "beq.b   ",
  "bvc.b   ", "bvs.b   ", "bpl.b   ", "bmi.b   ",
  "bge.b   ", "blt.b   ", "bgt.b   ", "ble.b   ",
  "bra.w   ", "bsr.w   ", "bhi.w   ", "bls.w   ",
  "bcc.w   ", "bcs.w   ", "bne.w   ", "beq.w   ",
  "bvc.w   ", "bvs.w   ", "bpl.w   ", "bmi.w   ",
  "bge.w   ", "blt.w   ", "bgt.w   ", "ble.w   ",
  "bchg    ", "bclr    ", "bset    ", "btst    ",
              "chk.w   ", "chk.l   ",
  "clr.b   ", "clr.w   ", "clr.l   ",
  "cmp.b   ", "cmp.w   ", "cmp.l   ",
              "cmpa.w  ", "cmpa.l  ",
  "cmpi.b  ", "cmpi.w  ", "cmpi.l  ",
  "cmpm.b  ", "cmpm.w  ", "cmpm.l  ",
  "dbt     ", "dbra    ", "dbhi    ", "dbls    ",
  "dbcc    ", "dbcs    ", "dbne    ", "dbeq    ",
  "dbvc    ", "dbvs    ", "dbpl    ", "dbmi    ",
  "dbge    ", "dblt    ", "dbgt    ", "dble    ",
  "divs.w  ", "divu.w  ",
  "eor.b   ", "eor.w   ", "eor.l   ",
  "eori.b  ", "eori.w  ", "eori.l  ",
  "exg     ",
              "ext.w   ", "ext.l   ",
  "illegal ",
  "jmp     ",
  "jsr     ",
  "lea     ",
  "link    ",
  "lsl.b   ", "lsl.w   ", "lsl.l   ",
  "lsr.b   ", "lsr.w   ", "lsr.l   ",
  "move.b  ", "move.w  ", "move.l  ",
              "movea.w ", "movea.l ",
              "movem.w ", "movem.l ",
              "movep.w ", "movep.l ",
  "moveq   ",
  "muls.w  ", "mulu.w  ",
  "nbcd    ",
  "neg.b   ", "neg.w   ", "neg.l   ",
  "negx.b  ", "negx.w  ", "negx.l  ",
  "nop     ",
  "not.b   ", "not.w   ", "not.l   ",
  "or.b    ", "or.w    ", "or.l    ",
  "ori.b   ", "ori.w   ", "ori.l   ",
  "pea     ",
  "reset   ",
  "rol.b   ", "rol.w   ", "rol.l   ",
  "ror.b   ", "ror.w   ", "ror.l   ",
  "roxl.b  ", "roxl.w  ", "roxl.l  ",
  "roxr.b  ", "roxr.w  ", "roxr.l  ",
  "rte     ",
  "rtr     ",
  "rts     ",
  "sbcd    ",
  "st      ", "sf      ", "shi     ", "sls     ",
  "scc     ", "scs     ", "sne     ", "seq     ",
  "svc     ", "svs     ", "spl     ", "smi     ",
  "sge     ", "slt     ", "sgt     ", "sle     ",
  "stop    ",
  "sub.b   ", "sub.w   ", "sub.l   ",
              "suba.w  ", "suba.l  ",
  "subi.b  ", "subi.w  ", "subi.l  ",
  "subq.b  ", "subq.w  ", "subq.l  ",
  "subx.b  ", "subx.w  ", "subx.l  ",
  "swap    ",
  "tas     ",
  "trap    ", "trapv   ",
  "tst.b   ", "tst.w   ", "tst.l   ",
  "unlk    "
};

static const char quick_tab_3[8] =
{
  '8', '1', '2', '3', '4', '5', '6', '7'
};

// Constructor
Trace68k::Trace68k(vluint8_t *cart_mem, vluint8_t *bios_mem, vluint8_t *ram_mem)
{
		bios = bios_mem;
		cart = cart_mem;
		ram = ram_mem;
    // mem_size    = size;
    // Clear registers
    for (int i = 0; i < 16; i++)
    {
        regs_l[i] = (vluint16_t)0;
        regs_h[i] = (vluint16_t)0;
    }
    // File handle set to STDOUT
    tname[0]    = (char)0;
    tfh         = stdout;
    // Internal variables cleared
    prev_clk    = (vluint8_t)0;
}

// Destructor
Trace68k::~Trace68k()
{
}

// Open trace file
int Trace68k::open(const char *name)
{
    FILE *fh;
    
    // Close previous file
    this->close();

    // Complete the file name
    strncpy(tname, name, 246);
    strcat(tname, "_0000.trc");
    
    // Try to open the file for writing
    fh = fopen(tname, "w");
    if (fh)
    {
        // Success
        tfh = fh;
        return 0;
    }
    else
    {
        // Failure
        tname[0] = (char)0;
        return -1;
    }
}

// Open next trace file
int Trace68k::openNext(void)
{
    FILE *fh;
    int len;

    // Close previous file
    this->close();

    // Get filename length
    len = strlen(tname);
    if (!len) return -1;
    
    // Increment file name
    if (tname[len-5] == '9')
    {
        tname[len-5] = '0';
        if (tname[len-6] == '9')
        {
            tname[len-6] = '0';
            if (tname[len-7] == '9')
            {
                tname[len-7] = '0';
                tname[len-8]++;
            }
            else
            {
                tname[len-7]++;
            }
        }
        else
        {
            tname[len-6]++;
        }
    }
    else
    {
        tname[len-5]++;
    }
    
    // Try to open the file for writing
    fh = fopen(tname, "w");
    if (fh)
    {
        // Success
        tfh = fh;
        return 0;
    }
    else
    {
        // Failure
        tname[0] = (char)0;
        return -1;
    }
}

// Close trace file
void Trace68k::close(void)
{
    if (tfh != stdout)
    {
        fclose(tfh);
        tfh = stdout;
    }
}

// Dump trace
void Trace68k::dump
(
    vluint64_t cycle,
    // Clock
    vluint8_t  clk,
    // Instruction fetch
    vluint8_t  ifetch,
    // Data and address registers access
    vluint8_t  regs_wren,
    vluint8_t  regs_addr,
    vluint16_t regs_data,
    // Special registers
    vluint16_t sr_reg,
    vluint32_t pc_reg,
    vluint32_t usp_reg,
    vluint32_t ssp_reg
)
{
    // Rising edge on clock
    if (clk && !prev_clk)
    {
        // Update registers
        switch(regs_wren)
        {
            case 1:
            {
                regs_l[regs_addr] = (regs_l[regs_addr] & 0xFF00) | (regs_data & 0x00FF);
                break;
            }
            case 2:
            {
                regs_l[regs_addr] = (regs_l[regs_addr] & 0x00FF) | (regs_data & 0xFF00);
                break;
            }
            case 3:
            {
                regs_l[regs_addr] = regs_data;
                break;
            }
            case 4:
            {
                regs_h[regs_addr] = (regs_h[regs_addr] & 0xFF00) | (regs_data & 0x00FF);
                break;
            }
            case 8:
            {
                regs_h[regs_addr] = (regs_h[regs_addr] & 0x00FF) | (regs_data & 0xFF00);
                break;
            }
            case 12:
            {
                regs_h[regs_addr] = regs_data;
                break;
            }
        }
        
        // Instruction fetch : display registers and instruction
        if (ifetch)
        {
            char       buf[80];
            vluint32_t len;
            
            // CPU registers
            fprintf(tfh, "D0=%04X%04X %04X%04X %04X%04X %04X%04X %04X%04X %04X%04X %04X%04X %04X%04X\n",
                     regs_h[0],  regs_l[0],  regs_h[1],  regs_l[1],  regs_h[2],  regs_l[2],  regs_h[3],  regs_l[3], 
                     regs_h[4],  regs_l[4],  regs_h[5],  regs_l[5],  regs_h[6],  regs_l[6],  regs_h[7],  regs_l[7]);
            fprintf(tfh, "A0=%04X%04X %04X%04X %04X%04X %04X%04X %04X%04X %04X%04X %04X%04X %04X%04X\n",
                     regs_h[8],  regs_l[8],  regs_h[9],  regs_l[9], regs_h[10], regs_l[10], regs_h[11], regs_l[11], 
                    regs_h[12], regs_l[12], regs_h[13], regs_l[13], regs_h[14], regs_l[14], regs_h[15], regs_l[15]);
            fprintf(tfh, "USP=%08X SSP=%08X SR=%04X %s\n\n", usp_reg, ssp_reg, sr_reg, sr_flags[sr_reg & 31]);
            // Disassemble instruction being fetched
            len = d68k_dasm(buf, pc_reg);
            fprintf(tfh, "(%10llu) %08X : ", cycle, pc_reg);
            for (vluint32_t i = 0; i < 10; i += 2)
            {
                if (i < len)
                    fprintf(tfh, "%04X ", read_mem_16(pc_reg + i));
                else
                    fprintf(tfh, "     ");
            }
            fprintf(tfh, "%s\n", buf);
        }
    }
    prev_clk = clk;
}

/******************************************************************************/
/** translate_addr()                                                         **/
/** ------------------------------------------------------------------------ **/
/** Translate 68000 memory map to SDRAM memory map                           **/
/**   addr : 24-bit 68000 address                                            **/
/******************************************************************************/

vluint32_t Trace68k::translate_addr(vluint32_t addr, int &region)
{
	addr &= 0x00FFFFFF;
	region = MEM_NONE;
	if ((addr < 0x200000) && (ram != NULL)) { //FIXME
		region = MEM_DRAM;
	} else if (addr >= 0xE00000) {
		addr -= 0xE00000;
		region = MEM_BIOS;
	} else if ((addr >= 0x800000) && (cart != NULL)) { //FIXME
		addr -= 0x800000;
		region = MEM_CART;
	}
	return addr;
}

/******************************************************************************/
/** read_mem_8()                                                             **/
/** ------------------------------------------------------------------------ **/
/** Read a 8-bit data from memory                                            **/
/******************************************************************************/

vluint8_t Trace68k::read_mem_8(vluint32_t addr)
{
	int region = MEM_NONE;
  vluint32_t paddr = translate_addr(addr, region);
  
	if (region == MEM_DRAM)
		return ram[paddr];
	if (region == MEM_BIOS)
		return bios[paddr];
	if (region == MEM_CART)
		return cart[paddr];		
	return (vluint8_t)0x00;
}

/******************************************************************************/
/** read_mem_16()                                                            **/
/** ------------------------------------------------------------------------ **/
/** Read a 16-bit data from memory                                           **/
/******************************************************************************/

vluint16_t Trace68k::read_mem_16(vluint32_t addr)
{
	int region = MEM_NONE;
  vluint32_t paddr = translate_addr(addr, region);
  vluint32_t paddr1 = translate_addr(addr + 1, region);
	
  if (region == MEM_DRAM)
		return ((vluint16_t)ram[paddr] << 8)
			| ((vluint16_t)ram[paddr1] << 0);
	if (region == MEM_BIOS)
		return ((vluint16_t)bios[paddr] << 8)
			| ((vluint16_t)bios[paddr1] << 0);
	if (region == MEM_CART)
		return ((vluint16_t)cart[paddr] << 8)
			| ((vluint16_t)cart[paddr1] << 0);
	return (vluint16_t)0x0000;
}

/******************************************************************************/
/** read_mem_32()                                                            **/
/** ------------------------------------------------------------------------ **/
/** Read a 32-bit data from memory                                           **/
/******************************************************************************/

vluint32_t Trace68k::read_mem_32(vluint32_t addr)
{
	int region = MEM_NONE;
  vluint32_t paddr = translate_addr(addr, region);
  vluint32_t paddr1 = translate_addr(addr + 1, region);
	vluint32_t paddr2 = translate_addr(addr + 2, region);
	vluint32_t paddr3 = translate_addr(addr + 3, region);

  if (region == MEM_DRAM)	
		return ((vluint32_t)ram[paddr] << 24)	
			| ((vluint32_t)ram[paddr1] << 16)
			| ((vluint32_t)ram[paddr2] << 8)
			| ((vluint32_t)ram[paddr3] << 0);
	if (region == MEM_BIOS)
		return ((vluint32_t)bios[paddr] << 24)	
			| ((vluint32_t)bios[paddr1] << 16)
			| ((vluint32_t)bios[paddr2] << 8)
			| ((vluint32_t)bios[paddr3] << 0);
	if (region == MEM_CART)
		return ((vluint32_t)cart[paddr] << 24)	
			| ((vluint32_t)cart[paddr1] << 16)
			| ((vluint32_t)cart[paddr2] << 8)
			| ((vluint32_t)cart[paddr3] << 0);
	return (vluint32_t)0x00000000;
}

/******************************************************************************/
/** read_imm_8()                                                             **/
/** ------------------------------------------------------------------------ **/
/** Read a 8-bit immediate value from memory                                 **/
/******************************************************************************/

vluint8_t Trace68k::read_imm_8(void)
{
  dasm_pc += 2;
  return read_mem_8(dasm_pc - 1);
}

/******************************************************************************/
/** read_imm_16()                                                            **/
/** ------------------------------------------------------------------------ **/
/** Read a 16-bit immediate value from memory                                **/
/******************************************************************************/

vluint16_t Trace68k::read_imm_16(void)
{
  dasm_pc += 2;
  return read_mem_16(dasm_pc - 2);
}

/******************************************************************************/
/** read_imm_32()                                                            **/
/** ------------------------------------------------------------------------ **/
/** Read a 32-bit immediate value from memory                                **/
/******************************************************************************/

vluint32_t Trace68k::read_imm_32(void)
{
  dasm_pc += 4;
  return read_mem_32(dasm_pc - 4);
}

/******************************************************************************/
/** uhex_to_str()                                                             **/
/** ------------------------------------------------------------------------ **/
/** Convert an unsigned 32-bit value into a hexadecimal string               **/
/**   buf : string buffer pointer                                            **/
/**   val : 32-bit value                                                     **/
/**   dig : number of hexadecimal digits (1 - 8)                             **/
/******************************************************************************/

char *Trace68k::uhex_to_str(char *buf, vluint32_t val, int dig)
{
  dig <<= 2;

  *buf++ = '$';
  while (dig)
  {
    dig -= 4;
    // Convert one digit
    *buf++ = hex_dig[(val >> dig) & 15];
  }
  return buf;
}

/******************************************************************************/
/** shex_to_str()                                                            **/
/** ------------------------------------------------------------------------ **/
/** Convert a signed 8/16/32-bit value into a hexadecimal string             **/
/**   buf : string buffer pointer                                            **/
/**   val : 8/16/32-bit value                                                **/
/**   dig : number of hexadecimal digits (1 - 8)                             **/
/******************************************************************************/

char *Trace68k::shex_to_str(char *buf, vluint32_t val, int dig)
{
  vluint32_t msk;

  // 8, 16 or 32
  dig <<= 2;

  // 0x80, 0x8000 or 0x80000000
  msk = (vluint32_t)1 << (dig - 1);
  if (val & msk)
  {
    val = (~val) + 1;
    *buf++ = '-';
  }
  //msk = (msk << 1) - 1;
  //val &= msk;

  *buf++ = '$';
  while (dig)
  {
    dig -= 4;
    // Convert one digit
    *buf++ = hex_dig[(val >> dig) & 15];
  }
  return buf;
}

/******************************************************************************/
/** get_Dx_str()                                                             **/
/** ------------------------------------------------------------------------ **/
/** Convert data register index to string                                    **/
/**   buf : string buffer pointer                                            **/
/**   idx : register index (0 - 7)                                           **/
/******************************************************************************/

char *Trace68k::get_Dx_str(char *buf, vluint16_t idx)
{
  *buf++ = 'D';
  *buf++ = ('0' + (idx & 7));
  return buf;
}

/******************************************************************************/
/** get_Ax_str()                                                             **/
/** ------------------------------------------------------------------------ **/
/** Convert address register index to string                                 **/
/**   buf : string buffer pointer                                            **/
/**   idx : register index (0 - 7)                                           **/
/******************************************************************************/

char *Trace68k::get_Ax_str(char *buf, vluint16_t idx)
{
  *buf++ = 'A';
  *buf++ = ('0' + (idx & 7));
  return buf;
}

/******************************************************************************/
/** get_ea_mode_str()                                                        **/
/** ------------------------------------------------------------------------ **/
/** Convert 68000 effective address mode to string                           **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/**   size   : size for immediate addressing (0=byte, 1=word, 2=long)        **/
/******************************************************************************/

char *Trace68k::get_ea_mode_str(char *buf, vluint16_t opcode, int size)
{
  switch ((opcode >> 3) & 7)
  {
    case 0: // Dx
    {
      buf = get_Dx_str(buf, opcode);
      break;
    }
    case 1: // Ax
    {
      buf = get_Ax_str(buf, opcode);
      break;
    }
    case 2: // (Ax)
    {
      *buf++ = '(';
      buf = get_Ax_str(buf, opcode);
      *buf++ = ')';
      break;
    }
    case 3: // (Ax)+
    {
      *buf++ = '(';
      buf = get_Ax_str(buf, opcode);
      *buf++ = ')';
      *buf++ = '+';
      break;
    }
    case 4: // -(Ax)
    {
      *buf++ = '-';
      *buf++ = '(';
      buf = get_Ax_str(buf, opcode);
      *buf++ = ')';
      break;
    }
    case 5: // d16(Ax)
    {
      buf = simm16_to_str(buf);
      *buf++ = '(';
      buf = get_Ax_str(buf, opcode);
      *buf++ = ')';
      break;
    }
    case 6: // d8(Ax,Rn*Sc)
    {
      vluint16_t ext = read_imm_16();

      buf = shex_to_str(buf, ext, 2);
      *buf++ = '(';
      buf = get_Ax_str(buf, opcode);
      *buf++ = ',';
      if (BIT_0F(ext))
        buf = get_Ax_str(buf, ext >> 12);
      else
        buf = get_Dx_str(buf, ext >> 12);
      *buf++ = '.';
      if (BIT_0B(ext))
        *buf++ = 'l';
      else
        *buf++ = 'w';
      switch ((ext >> 9) & 3)
      {
        case 1:
        {
          // Scaling x 2
          *buf++ = '*';
          *buf++ = '2';
          break;
        }
        case 2:
        {
          // Scaling x 4
          *buf++ = '*';
          *buf++ = '4';
          break;
        }
        case 3:
        {
          // Scaling x 8
          *buf++ = '*';
          *buf++ = '8';
          break;
        }
        default:
        {
          // No scaling
        }
      }
      *buf++ = ')';

      break;
    }
    case 7:
    {
      switch (opcode & 7)
      {
        case 0: // $XXXX.w
        {
          if (((opcode & 0xF1FF) == 0x41F8) || // LEA $XXXX.w,Ax
              (opcode == 0x4878)) // PEA $XXXX.w
          {
            buf = simm16_to_str(buf);
          }
          else
          {
            buf = uimm16_to_str(buf);
          }
          *buf++ = '.';
          *buf++ = 'w';
          break;
        }
        case 1: // $XXXXXXXX.w
        {
          buf = uimm32_to_str(buf);
          *buf++ = '.';
          *buf++ = 'l';
          break;
        }
        case 2: // d16(PC)
        {
          vluint32_t tmp = (vluint32_t)read_imm_16();

          if (tmp & 0x8000) tmp |= 0xFFFF0000;
          buf = uhex_to_str(buf, dasm_pc + tmp - 2, 8);
          *buf++ = '(';
          *buf++ = 'P';
          *buf++ = 'C';
          *buf++ = ')';
          break;
        }
        case 3: // d8(PC,Rn*Sc)
        {
          vluint16_t ext = read_imm_16();
          vluint32_t tmp = ext & 0xFF;

          if (tmp & 0x80) tmp |= 0xFFFFFF00;
          buf = uhex_to_str(buf, dasm_pc + tmp - 2, 8);
          *buf++ = '(';
          *buf++ = 'P';
          *buf++ = 'C';
          *buf++ = ',';
          if (BIT_0F(ext))
            buf = get_Ax_str(buf, ext >> 12);
          else
            buf = get_Dx_str(buf, ext >> 12);
          *buf++ = '.';
          if (BIT_0B(ext))
            *buf++ = 'l';
          else
            *buf++ = 'w';
          switch ((ext >> 9) & 3)
          {
            case 1:
            {
              // Scaling x 2
              *buf++ = '*';
              *buf++ = '2';
              break;
            }
            case 2:
            {
              // Scaling x 4
              *buf++ = '*';
              *buf++ = '4';
              break;
            }
            case 3:
            {
              // Scaling x 8
              *buf++ = '*';
              *buf++ = '8';
              break;
            }
            default:
            {
              // No scaling
            }
          }
          *buf++ = ')';
          break;
        }
        case 4: // #$XX, #$XXXX, #$XXXXXXXX
        {
          if ((opcode & 0xF5BF) == 0x003C)
          {
            // CCR, SR
            switch (size)
            {
              case 0: // CCR
              {
                *buf++ = 'C';
                *buf++ = 'C';
                *buf++ = 'R';
                break;
              }
              case 1: // SR
              {
                *buf++ = 'S';
                *buf++ = 'R';
                break;
              }
            }
          }
          else
          {
            *buf++ = '#';
            switch (size)
            {
              case 0:
              {
                buf = uimm8_to_str(buf);
                break;
              }
              case 1:
              {
                buf = uimm16_to_str(buf);
                break;
              }
              case 2:
              {
                buf = uimm32_to_str(buf);
                break;
              }
            }
          }
          break;
        }
        default: // Invalid
        {
          *buf++ = '?';
          *buf++ = '?';
          *buf++ = '?';
        }
      }
      break;
    }
  }
  return buf;
}

/******************************************************************************/
/** get_regs_list()                                                          **/
/** ------------------------------------------------------------------------ **/
/** Convert MOVEM registers list to string                                   **/
/**   buf    : string buffer pointer                                         **/
/**   list   : 16-bit register mask                                          **/
/******************************************************************************/

char *Trace68k::get_regs_list(char *buf, vluint16_t list)
{
  int i;
  int first;
  int last;
  char *p = buf;
  vluint16_t mask = (vluint16_t)0x0001;

  *buf = 0;

  // Data registers
  for (i = 0; i < 8; )
  {
    if (list & mask)
    {
      first = i;
      last = i;
      i++;
      mask <<= 1;
      while ((list & mask) && (i < 8))
      {
        last++;
        i++;
        mask <<= 1;
      }
      if (*buf != 0) *p++ = '/';
      p = get_Dx_str(p, first);
      if (last != first)
      {
        *p++ = '-';
        p = get_Dx_str(p, last);
      }
    }
    else
    {
      i++;
      mask <<= 1;
    }
  }

  // Address registers
  for (i = 0; i < 8; )
  {
    if (list & mask)
    {
      first = i;
      last = i;
      i++;
      mask <<= 1;
      while ((list & mask) && (i < 8))
      {
        last++;
        i++;
        mask <<= 1;
      }
      if (*buf != 0) *p++ = '/';
      p = get_Ax_str(p, first);
      if (last != first)
      {
        *p++ = '-';
        p = get_Ax_str(p, last);
      }
    }
    else
    {
      i++;
      mask <<= 1;
    }
  }
  return p;
}

/******************************************************************************/
/** get_regs_list_pd()                                                       **/
/** ------------------------------------------------------------------------ **/
/** Convert MOVEM pre-decrement registers list to string                     **/
/**   buf    : string buffer pointer                                         **/
/**   list   : 16-bit register mask                                          **/
/******************************************************************************/

char *Trace68k::get_regs_list_pd(char *buf, vluint16_t list)
{
  int i;
  int first;
  int last;
  char *p = buf;
  vluint16_t mask = (vluint16_t)0x8000;

  *buf = 0;

  // Data registers
  for (i = 0; i < 8; )
  {
    if (list & mask)
    {
      first = i;
      last = i;
      i++;
      mask >>= 1;
      while ((list & mask) && (i < 8))
      {
        last++;
        i++;
        mask >>= 1;
      }
      if (*buf != 0) *p++ = '/';
      p = get_Dx_str(p, first);
      if (last != first)
      {
        *p++ = '-';
        p = get_Dx_str(p, last);
      }
    }
    else
    {
      i++;
      mask >>= 1;
    }
  }

  // Address registers
  for (i = 0; i < 8; )
  {
    if (list & mask)
    {
      first = i;
      last = i;
      i++;
      mask >>= 1;
      while ((list & mask) && (i < 8))
      {
        last++;
        i++;
        mask >>= 1;
      }
      if (*buf != 0) *p++ = '/';
      p = get_Ax_str(p, first);
      if (last != first)
      {
        *p++ = '-';
        p = get_Ax_str(p, last);
      }
    }
    else
    {
      i++;
      mask >>= 1;
    }
  }
  return p;
}

/******************************************************************************/
/** dasm_group_0()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #0 disassembling (Immediate & bit operations)          **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_0(char *buf, vluint16_t opcode)
{
  switch ((opcode >> 6) & 0x3F)
  {
    case 0x00: // ORI.B #xx,<ea>
    {
      memcpy(buf, opc_str[OPC_ORI_B], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm8_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_B);
      break;
    }
    case 0x01: // ORI.W #xxxx,<ea>
    {
      memcpy(buf, opc_str[OPC_ORI_W], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm16_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_W);
      break;
    }
    case 0x02: // ORI.L #xxxxxxxx,<ea>
    {
      memcpy(buf, opc_str[OPC_ORI_L], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm32_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_L);
      break;
    }
    case 0x08: // ANDI.B #xx,<ea>
    {
      memcpy(buf, opc_str[OPC_ANDI_B], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm8_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_B);
      break;
    }
    case 0x09: // ANDI.W #xxxx,<ea>
    {
      memcpy(buf, opc_str[OPC_ANDI_W], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm16_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_W);
      break;
    }
    case 0x0A: // ANDI.L #xxxxxxxx,<ea>
    {
      memcpy(buf, opc_str[OPC_ANDI_L], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm32_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_L);
      break;
    }
    case 0x10: // SUBI.B #xx,<ea>
    {
      memcpy(buf, opc_str[OPC_SUBI_B], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm8_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_B);
      break;
    }
    case 0x11: // SUBI.W #xxxx,<ea>
    {
      memcpy(buf, opc_str[OPC_SUBI_W], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm16_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_W);
      break;
    }
    case 0x12: // SUBI.L #xxxxxxxx,<ea>
    {
      memcpy(buf, opc_str[OPC_SUBI_L], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm32_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_L);
      break;
    }
    case 0x18: // ADDI.B #xx,<ea>
    {
      memcpy(buf, opc_str[OPC_ADDI_B], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm8_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_B);
      break;
    }
    case 0x19: // ADDI.W #xxxx,<ea>
    {
      memcpy(buf, opc_str[OPC_ADDI_W], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm16_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_W);
      break;
    }
    case 0x1A: // ADDI.L #xxxxxxxx,<ea>
    {
      memcpy(buf, opc_str[OPC_ADDI_L], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm32_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_L);
      break;
    }
    case 0x20: // BTST #x,<ea>
    {
      memcpy(buf, opc_str[OPC_BTST], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm8_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_B);
      break;
    }
    case 0x21: // BCHG #x,<ea>
    {
      memcpy(buf, opc_str[OPC_BCHG], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm8_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_B);
      break;
    }
    case 0x22: // BCLR #x,<ea>
    {
      memcpy(buf, opc_str[OPC_BCLR], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm8_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_B);
      break;
    }
    case 0x23: // BSET #x,<ea>
    {
      memcpy(buf, opc_str[OPC_BSET], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm8_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_B);
      break;
    }
    case 0x28: // EORI.B #xx,<ea>
    {
      memcpy(buf, opc_str[OPC_EORI_B], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm8_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_B);
      break;
    }
    case 0x29: // EORI.W #xxxx,<ea>
    {
      memcpy(buf, opc_str[OPC_EORI_W], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm16_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_W);
      break;
    }
    case 0x2A: // EORI.L #xxxxxxxx,<ea>
    {
      memcpy(buf, opc_str[OPC_EORI_L], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm32_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_L);
      break;
    }
    case 0x30: // CMPI.B #xx,<ea>
    {
      memcpy(buf, opc_str[OPC_CMPI_B], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm8_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_B);
      break;
    }
    case 0x31: // CMPI.W #xxxx,<ea>
    {
      memcpy(buf, opc_str[OPC_CMPI_W], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm16_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_W);
      break;
    }
    case 0x32: // CMPI.L #xxxxxxxx,<ea>
    {
      memcpy(buf, opc_str[OPC_CMPI_L], 8);
      buf += 8;
      *buf++ = '#';
      buf = uimm32_to_str(buf);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_L);
      break;
    }
    case 0x04: // BTST Dx,<ea>, MOVEP.W d16(Ay),Dx
    case 0x0C:
    case 0x14:
    case 0x1C:
    case 0x24:
    case 0x2C:
    case 0x34:
    case 0x3C:
    {
      if ((opcode & 0x38) == 8)
      {
        // MOVEP.W d16(Ay),Dx
        memcpy(buf, opc_str[OPC_MOVEP_W], 8);
        buf = simm16_to_str(buf + 8);
        *buf++ = '(';
        buf = get_Ax_str(buf, opcode);
        *buf++ = ')';
        *buf++ = ',';
        buf = get_Dx_str(buf, opcode >> 9);
      }
      else
      {
        // BTST Dx,<ea>
        memcpy(buf, opc_str[OPC_BTST], 8);
        buf = get_Dx_str(buf + 8, opcode >> 9);
        *buf++ = ',';
        buf = get_ea_mode_str(buf, opcode, SIZE_B);
      }
      break;
    }
    case 0x05: // BCHG Dx,<ea>, MOVEP.L d16(Ay),Dx
    case 0x0D:
    case 0x15:
    case 0x1D:
    case 0x25:
    case 0x2D:
    case 0x35:
    case 0x3D:
    {
      if ((opcode & 0x38) == 8)
      {
        // MOVEP.L d16(Ay),Dx
        memcpy(buf, opc_str[OPC_MOVEP_L], 8);
        buf = simm16_to_str(buf + 8);
        *buf++ = '(';
        buf = get_Ax_str(buf, opcode);
        *buf++ = ')';
        *buf++ = ',';
        buf = get_Dx_str(buf, opcode >> 9);
      }
      else
      {
        // BCHG Dx,<ea>
        memcpy(buf, opc_str[OPC_BCHG], 8);
        buf = get_Dx_str(buf + 8, opcode >> 9);
        *buf++ = ',';
        buf = get_ea_mode_str(buf, opcode, SIZE_B);
      }
      break;
    }
    case 0x06: // BCLR Dx,<ea>, MOVEP.W Dx,d16(Ay)
    case 0x0E:
    case 0x16:
    case 0x1E:
    case 0x26:
    case 0x2E:
    case 0x36:
    case 0x3E:
    {
      if ((opcode & 0x38) == 8)
      {
        // MOVEP.W Dx,d16(Ay)
        memcpy(buf, opc_str[OPC_MOVEP_W], 8);
        buf = get_Dx_str(buf + 8, opcode >> 9);
        *buf++ = ',';
        buf = simm16_to_str(buf);
        *buf++ = '(';
        buf = get_Ax_str(buf, opcode);
        *buf++ = ')';
      }
      else
      {
        // BCLR Dx,<ea>
        memcpy(buf, opc_str[OPC_BCLR], 8);
        buf = get_Dx_str(buf + 8, opcode >> 9);
        *buf++ = ',';
        buf = get_ea_mode_str(buf, opcode, SIZE_B);
      }
      break;
    }
    case 0x07: // BSET Dx,<ea>, MOVEP.L Dx,d16(Ay)
    case 0x0F:
    case 0x17:
    case 0x1F:
    case 0x27:
    case 0x2F:
    case 0x37:
    case 0x3F:
    {
      if ((opcode & 0x38) == 8)
      {
        // MOVEP.L Dx,d16(Ay)
        memcpy(buf, opc_str[OPC_MOVEP_L], 8);
        buf = get_Dx_str(buf + 8, opcode >> 9);
        *buf++ = ',';
        buf = simm16_to_str(buf);
        *buf++ = '(';
        buf = get_Ax_str(buf, opcode);
        *buf++ = ')';
      }
      else
      {
        // BSET Dx,<ea>
        memcpy(buf, opc_str[OPC_BSET], 8);
        buf = get_Dx_str(buf + 8, opcode >> 9);
        *buf++ = ',';
        buf = get_ea_mode_str(buf, opcode, SIZE_B);
      }
      break;
    }
  }
  return buf;
}

/******************************************************************************/
/** dasm_group_1()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #1 disassembling (MOVE byte)                           **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_1(char *buf, vluint16_t opcode)
{
  // MOVE.B <ea>,<ea>
  memcpy(buf, opc_str[OPC_MOVE_B], 8);
  buf = get_ea_mode_str(buf + 8, opcode, SIZE_B);
  *buf++ = ',';
  buf = get_ea_mode_str(buf, ((opcode >> 9) & 0x07) | ((opcode >> 3) & 0x38), SIZE_B);

  return buf;
}

/******************************************************************************/
/** dasm_group_2()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #2 disassembling (MOVE long)                           **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_2(char *buf, vluint16_t opcode)
{
  if ((opcode & 0x01C0) == 0x0040)
  {
    // MOVEA.L <ea>,<ea>
    memcpy(buf, opc_str[OPC_MOVEA_L], 8);
  }
  else
  {
    // MOVE.L <ea>,<ea>
    memcpy(buf, opc_str[OPC_MOVE_L], 8);
  }
  buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
  *buf++ = ',';
  buf = get_ea_mode_str(buf, ((opcode >> 9) & 0x07) | ((opcode >> 3) & 0x38), SIZE_L);

  return buf;
}

/******************************************************************************/
/** dasm_group_3()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #3 disassembling (MOVE word)                           **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_3(char *buf, vluint16_t opcode)
{
  if ((opcode & 0x01C0) == 0x0040)
  {
    // MOVEA.W <ea>,<ea>
    memcpy(buf, opc_str[OPC_MOVEA_W], 8);
  }
  else
  {
    // MOVE.W <ea>,<ea>
    memcpy(buf, opc_str[OPC_MOVE_W], 8);
  }
  buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
  *buf++ = ',';
  buf = get_ea_mode_str(buf, ((opcode >> 9) & 0x07) | ((opcode >> 3) & 0x38), SIZE_W);

  return buf;
}

/******************************************************************************/
/** dasm_group_4()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #4 disassembling (miscelaneous)                        **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_4(char *buf, vluint16_t opcode)
{
  switch ((opcode >> 6) & 0x3F)
  {
    case 0x00: // NEGX.B <ea>
    {
      memcpy(buf, opc_str[OPC_NEGX_B], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_B);
      break;
    }
    case 0x01: // NEGX.W <ea>
    {
      memcpy(buf, opc_str[OPC_NEGX_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      break;
    }
    case 0x02: // NEGX.L <ea>
    {
      memcpy(buf, opc_str[OPC_NEGX_L], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      break;
    }
    case 0x03: // MOVE.W SR,<ea>
    {
      memcpy(buf, opc_str[OPC_MOVE_W], 8);
      buf += 8;
      *buf++ = 'S';
      *buf++ = 'R';
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_W);
      break;
    }
    case 0x08: // CLR.B <ea>
    {
      memcpy(buf, opc_str[OPC_CLR_B], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_B);
      break;
    }
    case 0x09: // CLR.W <ea>
    {
      memcpy(buf, opc_str[OPC_CLR_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      break;
    }
    case 0x0A: // CLR.L <ea>
    {
      memcpy(buf, opc_str[OPC_CLR_L], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      break;
    }
    case 0x0B: // MOVE.B CCR,<ea>
    {
      memcpy(buf, opc_str[OPC_MOVE_B], 8);
      buf += 8;
      *buf++ = 'C';
      *buf++ = 'C';
      *buf++ = 'R';
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_B);
      break;
    }
    case 0x10: // NEG.B <ea>
    {
      memcpy(buf, opc_str[OPC_NEG_B], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_B);
      break;
    }
    case 0x11: // NEG.W <ea>
    {
      memcpy(buf, opc_str[OPC_NEG_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      break;
    }
    case 0x12: // NEG.L <ea>
    {
      memcpy(buf, opc_str[OPC_NEG_L], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      break;
    }
    case 0x13: // MOVE <ea>,CCR
    {
      memcpy(buf, opc_str[OPC_MOVE_B], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_B);
      *buf++ = ',';
      *buf++ = 'C';
      *buf++ = 'C';
      *buf++ = 'R';
      break;
    }
    case 0x18: // NOT.B <ea>
    {
      memcpy(buf, opc_str[OPC_NOT_B], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_B);
      break;
    }
    case 0x19: // NOT.W <ea>
    {
      memcpy(buf, opc_str[OPC_NOT_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      break;
    }
    case 0x1A: // NOT.L <ea>
    {
      memcpy(buf, opc_str[OPC_NOT_L], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      break;
    }
    case 0x1B:
    {
      memcpy(buf, opc_str[OPC_MOVE_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      *buf++ = ',';
      *buf++ = 'S';
      *buf++ = 'R';
      break;
    }
    case 0x20: // NBCD <ea>
    {
      memcpy(buf, opc_str[OPC_NBCD], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_B);
      break;
    }
    case 0x21: // SWAP Rn / PEA <ea>
    {
      switch ((opcode >> 3) & 7)
      {
        case 0: // SWAP Dn
        {
          memcpy(buf, opc_str[OPC_SWAP], 8);
          buf = get_Dx_str(buf + 8, opcode);
          break;
        }
        case 1: // SWAP An
        {
          memcpy(buf, opc_str[OPC_SWAP], 8);
          buf = get_Ax_str(buf + 8, opcode);
          break;
        }
        default: // PEA <ea>
        {
          memcpy(buf, opc_str[OPC_PEA], 8);
          buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
        }
      }
      break;
    }
    case 0x22: // EXT.W Dn / MOVEM.W <list>,<ea>
    {
      if ((opcode & 0x38) == 0x00)
      {
        // EXT.W Dn
        memcpy(buf, opc_str[OPC_EXT_W], 8);
        buf = get_Dx_str(buf + 8, opcode);
      }
      else
      {
        vluint16_t list;
        // MOVEM.W <list>,<ea>
        memcpy(buf, opc_str[OPC_MOVEM_W], 8);
        list = read_imm_16();
        buf += 8;
        if ((opcode & 0x38) == 0x20)
        {
          // -(An)
          buf = get_regs_list_pd(buf, list);
        }
        else
        {
          buf = get_regs_list(buf, list);
        }
        *buf++ = ',';
        buf = get_ea_mode_str(buf, opcode, SIZE_W);
      }
      break;
    }
    case 0x23: // EXT.L Dn / MOVEM.L <list>,<ea>
    {
      if ((opcode & 0x38) == 0)
      {
        // EXT.L Dn
        memcpy(buf, opc_str[OPC_EXT_L], 8);
        buf = get_Dx_str(buf + 8, opcode);
      }
      else
      {
        vluint16_t list;
        // MOVEM.L <list>,<ea>
        memcpy(buf, opc_str[OPC_MOVEM_L], 8);
        list = read_imm_16();
        buf += 8;
        if ((opcode & 0x38) == 0x20)
        {
          // -(An)
          buf = get_regs_list_pd(buf, list);
        }
        else
        {
          buf = get_regs_list(buf, list);
        }
        *buf++ = ',';
        buf = get_ea_mode_str(buf, opcode, SIZE_L);
      }
      break;
    }
    case 0x28: // TST.B <ea>
    {
      memcpy(buf, opc_str[OPC_TST_B], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_B);
      break;
    }
    case 0x29: // TST.W <ea>
    {
      memcpy(buf, opc_str[OPC_TST_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      break;
    }
    case 0x2A: // TST.L <ea>
    {
      memcpy(buf, opc_str[OPC_TST_L], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      break;
    }
    case 0x2B: // TAS <ea>
    {
      if (opcode == 0x4AFC)
      {
        memcpy(buf, opc_str[OPC_ILLEGAL], 7);
        buf += 7;
      }
      else
      {
        memcpy(buf, opc_str[OPC_TAS], 8);
        buf = get_ea_mode_str(buf + 8, opcode, SIZE_B);
      }
      break;
    }
    case 0x32: // MOVEM.W <ea>,<list>
    {
      vluint16_t list;
      // MOVEM.W <ea>,<list>
      memcpy(buf, opc_str[OPC_MOVEM_W], 8);
      list = read_imm_16();
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      *buf++ = ',';
      buf = get_regs_list(buf, list);
      break;
    }
    case 0x33: // MOVEM.L <ea>,<list>
    {
      vluint16_t list;
      // MOVEM.L <ea>,<list>
      memcpy(buf, opc_str[OPC_MOVEM_L], 8);
      list = read_imm_16();
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      *buf++ = ',';
      buf = get_regs_list(buf, list);
      break;
    }
    case 0x39: // Misc.
    {
	  switch ((opcode >> 3) & 7)
	  {
		case 0: // TRAP #x
		case 1:
		{
          memcpy(buf, opc_str[OPC_TRAP], 8);
          buf += 8;
          *buf++ = '#';
          buf = uhex_to_str(buf, (vluint32_t)opcode, 1);
		  break;
		}
		case 2: // LINK An,#x
		{
          memcpy(buf, opc_str[OPC_LINK], 8);
          buf = get_Ax_str(buf + 8, opcode);
          *buf++ = ',';
          *buf++ = '#';
          buf = simm16_to_str(buf);
		  break;
		}
		case 3: // UNLK An
		{
          memcpy(buf, opc_str[OPC_UNLK], 8);
          buf = get_Ax_str(buf + 8, opcode);
		  break;
		}
		case 4: // MOVE An,USP
		{
          memcpy(buf, opc_str[OPC_MOVE_L], 8);
          buf = get_Ax_str(buf + 8, opcode);
          *buf++ = ',';
          *buf++ = 'U';
          *buf++ = 'S';
          *buf++ = 'P';
		  break;
		}
		case 5: // MOVE USP,An
		{
          memcpy(buf, opc_str[OPC_MOVE_L], 8);
          buf += 8;
          *buf++ = 'U';
          *buf++ = 'S';
          *buf++ = 'P';
          *buf++ = ',';
          buf = get_Ax_str(buf, opcode);
		  break;
		}
		case 6: // Misc.
		{
		  switch (opcode & 7)
		  {
			case 0: // RESET
			{
              memcpy(buf, opc_str[OPC_RESET], 5);
              buf += 5;
			  break;
			}
			case 1: // NOP
			{
              memcpy(buf, opc_str[OPC_NOP], 3);
              buf += 3;
			  break;
			}
			case 2: // STOP #x
			{
              memcpy(buf, opc_str[OPC_STOP], 8);
              buf += 8;
              *buf++ = '#';
              buf = uimm16_to_str(buf);
			  break;
			}
			case 3: // RTE
			{
              memcpy(buf, opc_str[OPC_RTE], 3);
              buf += 3;
			  break;
			}
			case 5: // RTS
			{
              memcpy(buf, opc_str[OPC_RTS], 3);
              buf += 3;
			  break;
			}
			case 6: // TRAPV
			{
              memcpy(buf, opc_str[OPC_TRAPV], 5);
              buf += 5;
			  break;
			}
			case 7: // RTR
			{
              memcpy(buf, opc_str[OPC_RTR], 3);
              buf += 3;
			  break;
			}
		  }
		  break;
		}
	  }
	  break;
    }
    case 0x3A: // JSR <ea>
    {
      memcpy(buf, opc_str[OPC_JSR], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
	  break;
    }
    case 0x3B: // JMP <ea>
    {
      memcpy(buf, opc_str[OPC_JMP], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
	  break;
    }
    case 0x04: // CHK.L <ea>,Dn
    case 0x0C:
    case 0x14:
    case 0x1C:
    case 0x24:
    case 0x2C:
    case 0x34:
    case 0x3C:
    {
      memcpy(buf, opc_str[OPC_CHK_L], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
	  break;
    }
    case 0x06: // CHK.W <ea>,Dn
    case 0x0E:
    case 0x16:
    case 0x1E:
    case 0x26:
    case 0x2E:
    case 0x36:
    case 0x3E:
    {
      memcpy(buf, opc_str[OPC_CHK_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
	  break;
    }
    case 0x07: // LEA <ea>,An
    case 0x0F:
    case 0x17:
    case 0x1F:
    case 0x27:
    case 0x2F:
    case 0x37:
    case 0x3F:
    {
      memcpy(buf, opc_str[OPC_LEA], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      *buf++ = ',';
      buf = get_Ax_str(buf, opcode >> 9);
	  break;
    }
  }
  return buf;
}

/******************************************************************************/
/** dasm_group_5()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #5 disassembling (quick ADD/SUB & conditional op.)     **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_5(char *buf, vluint16_t opcode)
{
  switch ((opcode >> 6) & 7)
  {
    case 0: // ADDQ.B #x,<ea>
    {
      memcpy(buf, opc_str[OPC_ADDQ_B], 8);
      buf += 8;
      *buf++ = '#';
      *buf++ = quick_tab_3[(opcode >> 9) & 7];
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_B);
      break;
    }
    case 1: // ADDQ.W #x,<ea>
    {
      memcpy(buf, opc_str[OPC_ADDQ_W], 8);
      buf += 8;
      *buf++ = '#';
      *buf++ = quick_tab_3[(opcode >> 9) & 7];
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_W);
      break;
    }
    case 2: // ADDQ.L #x,<ea>
    {
      memcpy(buf, opc_str[OPC_ADDQ_L], 8);
      buf += 8;
      *buf++ = '#';
      *buf++ = quick_tab_3[(opcode >> 9) & 7];
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_L);
      break;
    }
    case 4: // SUBQ.B #x,<ea>
    {
      memcpy(buf, opc_str[OPC_SUBQ_B], 8);
      buf += 8;
      *buf++ = '#';
      *buf++ = quick_tab_3[(opcode >> 9) & 7];
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_B);
      break;
    }
    case 5: // SUBQ.W #x,<ea>
    {
      memcpy(buf, opc_str[OPC_SUBQ_W], 8);
      buf += 8;
      *buf++ = '#';
      *buf++ = quick_tab_3[(opcode >> 9) & 7];
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_W);
      break;
    }
    case 6: // SUBQ.L #x,<ea>
    {
      memcpy(buf, opc_str[OPC_SUBQ_L], 8);
      buf += 8;
      *buf++ = '#';
      *buf++ = quick_tab_3[(opcode >> 9) & 7];
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_L);
      break;
    }
    case 3: // Scc <ea>, DBcc Dx,<disp>
    case 7:
    {
      if ((opcode & 0x38) == 8)
      {
        // DBcc Dx,<disp>
        vluint32_t tmp = (vluint32_t)read_imm_16();
        if (tmp & 0x8000) tmp |= 0xFFFF0000;
        memcpy(buf, opc_str[OPC_DBCC + ((opcode >> 8) & 15)], 8);
        buf = get_Dx_str(buf + 8, opcode);
        *buf++ = ',';
        buf = uhex_to_str(buf, dasm_pc + tmp - 2, 8);
      }
      else
      {
        // Scc <ea>
        memcpy(buf, opc_str[OPC_SCC + ((opcode >> 8) & 15)], 8);
        buf = get_ea_mode_str(buf + 8, opcode, SIZE_B);
      }
      break;
    }
  }
  return buf;
}

/******************************************************************************/
/** dasm_group_6()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #6 disassembling (conditional branch operations)       **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_6(char *buf, vluint16_t opcode)
{
  vluint32_t tmp = (vluint32_t)opcode & 0xFF;

  if (tmp)
  {
    // Bcc.B <disp>
    memcpy(buf, opc_str[OPC_BCC_B + ((opcode >> 8) & 15)], 8);
    if (tmp & 0x80) tmp |= 0xFFFFFF00;
  }
  else
  {
    // Bcc.W <disp>
    memcpy(buf, opc_str[OPC_BCC_W + ((opcode >> 8) & 15)], 8);
    tmp = (vluint32_t)read_imm_16();
    if (tmp & 0x8000) tmp |= 0xFFFF0000;
    tmp -= 2;
  }
  tmp += dasm_pc;
  buf = uhex_to_str(buf + 8, tmp, 8);

  return buf;
}

/******************************************************************************/
/** dasm_group_7()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #7 disassembling (MOVE quick)                          **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_7(char *buf, vluint16_t opcode)
{
  // MOVEQ #x,Dx
  memcpy(buf, opc_str[OPC_MOVEQ], 8);
  buf[8] = '#';
  buf = shex_to_str(buf + 9, opcode, 2);
  *buf++ = ',';
  buf = get_Dx_str(buf, opcode >> 9);

  return buf;
}

/******************************************************************************/
/** dasm_group_8()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #8 disassembling (OR & divide)                         **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_8(char *buf, vluint16_t opcode)
{
  switch ((opcode >> 6) & 7)
  {
    case 0: // OR.B <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_OR_B], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_B);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 1: // OR.W <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_OR_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 2: // OR.L <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_OR_L], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 3: // DIVU.W <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_DIVU_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 4: // OR.B Dx,<ea>
    {
      switch ((opcode >> 3) & 7)
      {
        case 0: // SBCD Dx,Dy
        {
          memcpy(buf, opc_str[OPC_SBCD], 8);
          buf = get_Dx_str(buf + 8, opcode);
          *buf++ = ',';
          buf = get_Dx_str(buf, opcode >> 9);
          break;
        }
        case 1: // SBCD -(Ax),-(Ay)
        {
          memcpy(buf, opc_str[OPC_SBCD], 8);
          buf += 8;
          *buf++ = '-';
          *buf++ = '(';
          buf = get_Ax_str(buf, opcode);
          *buf++ = ')';
          *buf++ = ',';
          *buf++ = '-';
          *buf++ = '(';
          buf = get_Ax_str(buf, opcode >> 9);
          *buf++ = ')';
          break;
        }
        default: // OR.B Dx,<ea>
        {
          memcpy(buf, opc_str[OPC_OR_B], 8);
          buf = get_Dx_str(buf + 8, opcode >> 9);
          *buf++ = ',';
          buf = get_ea_mode_str(buf, opcode, SIZE_B);
        }
      }
      break;
    }
    case 5: // OR.W Dx,<ea>
    {
      memcpy(buf, opc_str[OPC_OR_W], 8);
      buf = get_Dx_str(buf + 8, opcode >> 9);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_W);
      break;
    }
    case 6: // OR.L Dx,<ea>
    {
      memcpy(buf, opc_str[OPC_OR_L], 8);
      buf = get_Dx_str(buf + 8, opcode >> 9);
      *buf++ = ',';
      buf = get_ea_mode_str(buf, opcode, SIZE_L);
      break;
    }
    case 7: // DIVS.W <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_DIVS_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
  }
  return buf;
}

/******************************************************************************/
/** dasm_group_9()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #9 disassembling (SUB operations)                      **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_9(char *buf, vluint16_t opcode)
{
  switch ((opcode >> 6) & 7)
  {
    case 0: // SUB.B <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_SUB_B], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_B);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 1: // SUB.W <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_SUB_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 2: // SUB.L <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_SUB_L], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 3: // SUBA.W <ea>,Ax
    {
      memcpy(buf, opc_str[OPC_SUBA_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      *buf++ = ',';
      buf = get_Ax_str(buf, opcode >> 9);
      break;
    }
    case 4: // SUB.B Dx,<ea>
    {
      switch ((opcode >> 3) & 7)
      {
        case 0: // SUBX.B Dy,Dx
        {
          memcpy(buf, opc_str[OPC_SUBX_B], 8);
          buf = get_Dx_str(buf + 8, opcode);
          *buf++ = ',';
          buf = get_Dx_str(buf, opcode >> 9);
          break;
        }
        case 1: // SUBX.B -(Ay),-(Ax)
        {
          memcpy(buf, opc_str[OPC_SUBX_B], 8);
          buf[8] = '-';
          buf[9] = '(';
          buf = get_Ax_str(buf + 10, opcode);
          *buf++ = ')';
          *buf++ = ',';
          *buf++ = '-';
          *buf++ = '(';
          buf = get_Ax_str(buf, opcode >> 9);
          *buf++ = ')';
          break;
        }
        default: // SUB.B Dx,<ea>
        {
          memcpy(buf, opc_str[OPC_SUB_B], 8);
          buf = get_Dx_str(buf + 8, opcode >> 9);
          *buf++ = ',';
          buf = get_ea_mode_str(buf, opcode, SIZE_B);
        }
      }
      break;
    }
    case 5: // SUB.W Dx,<ea>
    {
      switch ((opcode >> 3) & 7)
      {
        case 0: // SUBX.W Dy,Dx
        {
          memcpy(buf, opc_str[OPC_SUBX_W], 8);
          buf = get_Dx_str(buf + 8, opcode);
          *buf++ = ',';
          buf = get_Dx_str(buf, opcode >> 9);
          break;
        }
        case 1: // SUBX.W -(Ay),-(Ax)
        {
          memcpy(buf, opc_str[OPC_SUBX_W], 8);
          buf[8] = '-';
          buf[9] = '(';
          buf = get_Ax_str(buf + 10, opcode);
          *buf++ = ')';
          *buf++ = ',';
          *buf++ = '-';
          *buf++ = '(';
          buf = get_Ax_str(buf, opcode >> 9);
          *buf++ = ')';
          break;
        }
        default: // SUB.W Dx,<ea>
        {
          memcpy(buf, opc_str[OPC_SUB_W], 8);
          buf = get_Dx_str(buf + 8, opcode >> 9);
          *buf++ = ',';
          buf = get_ea_mode_str(buf, opcode, SIZE_W);
        }
      }
      break;
    }
    case 6: // SUB.L Dx,<ea>
    {
      switch ((opcode >> 3) & 7)
      {
        case 0: // SUBX.L Dy,Dx
        {
          memcpy(buf, opc_str[OPC_SUBX_L], 8);
          buf = get_Dx_str(buf + 8, opcode);
          *buf++ = ',';
          buf = get_Dx_str(buf, opcode >> 9);
          break;
        }
        case 1: // SUBX.L -(Ay),-(Ax)
        {
          memcpy(buf, opc_str[OPC_SUBX_L], 8);
          buf[8] = '-';
          buf[9] = '(';
          buf = get_Ax_str(buf + 10, opcode);
          *buf++ = ')';
          *buf++ = ',';
          *buf++ = '-';
          *buf++ = '(';
          buf = get_Ax_str(buf, opcode >> 9);
          *buf++ = ')';
          break;
        }
        default: // SUB.L Dx,<ea>
        {
          memcpy(buf, opc_str[OPC_SUB_L], 8);
          buf = get_Dx_str(buf + 8, opcode >> 9);
          *buf++ = ',';
          buf = get_ea_mode_str(buf, opcode, SIZE_L);
        }
      }
      break;
    }
    case 7: // SUBA.L <ea>,Ax
    {
      memcpy(buf, opc_str[OPC_SUBA_L], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      *buf++ = ',';
      buf = get_Ax_str(buf, opcode >> 9);
      break;
    }
  }
  return buf;
}

/******************************************************************************/
/** dasm_group_A()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #A disassembling (line A)                              **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_A(char *buf, vluint16_t opcode)
{
  // Line A
  memcpy(buf, opc_str[OPC_NONE], 8);
  buf = uhex_to_str(buf + 8, opcode, 4);

  return buf;
}

/******************************************************************************/
/** dasm_group_B()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #B disassembling (EOR & compare)                       **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_B(char *buf, vluint16_t opcode)
{
  switch ((opcode >> 6) & 7)
  {
    case 0: // CMP.B <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_CMP_B], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_B);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 1: // CMP.W <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_CMP_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 2: // CMP.L <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_CMP_L], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 3: // CMPA.W <ea>,Ax
    {
      memcpy(buf, opc_str[OPC_CMPA_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      *buf++ = ',';
      buf = get_Ax_str(buf, opcode >> 9);
      break;
    }
    case 4: // EOR.B Dx,<ea>
    {
      if ((opcode & 0x38) == 8)
      {
        // CMPM.B (Ay)+,(Ax)+
        memcpy(buf, opc_str[OPC_CMPM_B], 8);
        buf += 8;
        *buf++ = '(';
        buf = get_Ax_str(buf, opcode);
        *buf++ = ')';
        *buf++ = '+';
        *buf++ = ',';
        *buf++ = '(';
        buf = get_Ax_str(buf, opcode >> 9);
        *buf++ = ')';
        *buf++ = '+';
      }
      else
      {
        // EOR.B Dx,<ea>
        memcpy(buf, opc_str[OPC_EOR_B], 8);
        buf = get_Dx_str(buf + 8, opcode >> 9);
        *buf++ = ',';
        buf = get_ea_mode_str(buf, opcode, SIZE_B);
      }
      break;
    }
    case 5: // EOR.W Dx,<ea>
    {
      if ((opcode & 0x38) == 8)
      {
        // CMPM.W (Ay)+,(Ax)+
        memcpy(buf, opc_str[OPC_CMPM_W], 8);
        buf += 8;
        *buf++ = '(';
        buf = get_Ax_str(buf, opcode);
        *buf++ = ')';
        *buf++ = '+';
        *buf++ = ',';
        *buf++ = '(';
        buf = get_Ax_str(buf, opcode >> 9);
        *buf++ = ')';
        *buf++ = '+';
      }
      else
      {
        // EOR.W Dx,<ea>
        memcpy(buf, opc_str[OPC_EOR_W], 8);
        buf = get_Dx_str(buf + 8, opcode >> 9);
        *buf++ = ',';
        buf = get_ea_mode_str(buf, opcode, SIZE_W);
      }
      break;
    }
    case 6: // EOR.L Dx,<ea>
    {
      if ((opcode & 0x38) == 8)
      {
        // CMPM.L (Ay)+,(Ax)+
        memcpy(buf, opc_str[OPC_CMPM_L], 8);
        buf += 8;
        *buf++ = '(';
        buf = get_Ax_str(buf, opcode);
        *buf++ = ')';
        *buf++ = '+';
        *buf++ = ',';
        *buf++ = '(';
        buf = get_Ax_str(buf, opcode >> 9);
        *buf++ = ')';
        *buf++ = '+';
      }
      else
      {
        // EOR.L Dx,<ea>
        memcpy(buf, opc_str[OPC_EOR_L], 8);
        buf = get_Dx_str(buf + 8, opcode >> 9);
        *buf++ = ',';
        buf = get_ea_mode_str(buf, opcode, SIZE_L);
      }
      break;
    }
    case 7: // CMPA.L <ea>,Ax
    {
      memcpy(buf, opc_str[OPC_CMPA_L], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      *buf++ = ',';
      buf = get_Ax_str(buf, opcode >> 9);
      break;
    }
  }
  return buf;
}

/******************************************************************************/
/** dasm_group_C()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #C disassembling (AND & multiply)                      **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_C(char *buf, vluint16_t opcode)
{
  switch ((opcode >> 6) & 7)
  {
    case 0: // AND.B <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_AND_B], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_B);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 1: // AND.W <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_AND_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 2: // AND.L <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_AND_L], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 3: // MULU.W <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_MULU_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 4: // AND.B Dx,<ea>
    {
      switch ((opcode >> 3) & 7)
      {
        case 0: // ABCD Dx,Dy
        {
          memcpy(buf, opc_str[OPC_ABCD], 8);
          buf = get_Dx_str(buf + 8, opcode);
          *buf++ = ',';
          buf = get_Dx_str(buf, opcode >> 9);
          break;
        }
        case 1: // ABCD -(Ax),-(Ay)
        {
          memcpy(buf, opc_str[OPC_ABCD], 8);
          buf += 8;
          *buf++ = '-';
          *buf++ = '(';
          buf = get_Ax_str(buf, opcode);
          *buf++ = ')';
          *buf++ = ',';
          *buf++ = '-';
          *buf++ = '(';
          buf = get_Ax_str(buf, opcode >> 9);
          *buf++ = ')';
          break;
        }
        default: // AND.B Dx,<ea>
        {
          memcpy(buf, opc_str[OPC_AND_B], 8);
          buf = get_Dx_str(buf + 8, opcode >> 9);
          *buf++ = ',';
          buf = get_ea_mode_str(buf, opcode, SIZE_B);
        }
      }
      break;
    }
    case 5: // AND.W Dx,<ea>
    {
      switch ((opcode >> 3) & 7)
      {
        case 0: // EXG Dx,Dy
        {
          memcpy(buf, opc_str[OPC_EXG], 8);
          buf = get_Dx_str(buf + 8, opcode >> 9);
          *buf++ = ',';
          buf = get_Dx_str(buf, opcode);
          break;
        }
        case 1: // EXG Ax,Ay
        {
          memcpy(buf, opc_str[OPC_EXG], 8);
          buf = get_Ax_str(buf + 8, opcode >> 9);
          *buf++ = ',';
          buf = get_Ax_str(buf, opcode);
          break;
        }
        default: // AND.L Dx,<ea>
        {
          memcpy(buf, opc_str[OPC_AND_W], 8);
          buf = get_Dx_str(buf + 8, opcode >> 9);
          *buf++ = ',';
          buf = get_ea_mode_str(buf, opcode, SIZE_W);
        }
      }
      break;
    }
    case 6: // AND.L Dx,<ea>
    {
      if ((opcode & 0x38) == 8)
      {
        // EXG Dx,Ay
        memcpy(buf, opc_str[OPC_EXG], 8);
        buf = get_Dx_str(buf + 8, opcode >> 9);
        *buf++ = ',';
        buf = get_Ax_str(buf, opcode);
      }
      else
      {
        // AND.L Dx,<ea>
        memcpy(buf, opc_str[OPC_AND_L], 8);
        buf = get_Dx_str(buf + 8, opcode >> 9);
        *buf++ = ',';
        buf = get_ea_mode_str(buf, opcode, SIZE_L);
      }
      break;
    }
    case 7: // MULS.W <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_MULS_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
  }
  return buf;
}

/******************************************************************************/
/** dasm_group_D()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #D disassembling (ADD operations)                      **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_D(char *buf, vluint16_t opcode)
{
  switch ((opcode >> 6) & 7)
  {
    case 0: // ADD.B <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_ADD_B], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_B);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 1: // ADD.W <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_ADD_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 2: // ADD.L <ea>,Dx
    {
      memcpy(buf, opc_str[OPC_ADD_L], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode >> 9);
      break;
    }
    case 3: // ADDA.W <ea>,Ax
    {
      memcpy(buf, opc_str[OPC_ADDA_W], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      *buf++ = ',';
      buf = get_Ax_str(buf, opcode >> 9);
      break;
    }
    case 4: // ADD.B Dx,<ea>
    {
      switch ((opcode >> 3) & 7)
      {
        case 0: // ADDX.B Dy,Dx
        {
          memcpy(buf, opc_str[OPC_ADDX_B], 8);
          buf = get_Dx_str(buf + 8, opcode);
          *buf++ = ',';
          buf = get_Dx_str(buf, opcode >> 9);
          break;
        }
        case 1: // ADDX.B -(Ay),-(Ax)
        {
          memcpy(buf, opc_str[OPC_ADDX_B], 8);
          buf += 8;
          *buf++ = '-';
          *buf++ = '(';
          buf = get_Ax_str(buf, opcode);
          *buf++ = ')';
          *buf++ = ',';
          *buf++ = '-';
          *buf++ = '(';
          buf = get_Ax_str(buf, opcode >> 9);
          *buf++ = ')';
          break;
        }
        default: // ADD.B Dx,<ea>
        {
          memcpy(buf, opc_str[OPC_ADD_B], 8);
          buf = get_Dx_str(buf + 8, opcode >> 9);
          *buf++ = ',';
          buf = get_ea_mode_str(buf, opcode, SIZE_B);
        }
      }
      break;
    }
    case 5: // ADD.W Dx,<ea>
    {
      switch ((opcode >> 3) & 7)
      {
        case 0: // ADDX.W Dy,Dx
        {
          memcpy(buf, opc_str[OPC_ADDX_W], 8);
          buf = get_Dx_str(buf + 8, opcode);
          *buf++ = ',';
          buf = get_Dx_str(buf, opcode >> 9);
          break;
        }
        case 1: // ADDX.W -(Ay),-(Ax)
        {
          memcpy(buf, opc_str[OPC_ADDX_W], 8);
          buf += 8;
          *buf++ = '-';
          *buf++ = '(';
          buf = get_Ax_str(buf, opcode);
          *buf++ = ')';
          *buf++ = ',';
          *buf++ = '-';
          *buf++ = '(';
          buf = get_Ax_str(buf, opcode >> 9);
          *buf++ = ')';
          break;
        }
        default: // ADD.W Dx,<ea>
        {
          memcpy(buf, opc_str[OPC_ADD_W], 8);
          buf = get_Dx_str(buf + 8, opcode >> 9);
          *buf++ = ',';
          buf = get_ea_mode_str(buf, opcode, SIZE_W);
        }
      }
      break;
    }
    case 6: // ADD.L Dx,<ea>
    {
      switch ((opcode >> 3) & 7)
      {
        case 0: // ADDX.L Dy,Dx
        {
          memcpy(buf, opc_str[OPC_ADDX_L], 8);
          buf = get_Dx_str(buf + 8, opcode);
          *buf++ = ',';
          buf = get_Dx_str(buf, opcode >> 9);
          break;
        }
        case 1: // ADDX.L -(Ay),-(Ax)
        {
          memcpy(buf, opc_str[OPC_ADDX_L], 8);
          buf += 8;
          *buf++ = '-';
          *buf++ = '(';
          buf = get_Ax_str(buf, opcode);
          *buf++ = ')';
          *buf++ = ',';
          *buf++ = '-';
          *buf++ = '(';
          buf = get_Ax_str(buf, opcode >> 9);
          *buf++ = ')';
          break;
        }
        default: // ADD.L Dx,<ea>
        {
          memcpy(buf, opc_str[OPC_ADD_L], 8);
          buf = get_Dx_str(buf + 8, opcode >> 9);
          *buf++ = ',';
          buf = get_ea_mode_str(buf, opcode, SIZE_L);
        }
      }
      break;
    }
    case 7: // ADDA.L <ea>,Ax
    {
      memcpy(buf, opc_str[OPC_ADDA_L], 8);
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_L);
      *buf++ = ',';
      buf = get_Ax_str(buf, opcode >> 9);
      break;
    }
  }
  return buf;
}

/******************************************************************************/
/** dasm_group_E()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #E disassembling (shift/rotate operations)             **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_E(char *buf, vluint16_t opcode)
{
  switch ((opcode >> 6) & 7)
  {
    case 0:
    {
      // Right shift/rotate byte
      switch ((opcode >> 3) & 3)
      {
        case 0:
        {
          // ASR.B #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ASR_B], 8);
          break;
        }
        case 1:
        {
          // LSR.B #x/Dx,Dy
          memcpy(buf, opc_str[OPC_LSR_B], 8);
          break;
        }
        case 2:
        {
          // ROXR.B #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ROXR_B], 8);
          break;
        }
        case 3:
        {
          // ROR.B #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ROR_B], 8);
          break;
        }
      }
      buf += 8;
      if (BIT_05(opcode))
      {
        buf = get_Dx_str(buf, opcode >> 9);
      }
      else
      {
        *buf++ = '#';
        *buf++ = quick_tab_3[(opcode >> 9) & 7];
      }
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode);
      break;
    }
    // Right shift/rotate word
    case 1:
    {
      switch ((opcode >> 3) & 3)
      {
        case 0:
        {
          // ASR.W #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ASR_W], 8);
          break;
        }
        case 1:
        {
          // LSR.W #x/Dx,Dy
          memcpy(buf, opc_str[OPC_LSR_W], 8);
          break;
        }
        case 2:
        {
          // ROXR.W #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ROXR_W], 8);
          break;
        }
        case 3:
        {
          // ROR.W #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ROR_W], 8);
          break;
        }
      }
      buf += 8;
      if (BIT_05(opcode))
      {
        buf = get_Dx_str(buf, opcode >> 9);
      }
      else
      {
        *buf++ = '#';
        *buf++ = quick_tab_3[(opcode >> 9) & 7];
      }
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode);
      break;
    }
    // Right shift/rotate long
    case 2:
    {
      switch ((opcode >> 3) & 3)
      {
        case 0:
        {
          // ASR.L #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ASR_L], 8);
          break;
        }
        case 1:
        {
          // LSR.L #x/Dx,Dy
          memcpy(buf, opc_str[OPC_LSR_L], 8);
          break;
        }
        case 2:
        {
          // ROXR.L #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ROXR_L], 8);
          break;
        }
        case 3:
        {
          // ROR.L #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ROR_L], 8);
          break;
        }
      }
      buf += 8;
      if (BIT_05(opcode))
      {
        buf = get_Dx_str(buf, opcode >> 9);
      }
      else
      {
        *buf++ = '#';
        *buf++ = quick_tab_3[(opcode >> 9) & 7];
      }
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode);
      break;
    }
    // Right shift/rotate memory
    case 3:
    {
      switch ((opcode >> 9) & 7)
      {
        case 0:
        {
          // ASR.W <ea>
          memcpy(buf, opc_str[OPC_ASR_W], 8);
          break;
        }
        case 1:
        {
          // LSR.W <ea>
          memcpy(buf, opc_str[OPC_LSR_W], 8);
          break;
        }
        case 2:
        {
          // ROXR.W <ea>
          memcpy(buf, opc_str[OPC_ROXR_W], 8);
          break;
        }
        case 3:
        {
          // ROR.W <ea>
          memcpy(buf, opc_str[OPC_ROR_W], 8);
          break;
        }
      }
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      break;
    }
    case 4:
    {
      // Left shift/rotate byte
      switch ((opcode >> 3) & 3)
      {
        case 0:
        {
          // ASL.B #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ASL_B], 8);
          break;
        }
        case 1:
        {
          // LSL.B #x/Dx,Dy
          memcpy(buf, opc_str[OPC_LSL_B], 8);
          break;
        }
        case 2:
        {
          // ROXL.B #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ROXL_B], 8);
          break;
        }
        case 3:
        {
          // ROL.B #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ROL_B], 8);
          break;
        }
      }
      buf += 8;
      if (BIT_05(opcode))
      {
        buf = get_Dx_str(buf, opcode >> 9);
      }
      else
      {
        *buf++ = '#';
        *buf++ = quick_tab_3[(opcode >> 9) & 7];
      }
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode);
      break;
    }
    // Left shift/rotate word
    case 5:
    {
      switch ((opcode >> 3) & 3)
      {
        case 0:
        {
          // ASL.W #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ASL_W], 8);
          break;
        }
        case 1:
        {
          // LSL.W #x/Dx,Dy
          memcpy(buf, opc_str[OPC_LSL_W], 8);
          break;
        }
        case 2:
        {
          // ROXL.W #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ROXL_W], 8);
          break;
        }
        case 3:
        {
          // ROL.W #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ROL_W], 8);
          break;
        }
      }
      buf += 8;
      if (BIT_05(opcode))
      {
        buf = get_Dx_str(buf, opcode >> 9);
      }
      else
      {
        *buf++ = '#';
        *buf++ = quick_tab_3[(opcode >> 9) & 7];
      }
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode);
      break;
    }
    // Left shift/rotate long
    case 6:
    {
      switch ((opcode >> 3) & 3)
      {
        case 0:
        {
          // ASL.L #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ASL_L], 8);
          break;
        }
        case 1:
        {
          // LSL.L #x/Dx,Dy
          memcpy(buf, opc_str[OPC_LSL_L], 8);
          break;
        }
        case 2:
        {
          // ROXL.L #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ROXL_L], 8);
          break;
        }
        case 3:
        {
          // ROL.L #x/Dx,Dy
          memcpy(buf, opc_str[OPC_ROL_L], 8);
          break;
        }
      }
      buf += 8;
      if (BIT_05(opcode))
      {
        buf = get_Dx_str(buf, opcode >> 9);
      }
      else
      {
        *buf++ = '#';
        *buf++ = quick_tab_3[(opcode >> 9) & 7];
      }
      *buf++ = ',';
      buf = get_Dx_str(buf, opcode);
      break;
    }
    // Left shift/rotate memory
    case 7:
    {
      switch ((opcode >> 9) & 7)
      {
        case 0:
        {
          // ASL.W <ea>
          memcpy(buf, opc_str[OPC_ASL_W], 8);
          break;
        }
        case 1:
        {
          // LSL.W <ea>
          memcpy(buf, opc_str[OPC_LSL_W], 8);
          break;
        }
        case 2:
        {
          // ROXL.W <ea>
          memcpy(buf, opc_str[OPC_ROXL_W], 8);
          break;
        }
        case 3:
        {
          // ROL.W <ea>
          memcpy(buf, opc_str[OPC_ROL_W], 8);
          break;
        }
      }
      buf = get_ea_mode_str(buf + 8, opcode, SIZE_W);
      break;
    }
  }
  return buf;
}

/******************************************************************************/
/** dasm_group_F()                                                           **/
/** ------------------------------------------------------------------------ **/
/** Instruction group #F disassembling (line F)                              **/
/**   buf    : string buffer pointer                                         **/
/**   opcode : 16-bit 68000 opcode                                           **/
/******************************************************************************/

char *Trace68k::dasm_group_F(char *buf, vluint16_t opcode)
{
  // Line F
  memcpy(buf, opc_str[OPC_NONE], 8);
  buf = uhex_to_str(buf + 8, opcode, 4);

  return buf;
}

/******************************************************************************/
/** d68k_dasm()                                                              **/
/** ------------------------------------------------------------------------ **/
/** 68000 instruction disassembling                                          **/
/**   buf  : string buffer pointer                                           **/
/**   addr : 32-bit address                                                  **/
/******************************************************************************/

vluint32_t Trace68k::d68k_dasm(char *buf, vluint32_t addr)
{
  vluint16_t opcode;

  dasm_pc = addr + 2;
  opcode = read_mem_16(addr);
  switch (opcode >> 12)
  {
    case 0x0:
    {
      buf = dasm_group_0(buf, opcode);
      break;
    }
    case 0x1:
    {
      buf = dasm_group_1(buf, opcode);
      break;
    }
    case 0x2:
    {
      buf = dasm_group_2(buf, opcode);
      break;
    }
    case 0x3:
    {
      buf = dasm_group_3(buf, opcode);
      break;
    }
    case 0x4:
    {
      buf = dasm_group_4(buf, opcode);
      break;
    }
    case 0x5:
    {
      buf = dasm_group_5(buf, opcode);
      break;
    }
    case 0x6:
    {
      buf = dasm_group_6(buf, opcode);
      break;
    }
    case 0x7:
    {
      buf = dasm_group_7(buf, opcode);
      break;
    }
    case 0x8:
    {
      buf = dasm_group_8(buf, opcode);
      break;
    }
    case 0x9:
    {
      buf = dasm_group_9(buf, opcode);
      break;
    }
    case 0xA:
    {
      buf = dasm_group_A(buf, opcode);
      break;
    }
    case 0xB:
    {
      buf = dasm_group_B(buf, opcode);
      break;
    }
    case 0xC:
    {
      buf = dasm_group_C(buf, opcode);
      break;
    }
    case 0xD:
    {
      buf = dasm_group_D(buf, opcode);
      break;
    }
    case 0xE:
    {
      buf = dasm_group_E(buf, opcode);
      break;
    }
    case 0xF:
    {
      buf = dasm_group_F(buf, opcode);
      break;
    }
  }
  *buf++ = 0;

  return (dasm_pc - addr);
}
