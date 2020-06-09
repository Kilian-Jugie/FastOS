#pragma once

#include <FastDefines.h>
#include <FastConstants.h>

FASTOS_NAMESPACE_BEGIN

using reg32_t = uint32_t;
using reg16_t = uint16_t;
using reg8_t = uint8_t;

#define FASTOS_FLAGSUTILS_MAKEBASE(flag, tyn, rty) static bool flag(rty f) { return f | tyn##flag;}
#define FASTOS_FLAGSUTILS_MAKE(flag) FASTOS_FLAGSUTILS_MAKEBASE(flag, REG_FLAGS_MASK_, reg16_t)
#define FASTOS_FLAGSUTILS_MAKE_E(flag) FASTOS_FLAGSUTILS_MAKEBASE(flag, REG_EFLAGS_MASK_, reg32_t)

#define PTR_LNG(seg, off) ((seg << 4) | off)
#define PTR_REAL(arr) PTR_LNG(arr[1], arr[0])
#define PTR_SEG(addr) (((uint32_t)addr >> 4) & 0xF000)
#define PTR_OFF(addr) ((uint32_t)addr & 0xFFFF)

#define memset(d,c,l) __builtin_memset(d,c,l)
#ifdef __ASSEMBLY__
#define _AC(X,Y)	X
#define _AT(T,X)	X
#else
#define __AC(X,Y)	(X##Y)
#define _AC(X,Y)	__AC(X,Y)
#define _AT(T,X)	((T)(X))
#endif

#define _UL(x)		(_AC(x, UL))
#define _ULL(x)		(_AC(x, ULL))

#define _BITUL(x)	(_UL(1) << (x))
#define _BITULL(x)	(_ULL(1) << (x))
#define X86_EFLAGS_CF_BIT	0 /* Carry Flag */
#define X86_EFLAGS_CF		_BITUL(X86_EFLAGS_CF_BIT)



struct regs16_t {
    reg16_t di, si, bp, sp, bx, dx, cx, ax;
    reg16_t gs, fs, es, ds, eflags;
} __attribute__((packed));

struct regs32_t {
    union {
        struct {
            reg32_t edi;
            reg32_t esi;
            reg32_t ebp;
            reg32_t _esp;
            reg32_t ebx;
            reg32_t edx;
            reg32_t ecx;
            reg32_t eax;
            reg32_t _fsgs;
            reg32_t _dses;
            reg32_t eflags;
        };
        struct {
            reg16_t di, hdi;
            reg16_t si, hsi;
            reg16_t bp, hbp;
            reg16_t _sp, _hsp;
            reg16_t bx, hbx;
            reg16_t dx, hdx;
            reg16_t cx, hcx;
            reg16_t ax, hax;
            reg16_t gs, fs;
            reg16_t es, ds;
            reg16_t flags, hflags;
        };
        struct {
            reg8_t dil, dih, edi2, edi3;
            reg8_t sil, sih, esi2, esi3;
            reg8_t bpl, bph, ebp2, ebp3;
            reg8_t _spl, _sph, _esp2, _esp3;
            reg8_t bl, bh, ebx2, ebx3;
            reg8_t dl, dh, edx2, edx3;
            reg8_t cl, ch, ecx2, ecx3;
            reg8_t al, ah, eax2, eax3;
        };
    };
};

typedef struct regs16_t regs16_t;

extern "C" {
    extern void int32(unsigned char intnum, regs16_t* regs);
    extern void intcall(uint8_t int_no, const regs32_t* ireg, regs32_t* oreg);
    extern void get_mmap(int seg, int off);
    extern reg16_t get_ds();
    extern reg16_t get_fs();
    extern reg16_t get_gs();
}

class flagsutils {
public:
    FASTOS_FLAGSUTILS_MAKE(CF)
    FASTOS_FLAGSUTILS_MAKE(PF)
    FASTOS_FLAGSUTILS_MAKE(AF)
    FASTOS_FLAGSUTILS_MAKE(ZF)
    FASTOS_FLAGSUTILS_MAKE(SF)
    FASTOS_FLAGSUTILS_MAKE(TF)
    FASTOS_FLAGSUTILS_MAKE(IF)
    FASTOS_FLAGSUTILS_MAKE(DF)
    FASTOS_FLAGSUTILS_MAKE(OF)
};

class regutils {
public:
    static reg8_t low(reg16_t r) {
        return (reg8_t)r;
    }

    static reg8_t high(reg16_t r) {
        return (reg8_t)(r >> 8);
    }

    
};

static inline reg16_t gs(void)
{
    reg16_t seg;
    asm volatile("movw %%gs,%0" : "=rm" (seg));
    return seg;
}

static inline reg16_t fs(void)
{
    reg16_t seg;
    asm volatile("movw %%fs,%0" : "=rm" (seg));
    return seg;
}

static inline reg16_t ds(void)
{
    reg16_t seg;
    asm("mov %%ds,%0" : "=rm" (seg));
    return seg;
}

void initregs(regs32_t* reg)
{
    memset(reg, 0, sizeof(*reg));
    reg->eflags |= X86_EFLAGS_CF;
    reg->ds = get_ds();
    reg->es = get_ds();
    reg->fs = get_fs();
    reg->gs = get_gs();
}





//TODO: Assembly of this
class ASM {
public:
    //TODO: check support (doc ?)
    static bool set_a20(bool st) {
        regs16_t r;
        r.ax = st ? INT_A20_ON : INT_A20_OFF;
        int32(INT_BIOS_MEM, &r);
        r.ax = INT_A20_STATUS;
        int32(INT_BIOS_MEM, &r);
        return !!regutils::low(r.ax);
    }

    static bool new_set_a20(bool st) {
        regs32_t r;
        initregs(&r);
        r.ax = st ? INT_A20_ON : INT_A20_OFF;
        intcall(INT_BIOS_MEM, &r, &r);
        r.ax = INT_A20_STATUS;
        //intcall(INT_BIOS_MEM, &r, &r);
        return !!r.al;
    }

    
};




static inline void outb(uint16_t port, uint8_t val) {
    asm volatile ("outb %0, %1" : : "a"(val), "Nd"(port));
}

static inline uint8_t inb(uint16_t port) {
    uint8_t ret;
    asm volatile ("inb %1, %0"
        : "=a"(ret)
        : "Nd"(port));
    return ret;
}

static inline bool are_interrupts_enabled() {
    unsigned long flags;
    asm volatile ("pushf\n\t"
        "pop %0"
        : "=g"(flags));
    return flags & (1 << 9);
}

static inline unsigned long save_irqdisable(void) {
    unsigned long flags;
    asm volatile ("pushf\n\tcli\n\tpop %0" : "=r"(flags) : : "memory");
}

static inline void irqrestore(unsigned long flags) {
    asm("push %0\n\tpopf" : : "rm"(flags) : "memory", "cc");
}

static inline void cpuid(int code, uint32_t* a, uint32_t* d) {
    asm volatile ("cpuid" : "=a"(*a), "=d"(*d) : "0"(code) : "ebx", "ecx");
}

FASTOS_NAMESPACE_END