   1              		.file	"entry.cpp"
   2              		.intel_syntax noprefix
   3              		.text
   4              	.Ltext0:
   5              		.globl	_ZN6FastOS9bwlower32Ej
   7              	_ZN6FastOS9bwlower32Ej:
   8              	.LFB0:
   9              		.file 1 "../src/fastlib/maths.h"
   1:../src/fastlib/maths.h **** #pragma once
   2:../src/fastlib/maths.h **** #include <FastDefines.h>
   3:../src/fastlib/maths.h **** 
   4:../src/fastlib/maths.h **** FASTOS_NAMESPACE_BEGIN
   5:../src/fastlib/maths.h **** 
   6:../src/fastlib/maths.h **** uint16_t bwlower32(uint32_t nb) {
  10              		.loc 1 6 0
  11              		.cfi_startproc
  12 0000 55       		push	rbp
  13              		.cfi_def_cfa_offset 16
  14              		.cfi_offset 6, -16
  15 0001 4889E5   		mov	rbp, rsp
  16              		.cfi_def_cfa_register 6
  17 0004 4883EC08 		sub	rsp, 8
  18 0008 897DFC   		mov	DWORD PTR [rbp-4], edi
   7:../src/fastlib/maths.h **** 	return (uint16_t)nb;
  19              		.loc 1 7 0
  20 000b 8B45FC   		mov	eax, DWORD PTR [rbp-4]
   8:../src/fastlib/maths.h **** }
  21              		.loc 1 8 0
  22 000e C9       		leave
  23              		.cfi_restore 6
  24              		.cfi_def_cfa 7, 8
  25 000f C3       		ret
  26              		.cfi_endproc
  27              	.LFE0:
  29              		.globl	_ZN6FastOS10bwhigher32Ej
  31              	_ZN6FastOS10bwhigher32Ej:
  32              	.LFB1:
   9:../src/fastlib/maths.h **** 
  10:../src/fastlib/maths.h **** uint16_t bwhigher32(uint32_t nb) {
  33              		.loc 1 10 0
  34              		.cfi_startproc
  35 0010 55       		push	rbp
  36              		.cfi_def_cfa_offset 16
  37              		.cfi_offset 6, -16
  38 0011 4889E5   		mov	rbp, rsp
  39              		.cfi_def_cfa_register 6
  40 0014 4883EC08 		sub	rsp, 8
  41 0018 897DFC   		mov	DWORD PTR [rbp-4], edi
  11:../src/fastlib/maths.h **** 	return bwlower32(nb >> 16);
  42              		.loc 1 11 0
  43 001b 8B45FC   		mov	eax, DWORD PTR [rbp-4]
  44 001e C1E810   		shr	eax, 16
  45 0021 89C7     		mov	edi, eax
  46 0023 E8000000 		call	_ZN6FastOS9bwlower32Ej
  46      00
  12:../src/fastlib/maths.h **** }
  47              		.loc 1 12 0
  48 0028 C9       		leave
  49              		.cfi_restore 6
  50              		.cfi_def_cfa 7, 8
  51 0029 C3       		ret
  52              		.cfi_endproc
  53              	.LFE1:
  55              		.globl	_ZN6FastOS14tolittleendianEj
  57              	_ZN6FastOS14tolittleendianEj:
  58              	.LFB2:
  13:../src/fastlib/maths.h **** 
  14:../src/fastlib/maths.h **** uint32_t tolittleendian(uint32_t big) {
  59              		.loc 1 14 0
  60              		.cfi_startproc
  61 002a 55       		push	rbp
  62              		.cfi_def_cfa_offset 16
  63              		.cfi_offset 6, -16
  64 002b 4889E5   		mov	rbp, rsp
  65              		.cfi_def_cfa_register 6
  66 002e 4883EC08 		sub	rsp, 8
  67 0032 897DFC   		mov	DWORD PTR [rbp-4], edi
  15:../src/fastlib/maths.h **** 	return ((big >> 24) & 0xff) |
  68              		.loc 1 15 0
  69 0035 8B45FC   		mov	eax, DWORD PTR [rbp-4]
  70 0038 C1E818   		shr	eax, 24
  71 003b 89C2     		mov	edx, eax
  16:../src/fastlib/maths.h **** 		((big << 8) & 0xff0000) |
  72              		.loc 1 16 0
  73 003d 8B45FC   		mov	eax, DWORD PTR [rbp-4]
  74 0040 C1E008   		sal	eax, 8
  75 0043 250000FF 		and	eax, 16711680
  75      00
  15:../src/fastlib/maths.h **** 	return ((big >> 24) & 0xff) |
  76              		.loc 1 15 0
  77 0048 09C2     		or	edx, eax
  17:../src/fastlib/maths.h **** 		((big >> 8) & 0xff00) |
  78              		.loc 1 17 0
  79 004a 8B45FC   		mov	eax, DWORD PTR [rbp-4]
  80 004d C1E808   		shr	eax, 8
  81 0050 2500FF00 		and	eax, 65280
  81      00
  16:../src/fastlib/maths.h **** 		((big << 8) & 0xff0000) |
  82              		.loc 1 16 0
  83 0055 09C2     		or	edx, eax
  18:../src/fastlib/maths.h **** 		((big << 24) & 0xff000000);
  84              		.loc 1 18 0
  85 0057 8B45FC   		mov	eax, DWORD PTR [rbp-4]
  86 005a C1E018   		sal	eax, 24
  87 005d 09D0     		or	eax, edx
  19:../src/fastlib/maths.h **** }
  88              		.loc 1 19 0
  89 005f C9       		leave
  90              		.cfi_restore 6
  91              		.cfi_def_cfa 7, 8
  92 0060 C3       		ret
  93              		.cfi_endproc
  94              	.LFE2:
  96              		.section	.rodata
  97              		.align 32
 100              	_ZN6FastOSL15__log2_32_tab32E:
 101 0000 00000000 		.long	0
 102 0004 09000000 		.long	9
 103 0008 01000000 		.long	1
 104 000c 0A000000 		.long	10
 105 0010 0D000000 		.long	13
 106 0014 15000000 		.long	21
 107 0018 02000000 		.long	2
 108 001c 1D000000 		.long	29
 109 0020 0B000000 		.long	11
 110 0024 0E000000 		.long	14
 111 0028 10000000 		.long	16
 112 002c 12000000 		.long	18
 113 0030 16000000 		.long	22
 114 0034 19000000 		.long	25
 115 0038 03000000 		.long	3
 116 003c 1E000000 		.long	30
 117 0040 08000000 		.long	8
 118 0044 0C000000 		.long	12
 119 0048 14000000 		.long	20
 120 004c 1C000000 		.long	28
 121 0050 0F000000 		.long	15
 122 0054 11000000 		.long	17
 123 0058 18000000 		.long	24
 124 005c 07000000 		.long	7
 125 0060 13000000 		.long	19
 126 0064 1B000000 		.long	27
 127 0068 17000000 		.long	23
 128 006c 06000000 		.long	6
 129 0070 1A000000 		.long	26
 130 0074 05000000 		.long	5
 131 0078 04000000 		.long	4
 132 007c 1F000000 		.long	31
 133              		.text
 134              		.globl	_ZN6FastOS8isqrt_32Ej
 136              	_ZN6FastOS8isqrt_32Ej:
 137              	.LFB6:
  20:../src/fastlib/maths.h **** 
  21:../src/fastlib/maths.h **** inline constexpr uint32_t pow2_32(uint16_t n) {
  22:../src/fastlib/maths.h **** 	return 2 << n;
  23:../src/fastlib/maths.h **** }
  24:../src/fastlib/maths.h **** 
  25:../src/fastlib/maths.h **** inline constexpr uint32_t rtpt_32(uint32_t x) {
  26:../src/fastlib/maths.h **** 	--x;
  27:../src/fastlib/maths.h **** 	x |= x >> 1;
  28:../src/fastlib/maths.h **** 	x |= x >> 2;
  29:../src/fastlib/maths.h **** 	x |= x >> 4;
  30:../src/fastlib/maths.h **** 	x |= x >> 8;
  31:../src/fastlib/maths.h **** 	x |= x >> 16;
  32:../src/fastlib/maths.h **** 	++x;
  33:../src/fastlib/maths.h **** 	return x;
  34:../src/fastlib/maths.h **** }
  35:../src/fastlib/maths.h **** 
  36:../src/fastlib/maths.h **** constexpr uint32_t __log2_32_tab32[32] = {
  37:../src/fastlib/maths.h **** 	 0,  9,  1, 10, 13, 21,  2, 29,
  38:../src/fastlib/maths.h **** 	11, 14, 16, 18, 22, 25,  3, 30,
  39:../src/fastlib/maths.h **** 	 8, 12, 20, 28, 15, 17, 24,  7,
  40:../src/fastlib/maths.h **** 	19, 27, 23,  6, 26,  5,  4, 31 };
  41:../src/fastlib/maths.h **** 
  42:../src/fastlib/maths.h **** inline constexpr uint32_t log2_32(uint32_t value)
  43:../src/fastlib/maths.h **** {
  44:../src/fastlib/maths.h **** 	value |= value >> 1;
  45:../src/fastlib/maths.h **** 	value |= value >> 2;
  46:../src/fastlib/maths.h **** 	value |= value >> 4;
  47:../src/fastlib/maths.h **** 	value |= value >> 8;
  48:../src/fastlib/maths.h **** 	value |= value >> 16;
  49:../src/fastlib/maths.h **** 	return __log2_32_tab32[(uint32_t)(value * 0x07C4ACDD) >> 27];
  50:../src/fastlib/maths.h **** }
  51:../src/fastlib/maths.h **** 
  52:../src/fastlib/maths.h **** //https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Binary_numeral_system_.28base_2.2
  53:../src/fastlib/maths.h **** uint32_t isqrt_32(uint32_t num) {
 138              		.loc 1 53 0
 139              		.cfi_startproc
 140 0061 55       		push	rbp
 141              		.cfi_def_cfa_offset 16
 142              		.cfi_offset 6, -16
 143 0062 4889E5   		mov	rbp, rsp
 144              		.cfi_def_cfa_register 6
 145 0065 4883EC18 		sub	rsp, 24
 146 0069 897DEC   		mov	DWORD PTR [rbp-20], edi
  54:../src/fastlib/maths.h **** 	uint32_t res = 0;
 147              		.loc 1 54 0
 148 006c C745FC00 		mov	DWORD PTR [rbp-4], 0
 148      000000
  55:../src/fastlib/maths.h **** 	uint32_t bit = 1 << 14; // The second-to-top bit is set: 1 << 30 for 32 bits
 149              		.loc 1 55 0
 150 0073 C745F800 		mov	DWORD PTR [rbp-8], 16384
 150      400000
 151              	.L9:
  56:../src/fastlib/maths.h **** 
  57:../src/fastlib/maths.h **** 	// "bit" starts at the highest power of four <= the argument.
  58:../src/fastlib/maths.h **** 	while (bit > num)
 152              		.loc 1 58 0
 153 007a 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 154 007d 3B45EC   		cmp	eax, DWORD PTR [rbp-20]
 155 0080 7606     		jbe	.L8
  59:../src/fastlib/maths.h **** 		bit >>= 2;
 156              		.loc 1 59 0
 157 0082 C16DF802 		shr	DWORD PTR [rbp-8], 2
  58:../src/fastlib/maths.h **** 		bit >>= 2;
 158              		.loc 1 58 0
 159 0086 EBF2     		jmp	.L9
 160              	.L8:
  60:../src/fastlib/maths.h **** 
  61:../src/fastlib/maths.h **** 	while (bit != 0) {
 161              		.loc 1 61 0
 162 0088 837DF800 		cmp	DWORD PTR [rbp-8], 0
 163 008c 7432     		je	.L10
  62:../src/fastlib/maths.h **** 		if (num >= res + bit) {
 164              		.loc 1 62 0
 165 008e 8B55FC   		mov	edx, DWORD PTR [rbp-4]
 166 0091 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 167 0094 01D0     		add	eax, edx
 168 0096 3945EC   		cmp	DWORD PTR [rbp-20], eax
 169 0099 721C     		jb	.L11
  63:../src/fastlib/maths.h **** 			num -= res + bit;
 170              		.loc 1 63 0
 171 009b 8B55FC   		mov	edx, DWORD PTR [rbp-4]
 172 009e 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 173 00a1 01D0     		add	eax, edx
 174 00a3 2945EC   		sub	DWORD PTR [rbp-20], eax
  64:../src/fastlib/maths.h **** 			res = (res >> 1) + bit;
 175              		.loc 1 64 0
 176 00a6 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 177 00a9 D1E8     		shr	eax
 178 00ab 89C2     		mov	edx, eax
 179 00ad 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 180 00b0 01D0     		add	eax, edx
 181 00b2 8945FC   		mov	DWORD PTR [rbp-4], eax
 182 00b5 EB03     		jmp	.L12
 183              	.L11:
  65:../src/fastlib/maths.h **** 		}
  66:../src/fastlib/maths.h **** 		else
  67:../src/fastlib/maths.h **** 			res >>= 1;
 184              		.loc 1 67 0
 185 00b7 D16DFC   		shr	DWORD PTR [rbp-4]
 186              	.L12:
  68:../src/fastlib/maths.h **** 		bit >>= 2;
 187              		.loc 1 68 0
 188 00ba C16DF802 		shr	DWORD PTR [rbp-8], 2
  61:../src/fastlib/maths.h **** 		if (num >= res + bit) {
 189              		.loc 1 61 0
 190 00be EBC8     		jmp	.L8
 191              	.L10:
  69:../src/fastlib/maths.h **** 	}
  70:../src/fastlib/maths.h **** 	return res;
 192              		.loc 1 70 0
 193 00c0 8B45FC   		mov	eax, DWORD PTR [rbp-4]
  71:../src/fastlib/maths.h **** }
 194              		.loc 1 71 0
 195 00c3 C9       		leave
 196              		.cfi_restore 6
 197              		.cfi_def_cfa 7, 8
 198 00c4 C3       		ret
 199              		.cfi_endproc
 200              	.LFE6:
 202              		.section	.rodata
 203              		.align 8
 206              	_ZL8VGA_ADDR:
 207 0080 00800B80 		.quad	-2146729984
 207      FFFFFFFF 
 208              		.section	.text._ZN6FastOS9vga_utils10entryColorENS0_9vga_colorES1_,"axG",@progbits,_ZN6FastOS9vga_
 209              		.weak	_ZN6FastOS9vga_utils10entryColorENS0_9vga_colorES1_
 211              	_ZN6FastOS9vga_utils10entryColorENS0_9vga_colorES1_:
 212              	.LFB7:
 213              		.file 2 "../src/kernel/memory/../vgautils.h"
   1:../src/kernel/memory/../vgautils.h **** #ifndef _VGAUTILS_H_GUARD
   2:../src/kernel/memory/../vgautils.h **** #define _VGAUTILS_H_GUARD
   3:../src/kernel/memory/../vgautils.h **** 
   4:../src/kernel/memory/../vgautils.h **** #include <FastDefines.h>
   5:../src/kernel/memory/../vgautils.h **** #include <boot.h>
   6:../src/kernel/memory/../vgautils.h **** 
   7:../src/kernel/memory/../vgautils.h **** constexpr auto VGA_ADDR = KERNEL_VMA + 0x000b8000;
   8:../src/kernel/memory/../vgautils.h **** 
   9:../src/kernel/memory/../vgautils.h **** FASTOS_NAMESPACE_BEGIN
  10:../src/kernel/memory/../vgautils.h **** 	class vga_utils {
  11:../src/kernel/memory/../vgautils.h **** 	public:
  12:../src/kernel/memory/../vgautils.h **** 		static const unsigned long VGA_WIDTH = 80;
  13:../src/kernel/memory/../vgautils.h **** 		static const unsigned long VGA_HEIGHT = 25;
  14:../src/kernel/memory/../vgautils.h **** 
  15:../src/kernel/memory/../vgautils.h **** 		enum vga_color {
  16:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_BLACK = 0,
  17:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_BLUE = 1,
  18:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_GREEN = 2,
  19:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_CYAN = 3,
  20:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_RED = 4,
  21:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_MAGENTA = 5,
  22:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_BROWN = 6,
  23:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_LIGHT_GREY = 7,
  24:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_DARK_GREY = 8,
  25:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_LIGHT_BLUE = 9,
  26:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_LIGHT_GREEN = 10,
  27:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_LIGHT_CYAN = 11,
  28:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_LIGHT_RED = 12,
  29:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_LIGHT_MAGENTA = 13,
  30:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_LIGHT_BROWN = 14,
  31:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_WHITE = 15,
  32:../src/kernel/memory/../vgautils.h **** 		};
  33:../src/kernel/memory/../vgautils.h **** 
  34:../src/kernel/memory/../vgautils.h **** 		//Convert readable color format to vga-readable format
  35:../src/kernel/memory/../vgautils.h **** 		static inline unsigned char entryColor(enum vga_color fg, enum vga_color bg)
 214              		.loc 2 35 0
 215              		.cfi_startproc
 216 0000 55       		push	rbp
 217              		.cfi_def_cfa_offset 16
 218              		.cfi_offset 6, -16
 219 0001 4889E5   		mov	rbp, rsp
 220              		.cfi_def_cfa_register 6
 221 0004 4883EC08 		sub	rsp, 8
 222 0008 897DFC   		mov	DWORD PTR [rbp-4], edi
 223 000b 8975F8   		mov	DWORD PTR [rbp-8], esi
  36:../src/kernel/memory/../vgautils.h **** 		{
  37:../src/kernel/memory/../vgautils.h **** 			return fg | bg << 4;
 224              		.loc 2 37 0
 225 000e 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 226 0011 C1E004   		sal	eax, 4
 227 0014 89C2     		mov	edx, eax
 228 0016 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 229 0019 09D0     		or	eax, edx
  38:../src/kernel/memory/../vgautils.h **** 		}
 230              		.loc 2 38 0
 231 001b C9       		leave
 232              		.cfi_restore 6
 233              		.cfi_def_cfa 7, 8
 234 001c C3       		ret
 235              		.cfi_endproc
 236              	.LFE7:
 238              		.section	.text._ZN6FastOS9vga_utils5entryEhh,"axG",@progbits,_ZN6FastOS9vga_utils5entryEhh,comdat
 239              		.weak	_ZN6FastOS9vga_utils5entryEhh
 241              	_ZN6FastOS9vga_utils5entryEhh:
 242              	.LFB8:
  39:../src/kernel/memory/../vgautils.h **** 
  40:../src/kernel/memory/../vgautils.h **** 		//Convert a character to vga-readable format with color support
  41:../src/kernel/memory/../vgautils.h **** 		static inline unsigned short entry(unsigned char uc, unsigned char color)
 243              		.loc 2 41 0
 244              		.cfi_startproc
 245 0000 55       		push	rbp
 246              		.cfi_def_cfa_offset 16
 247              		.cfi_offset 6, -16
 248 0001 4889E5   		mov	rbp, rsp
 249              		.cfi_def_cfa_register 6
 250 0004 4883EC08 		sub	rsp, 8
 251 0008 89FA     		mov	edx, edi
 252 000a 89F0     		mov	eax, esi
 253 000c 8855FC   		mov	BYTE PTR [rbp-4], dl
 254 000f 8845F8   		mov	BYTE PTR [rbp-8], al
  42:../src/kernel/memory/../vgautils.h **** 		{
  43:../src/kernel/memory/../vgautils.h **** 			return (unsigned short)uc | (unsigned short)color << 8;
 255              		.loc 2 43 0
 256 0012 0FB645FC 		movzx	eax, BYTE PTR [rbp-4]
 257 0016 0FB655F8 		movzx	edx, BYTE PTR [rbp-8]
 258 001a C1E208   		sal	edx, 8
 259 001d 09D0     		or	eax, edx
  44:../src/kernel/memory/../vgautils.h **** 		}
 260              		.loc 2 44 0
 261 001f C9       		leave
 262              		.cfi_restore 6
 263              		.cfi_def_cfa 7, 8
 264 0020 C3       		ret
 265              		.cfi_endproc
 266              	.LFE8:
 268              		.text
 269              		.globl	_ZN6FastOS6strlenEPKc
 271              	_ZN6FastOS6strlenEPKc:
 272              	.LFB9:
 273              		.file 3 "../src/fastlib/string.h"
   1:../src/fastlib/string.h **** #pragma once
   2:../src/fastlib/string.h **** #include <FastDefines.h>
   3:../src/fastlib/string.h **** 
   4:../src/fastlib/string.h **** FASTOS_NAMESPACE_BEGIN
   5:../src/fastlib/string.h **** 
   6:../src/fastlib/string.h **** size_t strlen(const char* str) {
 274              		.loc 3 6 0
 275              		.cfi_startproc
 276 00c5 55       		push	rbp
 277              		.cfi_def_cfa_offset 16
 278              		.cfi_offset 6, -16
 279 00c6 4889E5   		mov	rbp, rsp
 280              		.cfi_def_cfa_register 6
 281 00c9 4883EC18 		sub	rsp, 24
 282 00cd 48897DE8 		mov	QWORD PTR [rbp-24], rdi
   7:../src/fastlib/string.h **** 	int r = 0;
 283              		.loc 3 7 0
 284 00d1 C745FC00 		mov	DWORD PTR [rbp-4], 0
 284      000000
 285              	.L20:
   8:../src/fastlib/string.h **** 	while (str[r++]) {}
 286              		.loc 3 8 0
 287 00d8 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 288 00db 8D5001   		lea	edx, [rax+1]
 289 00de 8955FC   		mov	DWORD PTR [rbp-4], edx
 290 00e1 4863D0   		movsx	rdx, eax
 291 00e4 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 292 00e8 4801D0   		add	rax, rdx
 293 00eb 0FB600   		movzx	eax, BYTE PTR [rax]
 294 00ee 84C0     		test	al, al
 295 00f0 0F95C0   		setne	al
 296 00f3 84C0     		test	al, al
 297 00f5 7402     		je	.L19
 298 00f7 EBDF     		jmp	.L20
 299              	.L19:
   9:../src/fastlib/string.h **** 	return r;
 300              		.loc 3 9 0
 301 00f9 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 302 00fc 4898     		cdqe
  10:../src/fastlib/string.h **** }
 303              		.loc 3 10 0
 304 00fe C9       		leave
 305              		.cfi_restore 6
 306              		.cfi_def_cfa 7, 8
 307 00ff C3       		ret
 308              		.cfi_endproc
 309              	.LFE9:
 311              		.globl	_ZN6FastOS6strcpyEPcPKcy
 313              	_ZN6FastOS6strcpyEPcPKcy:
 314              	.LFB10:
  11:../src/fastlib/string.h **** 
  12:../src/fastlib/string.h **** char* strcpy(char* dest, const char* from, size_t size) {
 315              		.loc 3 12 0
 316              		.cfi_startproc
 317 0100 55       		push	rbp
 318              		.cfi_def_cfa_offset 16
 319              		.cfi_offset 6, -16
 320 0101 4889E5   		mov	rbp, rsp
 321              		.cfi_def_cfa_register 6
 322 0104 4883EC18 		sub	rsp, 24
 323 0108 48897DF8 		mov	QWORD PTR [rbp-8], rdi
 324 010c 488975F0 		mov	QWORD PTR [rbp-16], rsi
 325 0110 488955E8 		mov	QWORD PTR [rbp-24], rdx
 326              	.L24:
  13:../src/fastlib/string.h **** 	do dest[size] = from[size]; while (size--);
 327              		.loc 3 13 0
 328 0114 488B55F0 		mov	rdx, QWORD PTR [rbp-16]
 329 0118 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 330 011c 4801D0   		add	rax, rdx
 331 011f 488B4DF8 		mov	rcx, QWORD PTR [rbp-8]
 332 0123 488B55E8 		mov	rdx, QWORD PTR [rbp-24]
 333 0127 4801CA   		add	rdx, rcx
 334 012a 0FB600   		movzx	eax, BYTE PTR [rax]
 335 012d 8802     		mov	BYTE PTR [rdx], al
 336 012f 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 337 0133 488D50FF 		lea	rdx, [rax-1]
 338 0137 488955E8 		mov	QWORD PTR [rbp-24], rdx
 339 013b 4885C0   		test	rax, rax
 340 013e 0F95C0   		setne	al
 341 0141 84C0     		test	al, al
 342 0143 7402     		je	.L23
 343 0145 EBCD     		jmp	.L24
 344              	.L23:
  14:../src/fastlib/string.h **** 	return dest;
 345              		.loc 3 14 0
 346 0147 488B45F8 		mov	rax, QWORD PTR [rbp-8]
  15:../src/fastlib/string.h **** }
 347              		.loc 3 15 0
 348 014b C9       		leave
 349              		.cfi_restore 6
 350              		.cfi_def_cfa 7, 8
 351 014c C3       		ret
 352              		.cfi_endproc
 353              	.LFE10:
 355              		.globl	_ZN6FastOS6strcmpEPKcS1_y
 357              	_ZN6FastOS6strcmpEPKcS1_y:
 358              	.LFB11:
  16:../src/fastlib/string.h **** 
  17:../src/fastlib/string.h **** //From: http://mgronhol.github.io/fast-strcmp/
  18:../src/fastlib/string.h **** int strcmp(const char* f, const char* s, size_t len) {
 359              		.loc 3 18 0
 360              		.cfi_startproc
 361 014d 55       		push	rbp
 362              		.cfi_def_cfa_offset 16
 363              		.cfi_offset 6, -16
 364 014e 4889E5   		mov	rbp, rsp
 365              		.cfi_def_cfa_register 6
 366 0151 4883EC48 		sub	rsp, 72
 367 0155 48897DC8 		mov	QWORD PTR [rbp-56], rdi
 368 0159 488975C0 		mov	QWORD PTR [rbp-64], rsi
 369 015d 488955B8 		mov	QWORD PTR [rbp-72], rdx
  19:../src/fastlib/string.h ****     int fast = len / sizeof(size_t) + 1;
 370              		.loc 3 19 0
 371 0161 488B45B8 		mov	rax, QWORD PTR [rbp-72]
 372 0165 48C1E803 		shr	rax, 3
 373 0169 83C001   		add	eax, 1
 374 016c 8945FC   		mov	DWORD PTR [rbp-4], eax
  20:../src/fastlib/string.h ****     int offset = (fast - 1) * sizeof(size_t);
 375              		.loc 3 20 0
 376 016f 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 377 0172 83E801   		sub	eax, 1
 378 0175 4898     		cdqe
 379 0177 C1E003   		sal	eax, 3
 380 017a 8945F8   		mov	DWORD PTR [rbp-8], eax
  21:../src/fastlib/string.h ****     int current_block = 0;
 381              		.loc 3 21 0
 382 017d C745F400 		mov	DWORD PTR [rbp-12], 0
 382      000000
  22:../src/fastlib/string.h **** 
  23:../src/fastlib/string.h ****     if (len <= sizeof(size_t)) { fast = 0; }
 383              		.loc 3 23 0
 384 0184 48837DB8 		cmp	QWORD PTR [rbp-72], 8
 384      08
 385 0189 7707     		ja	.L27
 386              		.loc 3 23 0 is_stmt 0 discriminator 1
 387 018b C745FC00 		mov	DWORD PTR [rbp-4], 0
 387      000000
 388              	.L27:
  24:../src/fastlib/string.h **** 
  25:../src/fastlib/string.h **** 
  26:../src/fastlib/string.h ****     size_t* lptr0 = (size_t*)f;
 389              		.loc 3 26 0 is_stmt 1
 390 0192 488B45C8 		mov	rax, QWORD PTR [rbp-56]
 391 0196 488945E0 		mov	QWORD PTR [rbp-32], rax
  27:../src/fastlib/string.h ****     size_t* lptr1 = (size_t*)s;
 392              		.loc 3 27 0
 393 019a 488B45C0 		mov	rax, QWORD PTR [rbp-64]
 394 019e 488945D8 		mov	QWORD PTR [rbp-40], rax
 395              	.L35:
  28:../src/fastlib/string.h **** 
  29:../src/fastlib/string.h ****     while (current_block < fast) {
 396              		.loc 3 29 0
 397 01a2 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 398 01a5 3B45FC   		cmp	eax, DWORD PTR [rbp-4]
 399 01a8 0F8DCA00 		jge	.L28
 399      0000
 400              	.LBB2:
 401              	.LBB3:
  30:../src/fastlib/string.h ****         if ((lptr0[current_block] ^ lptr1[current_block])) {
 402              		.loc 3 30 0
 403 01ae 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 404 01b1 4898     		cdqe
 405 01b3 488D14C5 		lea	rdx, [0+rax*8]
 405      00000000 
 406 01bb 488B45E0 		mov	rax, QWORD PTR [rbp-32]
 407 01bf 4801D0   		add	rax, rdx
 408 01c2 488B10   		mov	rdx, QWORD PTR [rax]
 409 01c5 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 410 01c8 4898     		cdqe
 411 01ca 488D0CC5 		lea	rcx, [0+rax*8]
 411      00000000 
 412 01d2 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 413 01d6 4801C8   		add	rax, rcx
 414 01d9 488B00   		mov	rax, QWORD PTR [rax]
 415 01dc 4839C2   		cmp	rdx, rax
 416 01df 0F848A00 		je	.L29
 416      0000
 417              	.LBB4:
  31:../src/fastlib/string.h ****             size_t pos;
  32:../src/fastlib/string.h ****             for (pos = current_block * sizeof(size_t); pos < len; ++pos) {
 418              		.loc 3 32 0
 419 01e5 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 420 01e8 4898     		cdqe
 421 01ea 48C1E003 		sal	rax, 3
 422 01ee 488945E8 		mov	QWORD PTR [rbp-24], rax
 423              	.L34:
 424              		.loc 3 32 0 is_stmt 0 discriminator 1
 425 01f2 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 426 01f6 483B45B8 		cmp	rax, QWORD PTR [rbp-72]
 427 01fa 7373     		jnb	.L29
  33:../src/fastlib/string.h ****                 if ((f[pos] ^ s[pos]) || (f[pos] == 0) || (s[pos] == 0)) {
 428              		.loc 3 33 0 is_stmt 1
 429 01fc 488B55C8 		mov	rdx, QWORD PTR [rbp-56]
 430 0200 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 431 0204 4801D0   		add	rax, rdx
 432 0207 0FB610   		movzx	edx, BYTE PTR [rax]
 433 020a 488B4DC0 		mov	rcx, QWORD PTR [rbp-64]
 434 020e 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 435 0212 4801C8   		add	rax, rcx
 436 0215 0FB600   		movzx	eax, BYTE PTR [rax]
 437 0218 38C2     		cmp	dl, al
 438 021a 7524     		jne	.L31
 439              		.loc 3 33 0 is_stmt 0 discriminator 1
 440 021c 488B55C8 		mov	rdx, QWORD PTR [rbp-56]
 441 0220 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 442 0224 4801D0   		add	rax, rdx
 443 0227 0FB600   		movzx	eax, BYTE PTR [rax]
 444 022a 84C0     		test	al, al
 445 022c 7412     		je	.L31
 446              		.loc 3 33 0 discriminator 2
 447 022e 488B55C0 		mov	rdx, QWORD PTR [rbp-64]
 448 0232 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 449 0236 4801D0   		add	rax, rdx
 450 0239 0FB600   		movzx	eax, BYTE PTR [rax]
 451 023c 84C0     		test	al, al
 452 023e 7528     		jne	.L32
 453              	.L31:
  34:../src/fastlib/string.h ****                     return  (int)((unsigned char)f[pos] - (unsigned char)s[pos]);
 454              		.loc 3 34 0 is_stmt 1
 455 0240 488B55C8 		mov	rdx, QWORD PTR [rbp-56]
 456 0244 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 457 0248 4801D0   		add	rax, rdx
 458 024b 0FB600   		movzx	eax, BYTE PTR [rax]
 459 024e 0FB6D0   		movzx	edx, al
 460 0251 488B4DC0 		mov	rcx, QWORD PTR [rbp-64]
 461 0255 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 462 0259 4801C8   		add	rax, rcx
 463 025c 0FB600   		movzx	eax, BYTE PTR [rax]
 464 025f 0FB6C0   		movzx	eax, al
 465 0262 29C2     		sub	edx, eax
 466 0264 89D0     		mov	eax, edx
 467 0266 EB76     		jmp	.L33
 468              	.L32:
  32:../src/fastlib/string.h ****                 if ((f[pos] ^ s[pos]) || (f[pos] == 0) || (s[pos] == 0)) {
 469              		.loc 3 32 0 discriminator 2
 470 0268 488345E8 		add	QWORD PTR [rbp-24], 1
 470      01
 471 026d EB83     		jmp	.L34
 472              	.L29:
 473              	.LBE4:
 474              	.LBE3:
  35:../src/fastlib/string.h ****                 }
  36:../src/fastlib/string.h ****             }
  37:../src/fastlib/string.h ****         }
  38:../src/fastlib/string.h **** 
  39:../src/fastlib/string.h ****         ++current_block;
 475              		.loc 3 39 0
 476 026f 8345F401 		add	DWORD PTR [rbp-12], 1
 477              	.LBE2:
  29:../src/fastlib/string.h ****         if ((lptr0[current_block] ^ lptr1[current_block])) {
 478              		.loc 3 29 0
 479 0273 E92AFFFF 		jmp	.L35
 479      FF
 480              	.L28:
  40:../src/fastlib/string.h ****     }
  41:../src/fastlib/string.h ****     while (len > offset) {
 481              		.loc 3 41 0
 482 0278 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 483 027b 4898     		cdqe
 484 027d 483945B8 		cmp	QWORD PTR [rbp-72], rax
 485 0281 7656     		jbe	.L36
  42:../src/fastlib/string.h ****         if ((f[offset] ^ s[offset])) {
 486              		.loc 3 42 0
 487 0283 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 488 0286 4863D0   		movsx	rdx, eax
 489 0289 488B45C8 		mov	rax, QWORD PTR [rbp-56]
 490 028d 4801D0   		add	rax, rdx
 491 0290 0FB610   		movzx	edx, BYTE PTR [rax]
 492 0293 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 493 0296 4863C8   		movsx	rcx, eax
 494 0299 488B45C0 		mov	rax, QWORD PTR [rbp-64]
 495 029d 4801C8   		add	rax, rcx
 496 02a0 0FB600   		movzx	eax, BYTE PTR [rax]
 497 02a3 38C2     		cmp	dl, al
 498 02a5 742C     		je	.L37
  43:../src/fastlib/string.h ****             return (int)((unsigned char)f[offset] - (unsigned char)s[offset]);
 499              		.loc 3 43 0
 500 02a7 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 501 02aa 4863D0   		movsx	rdx, eax
 502 02ad 488B45C8 		mov	rax, QWORD PTR [rbp-56]
 503 02b1 4801D0   		add	rax, rdx
 504 02b4 0FB600   		movzx	eax, BYTE PTR [rax]
 505 02b7 0FB6D0   		movzx	edx, al
 506 02ba 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 507 02bd 4863C8   		movsx	rcx, eax
 508 02c0 488B45C0 		mov	rax, QWORD PTR [rbp-64]
 509 02c4 4801C8   		add	rax, rcx
 510 02c7 0FB600   		movzx	eax, BYTE PTR [rax]
 511 02ca 0FB6C0   		movzx	eax, al
 512 02cd 29C2     		sub	edx, eax
 513 02cf 89D0     		mov	eax, edx
 514 02d1 EB0B     		jmp	.L33
 515              	.L37:
  44:../src/fastlib/string.h ****         }
  45:../src/fastlib/string.h ****         ++offset;
 516              		.loc 3 45 0
 517 02d3 8345F801 		add	DWORD PTR [rbp-8], 1
  41:../src/fastlib/string.h ****         if ((f[offset] ^ s[offset])) {
 518              		.loc 3 41 0
 519 02d7 EB9F     		jmp	.L28
 520              	.L36:
  46:../src/fastlib/string.h ****     }
  47:../src/fastlib/string.h ****     return 0;
 521              		.loc 3 47 0
 522 02d9 B8000000 		mov	eax, 0
 522      00
 523              	.L33:
  48:../src/fastlib/string.h **** }
 524              		.loc 3 48 0
 525 02de C9       		leave
 526              		.cfi_restore 6
 527              		.cfi_def_cfa 7, 8
 528 02df C3       		ret
 529              		.cfi_endproc
 530              	.LFE11:
 532              		.globl	_ZN6FastOS6lengthEPc
 534              	_ZN6FastOS6lengthEPc:
 535              	.LFB12:
 536              		.file 4 "../src/fastlib/stdlib.h"
   1:../src/fastlib/stdlib.h **** #pragma once
   2:../src/fastlib/stdlib.h **** #include <FastDefines.h>
   3:../src/fastlib/stdlib.h **** 
   4:../src/fastlib/stdlib.h **** FASTOS_NAMESPACE_BEGIN
   5:../src/fastlib/stdlib.h **** 
   6:../src/fastlib/stdlib.h **** int length(char* ch) {
 537              		.loc 4 6 0
 538              		.cfi_startproc
 539 02e0 55       		push	rbp
 540              		.cfi_def_cfa_offset 16
 541              		.cfi_offset 6, -16
 542 02e1 4889E5   		mov	rbp, rsp
 543              		.cfi_def_cfa_register 6
 544 02e4 4883EC18 		sub	rsp, 24
 545 02e8 48897DE8 		mov	QWORD PTR [rbp-24], rdi
   7:../src/fastlib/stdlib.h **** 	int r = 0;
 546              		.loc 4 7 0
 547 02ec C745FC00 		mov	DWORD PTR [rbp-4], 0
 547      000000
 548              	.L40:
   8:../src/fastlib/stdlib.h **** 	while(ch[r++]) {}
 549              		.loc 4 8 0
 550 02f3 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 551 02f6 8D5001   		lea	edx, [rax+1]
 552 02f9 8955FC   		mov	DWORD PTR [rbp-4], edx
 553 02fc 4863D0   		movsx	rdx, eax
 554 02ff 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 555 0303 4801D0   		add	rax, rdx
 556 0306 0FB600   		movzx	eax, BYTE PTR [rax]
 557 0309 84C0     		test	al, al
 558 030b 0F95C0   		setne	al
 559 030e 84C0     		test	al, al
 560 0310 7402     		je	.L39
 561 0312 EBDF     		jmp	.L40
 562              	.L39:
   9:../src/fastlib/stdlib.h **** 	return r;
 563              		.loc 4 9 0
 564 0314 8B45FC   		mov	eax, DWORD PTR [rbp-4]
  10:../src/fastlib/stdlib.h **** }
 565              		.loc 4 10 0
 566 0317 C9       		leave
 567              		.cfi_restore 6
 568              		.cfi_def_cfa 7, 8
 569 0318 C3       		ret
 570              		.cfi_endproc
 571              	.LFE12:
 573              		.globl	_ZN6FastOS4itoaEiPci
 575              	_ZN6FastOS4itoaEiPci:
 576              	.LFB14:
  11:../src/fastlib/stdlib.h **** 
  12:../src/fastlib/stdlib.h **** template<typename _Ty>_Ty* arrayCopy(_Ty* dest, const _Ty* from, size_t size) {
  13:../src/fastlib/stdlib.h **** 	do dest[size] = from[size]; while (size--);
  14:../src/fastlib/stdlib.h **** 	return dest;
  15:../src/fastlib/stdlib.h **** }
  16:../src/fastlib/stdlib.h **** 
  17:../src/fastlib/stdlib.h **** int itoa(int value, char* sp, int radix)
  18:../src/fastlib/stdlib.h **** {
 577              		.loc 4 18 0
 578              		.cfi_startproc
 579 0319 55       		push	rbp
 580              		.cfi_def_cfa_offset 16
 581              		.cfi_offset 6, -16
 582 031a 4889E5   		mov	rbp, rsp
 583              		.cfi_def_cfa_register 6
 584 031d 4883EC40 		sub	rsp, 64
 585 0321 897DCC   		mov	DWORD PTR [rbp-52], edi
 586 0324 488975C0 		mov	QWORD PTR [rbp-64], rsi
 587 0328 8955C8   		mov	DWORD PTR [rbp-56], edx
  19:../src/fastlib/stdlib.h ****     char tmp[16];// be careful with the length of the buffer
  20:../src/fastlib/stdlib.h ****     char* tp = tmp;
 588              		.loc 4 20 0
 589 032b 488D45D0 		lea	rax, [rbp-48]
 590 032f 488945F8 		mov	QWORD PTR [rbp-8], rax
  21:../src/fastlib/stdlib.h ****     int i;
  22:../src/fastlib/stdlib.h ****     unsigned v;
  23:../src/fastlib/stdlib.h **** 
  24:../src/fastlib/stdlib.h ****     int sign = (radix == 10 && value < 0);
 591              		.loc 4 24 0
 592 0333 837DC80A 		cmp	DWORD PTR [rbp-56], 10
 593 0337 750D     		jne	.L43
 594              		.loc 4 24 0 is_stmt 0 discriminator 1
 595 0339 837DCC00 		cmp	DWORD PTR [rbp-52], 0
 596 033d 7907     		jns	.L43
 597              		.loc 4 24 0 discriminator 3
 598 033f B8010000 		mov	eax, 1
 598      00
 599 0344 EB05     		jmp	.L44
 600              	.L43:
 601              		.loc 4 24 0 discriminator 4
 602 0346 B8000000 		mov	eax, 0
 602      00
 603              	.L44:
 604              		.loc 4 24 0 discriminator 6
 605 034b 0FB6C0   		movzx	eax, al
 606 034e 8945EC   		mov	DWORD PTR [rbp-20], eax
  25:../src/fastlib/stdlib.h ****     if (sign)
 607              		.loc 4 25 0 is_stmt 1 discriminator 6
 608 0351 837DEC00 		cmp	DWORD PTR [rbp-20], 0
 609 0355 740A     		je	.L45
  26:../src/fastlib/stdlib.h ****         v = -value;
 610              		.loc 4 26 0
 611 0357 8B45CC   		mov	eax, DWORD PTR [rbp-52]
 612 035a F7D8     		neg	eax
 613 035c 8945F4   		mov	DWORD PTR [rbp-12], eax
 614 035f EB06     		jmp	.L51
 615              	.L45:
  27:../src/fastlib/stdlib.h ****     else
  28:../src/fastlib/stdlib.h ****         v = (unsigned)value;
 616              		.loc 4 28 0
 617 0361 8B45CC   		mov	eax, DWORD PTR [rbp-52]
 618 0364 8945F4   		mov	DWORD PTR [rbp-12], eax
 619              	.L51:
  29:../src/fastlib/stdlib.h **** 
  30:../src/fastlib/stdlib.h ****     while (v || tp == tmp)
 620              		.loc 4 30 0
 621 0367 837DF400 		cmp	DWORD PTR [rbp-12], 0
 622 036b 750A     		jne	.L47
 623              		.loc 4 30 0 is_stmt 0 discriminator 1
 624 036d 488D45D0 		lea	rax, [rbp-48]
 625 0371 483945F8 		cmp	QWORD PTR [rbp-8], rax
 626 0375 7558     		jne	.L48
 627              	.L47:
  31:../src/fastlib/stdlib.h ****     {
  32:../src/fastlib/stdlib.h ****         i = v % radix;
 628              		.loc 4 32 0 is_stmt 1
 629 0377 8B4DC8   		mov	ecx, DWORD PTR [rbp-56]
 630 037a 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 631 037d BA000000 		mov	edx, 0
 631      00
 632 0382 F7F1     		div	ecx
 633 0384 89D0     		mov	eax, edx
 634 0386 8945E8   		mov	DWORD PTR [rbp-24], eax
  33:../src/fastlib/stdlib.h ****         v /= radix; // v/=radix uses less CPU clocks than v=v/radix does
 635              		.loc 4 33 0
 636 0389 8B75C8   		mov	esi, DWORD PTR [rbp-56]
 637 038c 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 638 038f BA000000 		mov	edx, 0
 638      00
 639 0394 F7F6     		div	esi
 640 0396 8945F4   		mov	DWORD PTR [rbp-12], eax
  34:../src/fastlib/stdlib.h ****         if (i < 10)
 641              		.loc 4 34 0
 642 0399 837DE809 		cmp	DWORD PTR [rbp-24], 9
 643 039d 7F18     		jg	.L49
  35:../src/fastlib/stdlib.h ****             *tp++ = i + '0';
 644              		.loc 4 35 0
 645 039f 8B45E8   		mov	eax, DWORD PTR [rbp-24]
 646 03a2 83C030   		add	eax, 48
 647 03a5 89C1     		mov	ecx, eax
 648 03a7 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 649 03ab 488D5001 		lea	rdx, [rax+1]
 650 03af 488955F8 		mov	QWORD PTR [rbp-8], rdx
 651 03b3 8808     		mov	BYTE PTR [rax], cl
 652 03b5 EBB0     		jmp	.L51
 653              	.L49:
  36:../src/fastlib/stdlib.h ****         else
  37:../src/fastlib/stdlib.h ****             *tp++ = i + 'a' - 10;
 654              		.loc 4 37 0
 655 03b7 8B45E8   		mov	eax, DWORD PTR [rbp-24]
 656 03ba 83C057   		add	eax, 87
 657 03bd 89C1     		mov	ecx, eax
 658 03bf 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 659 03c3 488D5001 		lea	rdx, [rax+1]
 660 03c7 488955F8 		mov	QWORD PTR [rbp-8], rdx
 661 03cb 8808     		mov	BYTE PTR [rax], cl
  30:../src/fastlib/stdlib.h ****     {
 662              		.loc 4 30 0
 663 03cd EB98     		jmp	.L51
 664              	.L48:
  38:../src/fastlib/stdlib.h ****     }
  39:../src/fastlib/stdlib.h **** 
  40:../src/fastlib/stdlib.h ****     int len = tp - tmp;
 665              		.loc 4 40 0
 666 03cf 488B55F8 		mov	rdx, QWORD PTR [rbp-8]
 667 03d3 488D45D0 		lea	rax, [rbp-48]
 668 03d7 4829C2   		sub	rdx, rax
 669 03da 4889D0   		mov	rax, rdx
 670 03dd 8945F0   		mov	DWORD PTR [rbp-16], eax
  41:../src/fastlib/stdlib.h **** 
  42:../src/fastlib/stdlib.h ****     if (sign)
 671              		.loc 4 42 0
 672 03e0 837DEC00 		cmp	DWORD PTR [rbp-20], 0
 673 03e4 7413     		je	.L54
  43:../src/fastlib/stdlib.h ****     {
  44:../src/fastlib/stdlib.h ****         *sp++ = '-';
 674              		.loc 4 44 0
 675 03e6 488B45C0 		mov	rax, QWORD PTR [rbp-64]
 676 03ea 488D5001 		lea	rdx, [rax+1]
 677 03ee 488955C0 		mov	QWORD PTR [rbp-64], rdx
 678 03f2 C6002D   		mov	BYTE PTR [rax], 45
  45:../src/fastlib/stdlib.h ****         len++;
 679              		.loc 4 45 0
 680 03f5 8345F001 		add	DWORD PTR [rbp-16], 1
 681              	.L54:
  46:../src/fastlib/stdlib.h ****     }
  47:../src/fastlib/stdlib.h **** 
  48:../src/fastlib/stdlib.h ****     while (tp > tmp)
 682              		.loc 4 48 0
 683 03f9 488D45D0 		lea	rax, [rbp-48]
 684 03fd 483945F8 		cmp	QWORD PTR [rbp-8], rax
 685 0401 761C     		jbe	.L53
  49:../src/fastlib/stdlib.h ****         *sp++ = *--tp;
 686              		.loc 4 49 0
 687 0403 48836DF8 		sub	QWORD PTR [rbp-8], 1
 687      01
 688 0408 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 689 040c 0FB610   		movzx	edx, BYTE PTR [rax]
 690 040f 488B45C0 		mov	rax, QWORD PTR [rbp-64]
 691 0413 488D4801 		lea	rcx, [rax+1]
 692 0417 48894DC0 		mov	QWORD PTR [rbp-64], rcx
 693 041b 8810     		mov	BYTE PTR [rax], dl
  48:../src/fastlib/stdlib.h ****         *sp++ = *--tp;
 694              		.loc 4 48 0
 695 041d EBDA     		jmp	.L54
 696              	.L53:
  50:../src/fastlib/stdlib.h **** 
  51:../src/fastlib/stdlib.h ****     return len;
 697              		.loc 4 51 0
 698 041f 8B45F0   		mov	eax, DWORD PTR [rbp-16]
  52:../src/fastlib/stdlib.h **** }
 699              		.loc 4 52 0
 700 0422 C9       		leave
 701              		.cfi_restore 6
 702              		.cfi_def_cfa 7, 8
 703 0423 C3       		ret
 704              		.cfi_endproc
 705              	.LFE14:
 707              		.data
 708              		.align 16
 711              	_ZZN6FastOS5uitoaEjiE5decim:
 712 0000 30313233 		.string	"0123456789ABCDEF"
 712      34353637 
 712      38394142 
 712      43444546 
 712      00
 713              		.local	_ZZN6FastOS5uitoaEjiE6buffer
 714              		.comm	_ZZN6FastOS5uitoaEjiE6buffer,34,32
 715              		.text
 716              		.globl	_ZN6FastOS5uitoaEji
 718              	_ZN6FastOS5uitoaEji:
 719              	.LFB15:
  53:../src/fastlib/stdlib.h **** 
  54:../src/fastlib/stdlib.h **** char* uitoa(uint32_t num, int base) {
 720              		.loc 4 54 0
 721              		.cfi_startproc
 722 0424 55       		push	rbp
 723              		.cfi_def_cfa_offset 16
 724              		.cfi_offset 6, -16
 725 0425 4889E5   		mov	rbp, rsp
 726              		.cfi_def_cfa_register 6
 727 0428 4883EC18 		sub	rsp, 24
 728 042c 897DEC   		mov	DWORD PTR [rbp-20], edi
 729 042f 8975E8   		mov	DWORD PTR [rbp-24], esi
  55:../src/fastlib/stdlib.h **** 	static char decim[] = "0123456789ABCDEF";
  56:../src/fastlib/stdlib.h **** 	static char buffer[34];
  57:../src/fastlib/stdlib.h **** 	char* ptr;
  58:../src/fastlib/stdlib.h **** 
  59:../src/fastlib/stdlib.h **** 	ptr = &buffer[33];
 730              		.loc 4 59 0
 731 0432 48C745F8 		mov	QWORD PTR [rbp-8], OFFSET FLAT:_ZZN6FastOS5uitoaEjiE6buffer+33
 731      00000000 
  60:../src/fastlib/stdlib.h **** 	*ptr = '\0';
 732              		.loc 4 60 0
 733 043a 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 734 043e C60000   		mov	BYTE PTR [rax], 0
 735              	.L58:
  61:../src/fastlib/stdlib.h **** 
  62:../src/fastlib/stdlib.h **** 	do
  63:../src/fastlib/stdlib.h **** 	{
  64:../src/fastlib/stdlib.h **** 		*--ptr = decim[num % base];
 736              		.loc 4 64 0
 737 0441 8B4DE8   		mov	ecx, DWORD PTR [rbp-24]
 738 0444 8B45EC   		mov	eax, DWORD PTR [rbp-20]
 739 0447 BA000000 		mov	edx, 0
 739      00
 740 044c F7F1     		div	ecx
 741 044e 89D0     		mov	eax, edx
 742 0450 89C0     		mov	eax, eax
 743 0452 0FB69000 		movzx	edx, BYTE PTR _ZZN6FastOS5uitoaEjiE5decim[rax]
 743      000000
 744 0459 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 745 045d 4883E801 		sub	rax, 1
 746 0461 488945F8 		mov	QWORD PTR [rbp-8], rax
 747 0465 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 748 0469 8810     		mov	BYTE PTR [rax], dl
  65:../src/fastlib/stdlib.h **** 		num /= base;
 749              		.loc 4 65 0
 750 046b 8B75E8   		mov	esi, DWORD PTR [rbp-24]
 751 046e 8B45EC   		mov	eax, DWORD PTR [rbp-20]
 752 0471 BA000000 		mov	edx, 0
 752      00
 753 0476 F7F6     		div	esi
 754 0478 8945EC   		mov	DWORD PTR [rbp-20], eax
  66:../src/fastlib/stdlib.h **** 	} while (num != 0);
 755              		.loc 4 66 0
 756 047b 837DEC00 		cmp	DWORD PTR [rbp-20], 0
 757 047f 7402     		je	.L57
  62:../src/fastlib/stdlib.h **** 	{
 758              		.loc 4 62 0
 759 0481 EBBE     		jmp	.L58
 760              	.L57:
  67:../src/fastlib/stdlib.h **** 
  68:../src/fastlib/stdlib.h **** 	return(ptr);
 761              		.loc 4 68 0
 762 0483 488B45F8 		mov	rax, QWORD PTR [rbp-8]
  69:../src/fastlib/stdlib.h **** }
 763              		.loc 4 69 0
 764 0487 C9       		leave
 765              		.cfi_restore 6
 766              		.cfi_def_cfa 7, 8
 767 0488 C3       		ret
 768              		.cfi_endproc
 769              	.LFE15:
 771              		.section	.text._ZN6FastOS17FastVGATextBufferC2EPtyy,"axG",@progbits,_ZN6FastOS17FastVGATextBufferC
 772              		.align 2
 773              		.weak	_ZN6FastOS17FastVGATextBufferC2EPtyy
 775              	_ZN6FastOS17FastVGATextBufferC2EPtyy:
 776              	.LFB19:
 777              		.file 5 "../src/kernel/memory/../graphics/FastVGATextBuffer.h"
   1:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** #pragma once
   2:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** #include <FastDefines.h>
   3:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** #include <string.h>
   4:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** #include <stdlib.h>
   5:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 
   6:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** FASTOS_NAMESPACE_BEGIN
   7:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 
   8:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 
   9:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 
  10:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** class FastVGATextBuffer {
  11:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 	size_t m_SizeX;
  12:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 	size_t m_SizeY;
  13:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 	uint16_t* m_VGA;
  14:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 	uint16_t* m_VirtualVGA;
  15:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 	size_t m_IndexY;
  16:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 
  17:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 	vga_utils::vga_color m_ColorBackground, m_ColorForeground;
  18:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 	uint8_t m_ColorGeneral;
  19:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** public:
  20:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 	FastVGATextBuffer(uint16_t* vga, size_t sizeX, size_t sizeY)
 778              		.loc 5 20 0
 779              		.cfi_startproc
 780 0000 55       		push	rbp
 781              		.cfi_def_cfa_offset 16
 782              		.cfi_offset 6, -16
 783 0001 4889E5   		mov	rbp, rsp
 784              		.cfi_def_cfa_register 6
 785 0004 4883EC20 		sub	rsp, 32
 786 0008 48897DF8 		mov	QWORD PTR [rbp-8], rdi
 787 000c 488975F0 		mov	QWORD PTR [rbp-16], rsi
 788 0010 488955E8 		mov	QWORD PTR [rbp-24], rdx
 789 0014 48894DE0 		mov	QWORD PTR [rbp-32], rcx
 790              	.LBB5:
  21:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 		: m_VGA{ vga }, m_SizeX{ sizeX }, m_SizeY{ sizeY },
  22:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 		m_VirtualVGA{ (uint16_t*)(vga - sizeof(uint16_t)*(m_SizeX * (m_SizeY - 1))) },
  23:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 		m_IndexY{ 0 }, m_ColorBackground{ vga_utils::VGA_COLOR_BLACK },
  24:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 		m_ColorForeground{ vga_utils::VGA_COLOR_LIGHT_GREY },
  25:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 		m_ColorGeneral{ vga_utils::entryColor(m_ColorForeground, m_ColorBackground) } {
 791              		.loc 5 25 0
 792 0018 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 793 001c 488B55E8 		mov	rdx, QWORD PTR [rbp-24]
 794 0020 488910   		mov	QWORD PTR [rax], rdx
 795 0023 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 796 0027 488B55E0 		mov	rdx, QWORD PTR [rbp-32]
 797 002b 48895008 		mov	QWORD PTR [rax+8], rdx
 798 002f 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 799 0033 488B55F0 		mov	rdx, QWORD PTR [rbp-16]
 800 0037 48895010 		mov	QWORD PTR [rax+16], rdx
  22:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 		m_IndexY{ 0 }, m_ColorBackground{ vga_utils::VGA_COLOR_BLACK },
 801              		.loc 5 22 0
 802 003b 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 803 003f 488B10   		mov	rdx, QWORD PTR [rax]
 804 0042 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 805 0046 488B4008 		mov	rax, QWORD PTR [rax+8]
 806 004a 48C1E002 		sal	rax, 2
 807 004e 4883E804 		sub	rax, 4
 808 0052 480FAFC2 		imul	rax, rdx
 809 0056 48F7D8   		neg	rax
 810 0059 4889C2   		mov	rdx, rax
 811 005c 488B45F0 		mov	rax, QWORD PTR [rbp-16]
 812 0060 4801C2   		add	rdx, rax
 813              		.loc 5 25 0
 814 0063 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 815 0067 48895018 		mov	QWORD PTR [rax+24], rdx
 816 006b 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 817 006f 48C74020 		mov	QWORD PTR [rax+32], 0
 817      00000000 
 818 0077 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 819 007b C7402800 		mov	DWORD PTR [rax+40], 0
 819      000000
 820 0082 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 821 0086 C7402C07 		mov	DWORD PTR [rax+44], 7
 821      000000
 822 008d 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 823 0091 8B5028   		mov	edx, DWORD PTR [rax+40]
 824 0094 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 825 0098 8B402C   		mov	eax, DWORD PTR [rax+44]
 826 009b 89D6     		mov	esi, edx
 827 009d 89C7     		mov	edi, eax
 828 009f E8000000 		call	_ZN6FastOS9vga_utils10entryColorENS0_9vga_colorES1_
 828      00
 829 00a4 89C2     		mov	edx, eax
 830 00a6 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 831 00aa 885030   		mov	BYTE PTR [rax+48], dl
 832              	.LBE5:
  26:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 
  27:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 	}
 833              		.loc 5 27 0
 834 00ad 90       		nop
 835 00ae C9       		leave
 836              		.cfi_restore 6
 837              		.cfi_def_cfa 7, 8
 838 00af C3       		ret
 839              		.cfi_endproc
 840              	.LFE19:
 842              		.weak	_ZN6FastOS17FastVGATextBufferC1EPtyy
 843              		.set	_ZN6FastOS17FastVGATextBufferC1EPtyy,_ZN6FastOS17FastVGATextBufferC2EPtyy
 844              		.section	.rodata
 845              		.align 4
 848              	_ZN6FastOSL12INT_BIOS_MEME:
 849 0088 15000000 		.long	21
 850              		.align 4
 853              	_ZN6FastOSL11INT_A20_OFFE:
 854 008c 00240000 		.long	9216
 855              		.align 4
 858              	_ZN6FastOSL10INT_A20_ONE:
 859 0090 01240000 		.long	9217
 860              		.align 4
 863              	_ZN6FastOSL14INT_A20_STATUSE:
 864 0094 02240000 		.long	9218
 865              		.align 4
 868              	_ZN6FastOSL15INT_A20_SUPPORTE:
 869 0098 03240000 		.long	9219
 870              		.align 4
 873              	_ZN6FastOSL14INT_MEMORY_MAPE:
 874 009c 20E80000 		.long	59424
 875              		.align 4
 878              	_ZN6FastOSL20INT_MEMORY_MAP_MAGICE:
 879 00a0 50414D53 		.long	1397571920
 880              		.align 4
 883              	_ZN6FastOSL17REG_FLAGS_MASK_CFE:
 884 00a4 01000000 		.long	1
 885              		.align 4
 888              	_ZN6FastOSL17REG_FLAGS_MASK_PFE:
 889 00a8 04000000 		.long	4
 890              		.align 4
 893              	_ZN6FastOSL17REG_FLAGS_MASK_AFE:
 894 00ac 10000000 		.long	16
 895              		.align 4
 898              	_ZN6FastOSL17REG_FLAGS_MASK_ZFE:
 899 00b0 40000000 		.long	64
 900              		.align 4
 903              	_ZN6FastOSL17REG_FLAGS_MASK_SFE:
 904 00b4 80000000 		.long	128
 905              		.align 4
 908              	_ZN6FastOSL17REG_FLAGS_MASK_TFE:
 909 00b8 00010000 		.long	256
 910              		.align 4
 913              	_ZN6FastOSL17REG_FLAGS_MASK_IFE:
 914 00bc 00020000 		.long	512
 915              		.align 4
 918              	_ZN6FastOSL17REG_FLAGS_MASK_DFE:
 919 00c0 00040000 		.long	1024
 920              		.align 4
 923              	_ZN6FastOSL17REG_FLAGS_MASK_OFE:
 924 00c4 00080000 		.long	2048
 925              		.align 4
 928              	_ZN6FastOSL18REG_EFLAGS_MASK_RFE:
 929 00c8 00000100 		.long	65536
 930              		.align 4
 933              	_ZN6FastOSL18REG_EFLAGS_MASK_VME:
 934 00cc 00000200 		.long	131072
 935              		.align 4
 938              	_ZN6FastOSL18REG_EFLAGS_MASK_ACE:
 939 00d0 00000400 		.long	262144
 940              		.align 4
 943              	_ZN6FastOSL19REG_EFLAGS_MASK_VIFE:
 944 00d4 00000800 		.long	524288
 945              		.align 4
 948              	_ZN6FastOSL19REG_EFLAGS_MASK_VIPE:
 949 00d8 00001000 		.long	1048576
 950              		.align 4
 953              	_ZN6FastOSL18REG_EFLAGS_MASK_IDE:
 954 00dc 00002000 		.long	2097152
 955              		.text
 956              		.globl	_ZN6FastOS8initregsEPNS_8regs32_tE
 958              	_ZN6FastOS8initregsEPNS_8regs32_tE:
 959              	.LFB38:
 960              		.file 6 "../src/fastlib/FastAsm.h"
   1:../src/fastlib/FastAsm.h **** #pragma once
   2:../src/fastlib/FastAsm.h **** 
   3:../src/fastlib/FastAsm.h **** #include <FastDefines.h>
   4:../src/fastlib/FastAsm.h **** #include <FastConstants.h>
   5:../src/fastlib/FastAsm.h **** 
   6:../src/fastlib/FastAsm.h **** FASTOS_NAMESPACE_BEGIN
   7:../src/fastlib/FastAsm.h **** 
   8:../src/fastlib/FastAsm.h **** using reg32_t = uint32_t;
   9:../src/fastlib/FastAsm.h **** using reg16_t = uint16_t;
  10:../src/fastlib/FastAsm.h **** using reg8_t = uint8_t;
  11:../src/fastlib/FastAsm.h **** 
  12:../src/fastlib/FastAsm.h **** #define FASTOS_FLAGSUTILS_MAKEBASE(flag, tyn, rty) static bool flag(rty f) { return f | tyn##flag;}
  13:../src/fastlib/FastAsm.h **** #define FASTOS_FLAGSUTILS_MAKE(flag) FASTOS_FLAGSUTILS_MAKEBASE(flag, REG_FLAGS_MASK_, reg16_t)
  14:../src/fastlib/FastAsm.h **** #define FASTOS_FLAGSUTILS_MAKE_E(flag) FASTOS_FLAGSUTILS_MAKEBASE(flag, REG_EFLAGS_MASK_, reg32_t)
  15:../src/fastlib/FastAsm.h **** 
  16:../src/fastlib/FastAsm.h **** #define PTR_LNG(seg, off) ((seg << 4) | off)
  17:../src/fastlib/FastAsm.h **** #define PTR_REAL(arr) PTR_LNG(arr[1], arr[0])
  18:../src/fastlib/FastAsm.h **** #define PTR_SEG(addr) (((uint32_t)addr >> 4) & 0xF000)
  19:../src/fastlib/FastAsm.h **** #define PTR_OFF(addr) ((uint32_t)addr & 0xFFFF)
  20:../src/fastlib/FastAsm.h **** 
  21:../src/fastlib/FastAsm.h **** #define memset(d,c,l) __builtin_memset(d,c,l)
  22:../src/fastlib/FastAsm.h **** #ifdef __ASSEMBLY__
  23:../src/fastlib/FastAsm.h **** #define _AC(X,Y)	X
  24:../src/fastlib/FastAsm.h **** #define _AT(T,X)	X
  25:../src/fastlib/FastAsm.h **** #else
  26:../src/fastlib/FastAsm.h **** #define __AC(X,Y)	(X##Y)
  27:../src/fastlib/FastAsm.h **** #define _AC(X,Y)	__AC(X,Y)
  28:../src/fastlib/FastAsm.h **** #define _AT(T,X)	((T)(X))
  29:../src/fastlib/FastAsm.h **** #endif
  30:../src/fastlib/FastAsm.h **** 
  31:../src/fastlib/FastAsm.h **** #define _UL(x)		(_AC(x, UL))
  32:../src/fastlib/FastAsm.h **** #define _ULL(x)		(_AC(x, ULL))
  33:../src/fastlib/FastAsm.h **** 
  34:../src/fastlib/FastAsm.h **** #define _BITUL(x)	(_UL(1) << (x))
  35:../src/fastlib/FastAsm.h **** #define _BITULL(x)	(_ULL(1) << (x))
  36:../src/fastlib/FastAsm.h **** #define X86_EFLAGS_CF_BIT	0 /* Carry Flag */
  37:../src/fastlib/FastAsm.h **** #define X86_EFLAGS_CF		_BITUL(X86_EFLAGS_CF_BIT)
  38:../src/fastlib/FastAsm.h **** 
  39:../src/fastlib/FastAsm.h **** 
  40:../src/fastlib/FastAsm.h **** 
  41:../src/fastlib/FastAsm.h **** struct regs16_t {
  42:../src/fastlib/FastAsm.h ****     reg16_t di, si, bp, sp, bx, dx, cx, ax;
  43:../src/fastlib/FastAsm.h ****     reg16_t gs, fs, es, ds, eflags;
  44:../src/fastlib/FastAsm.h **** } __attribute__((packed));
  45:../src/fastlib/FastAsm.h **** 
  46:../src/fastlib/FastAsm.h **** struct regs32_t {
  47:../src/fastlib/FastAsm.h ****     union {
  48:../src/fastlib/FastAsm.h ****         struct {
  49:../src/fastlib/FastAsm.h ****             reg32_t edi;
  50:../src/fastlib/FastAsm.h ****             reg32_t esi;
  51:../src/fastlib/FastAsm.h ****             reg32_t ebp;
  52:../src/fastlib/FastAsm.h ****             reg32_t _esp;
  53:../src/fastlib/FastAsm.h ****             reg32_t ebx;
  54:../src/fastlib/FastAsm.h ****             reg32_t edx;
  55:../src/fastlib/FastAsm.h ****             reg32_t ecx;
  56:../src/fastlib/FastAsm.h ****             reg32_t eax;
  57:../src/fastlib/FastAsm.h ****             reg32_t _fsgs;
  58:../src/fastlib/FastAsm.h ****             reg32_t _dses;
  59:../src/fastlib/FastAsm.h ****             reg32_t eflags;
  60:../src/fastlib/FastAsm.h ****         };
  61:../src/fastlib/FastAsm.h ****         struct {
  62:../src/fastlib/FastAsm.h ****             reg16_t di, hdi;
  63:../src/fastlib/FastAsm.h ****             reg16_t si, hsi;
  64:../src/fastlib/FastAsm.h ****             reg16_t bp, hbp;
  65:../src/fastlib/FastAsm.h ****             reg16_t _sp, _hsp;
  66:../src/fastlib/FastAsm.h ****             reg16_t bx, hbx;
  67:../src/fastlib/FastAsm.h ****             reg16_t dx, hdx;
  68:../src/fastlib/FastAsm.h ****             reg16_t cx, hcx;
  69:../src/fastlib/FastAsm.h ****             reg16_t ax, hax;
  70:../src/fastlib/FastAsm.h ****             reg16_t gs, fs;
  71:../src/fastlib/FastAsm.h ****             reg16_t es, ds;
  72:../src/fastlib/FastAsm.h ****             reg16_t flags, hflags;
  73:../src/fastlib/FastAsm.h ****         };
  74:../src/fastlib/FastAsm.h ****         struct {
  75:../src/fastlib/FastAsm.h ****             reg8_t dil, dih, edi2, edi3;
  76:../src/fastlib/FastAsm.h ****             reg8_t sil, sih, esi2, esi3;
  77:../src/fastlib/FastAsm.h ****             reg8_t bpl, bph, ebp2, ebp3;
  78:../src/fastlib/FastAsm.h ****             reg8_t _spl, _sph, _esp2, _esp3;
  79:../src/fastlib/FastAsm.h ****             reg8_t bl, bh, ebx2, ebx3;
  80:../src/fastlib/FastAsm.h ****             reg8_t dl, dh, edx2, edx3;
  81:../src/fastlib/FastAsm.h ****             reg8_t cl, ch, ecx2, ecx3;
  82:../src/fastlib/FastAsm.h ****             reg8_t al, ah, eax2, eax3;
  83:../src/fastlib/FastAsm.h ****         };
  84:../src/fastlib/FastAsm.h ****     };
  85:../src/fastlib/FastAsm.h **** };
  86:../src/fastlib/FastAsm.h **** 
  87:../src/fastlib/FastAsm.h **** typedef struct regs16_t regs16_t;
  88:../src/fastlib/FastAsm.h **** 
  89:../src/fastlib/FastAsm.h **** extern "C" {
  90:../src/fastlib/FastAsm.h ****     /*extern void int32(unsigned char intnum, regs16_t* regs);
  91:../src/fastlib/FastAsm.h ****     extern void intcall(uint8_t int_no, const regs32_t* ireg, regs32_t* oreg);
  92:../src/fastlib/FastAsm.h ****     extern void get_mmap(int seg, int off);
  93:../src/fastlib/FastAsm.h ****     extern reg16_t get_ds();
  94:../src/fastlib/FastAsm.h ****     extern reg16_t get_fs();
  95:../src/fastlib/FastAsm.h ****     extern reg16_t get_gs();*/
  96:../src/fastlib/FastAsm.h **** }
  97:../src/fastlib/FastAsm.h **** 
  98:../src/fastlib/FastAsm.h **** class flagsutils {
  99:../src/fastlib/FastAsm.h **** public:
 100:../src/fastlib/FastAsm.h ****     FASTOS_FLAGSUTILS_MAKE(CF)
 101:../src/fastlib/FastAsm.h ****     FASTOS_FLAGSUTILS_MAKE(PF)
 102:../src/fastlib/FastAsm.h ****     FASTOS_FLAGSUTILS_MAKE(AF)
 103:../src/fastlib/FastAsm.h ****     FASTOS_FLAGSUTILS_MAKE(ZF)
 104:../src/fastlib/FastAsm.h ****     FASTOS_FLAGSUTILS_MAKE(SF)
 105:../src/fastlib/FastAsm.h ****     FASTOS_FLAGSUTILS_MAKE(TF)
 106:../src/fastlib/FastAsm.h ****     FASTOS_FLAGSUTILS_MAKE(IF)
 107:../src/fastlib/FastAsm.h ****     FASTOS_FLAGSUTILS_MAKE(DF)
 108:../src/fastlib/FastAsm.h ****     FASTOS_FLAGSUTILS_MAKE(OF)
 109:../src/fastlib/FastAsm.h **** };
 110:../src/fastlib/FastAsm.h **** 
 111:../src/fastlib/FastAsm.h **** class regutils {
 112:../src/fastlib/FastAsm.h **** public:
 113:../src/fastlib/FastAsm.h ****     static reg8_t low(reg16_t r) {
 114:../src/fastlib/FastAsm.h ****         return (reg8_t)r;
 115:../src/fastlib/FastAsm.h ****     }
 116:../src/fastlib/FastAsm.h **** 
 117:../src/fastlib/FastAsm.h ****     static reg8_t high(reg16_t r) {
 118:../src/fastlib/FastAsm.h ****         return (reg8_t)(r >> 8);
 119:../src/fastlib/FastAsm.h ****     }
 120:../src/fastlib/FastAsm.h **** 
 121:../src/fastlib/FastAsm.h ****     
 122:../src/fastlib/FastAsm.h **** };
 123:../src/fastlib/FastAsm.h **** 
 124:../src/fastlib/FastAsm.h **** static inline reg16_t gs(void)
 125:../src/fastlib/FastAsm.h **** {
 126:../src/fastlib/FastAsm.h ****     reg16_t seg;
 127:../src/fastlib/FastAsm.h ****     asm volatile("movw %%gs,%0" : "=rm" (seg));
 128:../src/fastlib/FastAsm.h ****     return seg;
 129:../src/fastlib/FastAsm.h **** }
 130:../src/fastlib/FastAsm.h **** 
 131:../src/fastlib/FastAsm.h **** static inline reg16_t fs(void)
 132:../src/fastlib/FastAsm.h **** {
 133:../src/fastlib/FastAsm.h ****     reg16_t seg;
 134:../src/fastlib/FastAsm.h ****     asm volatile("movw %%fs,%0" : "=rm" (seg));
 135:../src/fastlib/FastAsm.h ****     return seg;
 136:../src/fastlib/FastAsm.h **** }
 137:../src/fastlib/FastAsm.h **** 
 138:../src/fastlib/FastAsm.h **** static inline reg16_t ds(void)
 139:../src/fastlib/FastAsm.h **** {
 140:../src/fastlib/FastAsm.h ****     reg16_t seg;
 141:../src/fastlib/FastAsm.h ****     asm("mov %%ds,%0" : "=rm" (seg));
 142:../src/fastlib/FastAsm.h ****     return seg;
 143:../src/fastlib/FastAsm.h **** }
 144:../src/fastlib/FastAsm.h **** 
 145:../src/fastlib/FastAsm.h **** void initregs(regs32_t* reg)
 146:../src/fastlib/FastAsm.h **** {
 961              		.loc 6 146 0
 962              		.cfi_startproc
 963 0489 55       		push	rbp
 964              		.cfi_def_cfa_offset 16
 965              		.cfi_offset 6, -16
 966 048a 4889E5   		mov	rbp, rsp
 967              		.cfi_def_cfa_register 6
 968 048d 4883EC08 		sub	rsp, 8
 969 0491 48897DF8 		mov	QWORD PTR [rbp-8], rdi
 147:../src/fastlib/FastAsm.h ****    /* memset(reg, 0, sizeof(*reg));
 148:../src/fastlib/FastAsm.h ****     reg->eflags |= X86_EFLAGS_CF;
 149:../src/fastlib/FastAsm.h ****     reg->ds = get_ds();
 150:../src/fastlib/FastAsm.h ****     reg->es = get_ds();
 151:../src/fastlib/FastAsm.h ****     reg->fs = get_fs();
 152:../src/fastlib/FastAsm.h ****     reg->gs = get_gs();*/
 153:../src/fastlib/FastAsm.h **** }
 970              		.loc 6 153 0
 971 0495 90       		nop
 972 0496 C9       		leave
 973              		.cfi_restore 6
 974              		.cfi_def_cfa 7, 8
 975 0497 C3       		ret
 976              		.cfi_endproc
 977              	.LFE38:
 979              		.section	.text._ZN6FastOS12FastTerminalC2Ev,"axG",@progbits,_ZN6FastOS12FastTerminalC5Ev,comdat
 980              		.align 2
 981              		.weak	_ZN6FastOS12FastTerminalC2Ev
 983              	_ZN6FastOS12FastTerminalC2Ev:
 984              	.LFB49:
 985              		.file 7 "../src/kernel/memory/../FastTerminal.h"
   1:../src/kernel/memory/../FastTerminal.h **** #pragma once
   2:../src/kernel/memory/../FastTerminal.h **** #include <FastDefines.h>
   3:../src/kernel/memory/../FastTerminal.h **** #include "vgautils.h"
   4:../src/kernel/memory/../FastTerminal.h **** #include <string.h>
   5:../src/kernel/memory/../FastTerminal.h **** #include "graphics/FastVGATextBuffer.h"
   6:../src/kernel/memory/../FastTerminal.h **** #include "graphics/FastVBE.h"
   7:../src/kernel/memory/../FastTerminal.h **** #include <FastAsm.h>
   8:../src/kernel/memory/../FastTerminal.h **** 
   9:../src/kernel/memory/../FastTerminal.h **** FASTOS_NAMESPACE_BEGIN
  10:../src/kernel/memory/../FastTerminal.h **** 
  11:../src/kernel/memory/../FastTerminal.h **** /*TODO: this with dynamic alloc to screen size*/
  12:../src/kernel/memory/../FastTerminal.h **** #define FASTOS_TERMINAL_VSB_SIZE_Y 1024
  13:../src/kernel/memory/../FastTerminal.h **** #define FASTOS_TERMINAL_VSB_SIZE_X 80
  14:../src/kernel/memory/../FastTerminal.h **** 
  15:../src/kernel/memory/../FastTerminal.h **** class FastTerminal {
  16:../src/kernel/memory/../FastTerminal.h **** 	uint32_t m_Width, m_Height;
  17:../src/kernel/memory/../FastTerminal.h **** 	uint16_t* m_VGABuffer;
  18:../src/kernel/memory/../FastTerminal.h **** 	vga_utils::vga_color m_ColorBackground, m_ColorForeground;
  19:../src/kernel/memory/../FastTerminal.h **** 	uint8_t m_ColorGeneral;
  20:../src/kernel/memory/../FastTerminal.h **** 
  21:../src/kernel/memory/../FastTerminal.h **** 	FastVGATextBuffer m_TextBuffer;
  22:../src/kernel/memory/../FastTerminal.h **** 
  23:../src/kernel/memory/../FastTerminal.h **** public:
  24:../src/kernel/memory/../FastTerminal.h **** 
  25:../src/kernel/memory/../FastTerminal.h **** 	FastTerminal() : m_TextBuffer{(uint16_t*)VGA_ADDR, FASTOS_TERMINAL_VSB_SIZE_X , FASTOS_TERMINAL_VS
 986              		.loc 7 25 0
 987              		.cfi_startproc
 988 0000 55       		push	rbp
 989              		.cfi_def_cfa_offset 16
 990              		.cfi_offset 6, -16
 991 0001 4889E5   		mov	rbp, rsp
 992              		.cfi_def_cfa_register 6
 993 0004 4883EC10 		sub	rsp, 16
 994 0008 48897DF8 		mov	QWORD PTR [rbp-8], rdi
 995              	.LBB6:
 996              		.loc 7 25 0
 997 000c 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 998 0010 4883C020 		add	rax, 32
 999 0014 B9000400 		mov	ecx, 1024
 999      00
 1000 0019 BA500000 		mov	edx, 80
 1000      00
 1001 001e 48C7C600 		mov	rsi, -2146729984
 1001      800B80
 1002 0025 4889C7   		mov	rdi, rax
 1003 0028 E8000000 		call	_ZN6FastOS17FastVGATextBufferC1EPtyy
 1003      00
 1004 002d 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1005 0031 48C74058 		mov	QWORD PTR [rax+88], 0
 1005      00000000 
 1006              	.LBE6:
 1007 0039 90       		nop
 1008 003a C9       		leave
 1009              		.cfi_restore 6
 1010              		.cfi_def_cfa 7, 8
 1011 003b C3       		ret
 1012              		.cfi_endproc
 1013              	.LFE49:
 1015              		.weak	_ZN6FastOS12FastTerminalC1Ev
 1016              		.set	_ZN6FastOS12FastTerminalC1Ev,_ZN6FastOS12FastTerminalC2Ev
 1017              		.weak	_ZZN6FastOS12FastTerminal6cprintEPKcE1x
 1018              		.section	.bss._ZZN6FastOS12FastTerminal6cprintEPKcE1x,"awG",@nobits,_ZZN6FastOS12FastTerminal6cpri
 1019              		.align 8
 1022              	_ZZN6FastOS12FastTerminal6cprintEPKcE1x:
 1023 0000 00000000 		.zero	8
 1023      00000000 
 1024              		.section	.text._ZN6FastOS12FastTerminal6cprintEPKc,"axG",@progbits,_ZN6FastOS12FastTerminal6cprint
 1025              		.align 2
 1026              		.weak	_ZN6FastOS12FastTerminal6cprintEPKc
 1028              	_ZN6FastOS12FastTerminal6cprintEPKc:
 1029              	.LFB52:
  26:../src/kernel/memory/../FastTerminal.h **** 
  27:../src/kernel/memory/../FastTerminal.h **** 	void print(const char ch[], int y=0) {
  28:../src/kernel/memory/../FastTerminal.h **** 		size_t index(0);
  29:../src/kernel/memory/../FastTerminal.h **** 		 do {
  30:../src/kernel/memory/../FastTerminal.h **** 			 m_VGABuffer[y* FASTOS_TERMINAL_VSB_SIZE_X +index] = vga_utils::entry(ch[index], m_ColorGeneral)
  31:../src/kernel/memory/../FastTerminal.h **** 		 } while (ch[++index]);
  32:../src/kernel/memory/../FastTerminal.h **** 
  33:../src/kernel/memory/../FastTerminal.h **** 	}
  34:../src/kernel/memory/../FastTerminal.h **** 
  35:../src/kernel/memory/../FastTerminal.h **** 	size_t cprintIndex = 0;
  36:../src/kernel/memory/../FastTerminal.h **** 
  37:../src/kernel/memory/../FastTerminal.h **** 	void cprint(const char ch[]) {
 1030              		.loc 7 37 0
 1031              		.cfi_startproc
 1032 0000 55       		push	rbp
 1033              		.cfi_def_cfa_offset 16
 1034              		.cfi_offset 6, -16
 1035 0001 4889E5   		mov	rbp, rsp
 1036              		.cfi_def_cfa_register 6
 1037 0004 53       		push	rbx
 1038 0005 4883EC28 		sub	rsp, 40
 1039              		.cfi_offset 3, -24
 1040 0009 48897DD8 		mov	QWORD PTR [rbp-40], rdi
 1041 000d 488975D0 		mov	QWORD PTR [rbp-48], rsi
  38:../src/kernel/memory/../FastTerminal.h **** 		size_t index(0);
 1042              		.loc 7 38 0
 1043 0011 48C745E8 		mov	QWORD PTR [rbp-24], 0
 1043      00000000 
 1044              	.L67:
  39:../src/kernel/memory/../FastTerminal.h **** 		static size_t x(0);
  40:../src/kernel/memory/../FastTerminal.h **** 		do  {
  41:../src/kernel/memory/../FastTerminal.h **** 			if (ch[index] == '\n') {
 1045              		.loc 7 41 0
 1046 0019 488B55D0 		mov	rdx, QWORD PTR [rbp-48]
 1047 001d 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 1048 0021 4801D0   		add	rax, rdx
 1049 0024 0FB600   		movzx	eax, BYTE PTR [rax]
 1050 0027 3C0A     		cmp	al, 10
 1051 0029 7521     		jne	.L64
  42:../src/kernel/memory/../FastTerminal.h **** 				cprintIndex++;
 1052              		.loc 7 42 0
 1053 002b 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1054 002f 488B4058 		mov	rax, QWORD PTR [rax+88]
 1055 0033 488D5001 		lea	rdx, [rax+1]
 1056 0037 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1057 003b 48895058 		mov	QWORD PTR [rax+88], rdx
  43:../src/kernel/memory/../FastTerminal.h **** 				x = 0;
 1058              		.loc 7 43 0
 1059 003f 48C70500 		mov	QWORD PTR _ZZN6FastOS12FastTerminal6cprintEPKcE1x[rip], 0
 1059      00000000 
 1059      000000
 1060 004a EB58     		jmp	.L65
 1061              	.L64:
  44:../src/kernel/memory/../FastTerminal.h **** 			}
  45:../src/kernel/memory/../FastTerminal.h **** 			else
  46:../src/kernel/memory/../FastTerminal.h **** 				m_VGABuffer[cprintIndex * FASTOS_TERMINAL_VSB_SIZE_X + x] = vga_utils::entry(ch[index], m_Color
 1062              		.loc 7 46 0
 1063 004c 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1064 0050 0FB64018 		movzx	eax, BYTE PTR [rax+24]
 1065 0054 0FB6F0   		movzx	esi, al
 1066 0057 488B55D0 		mov	rdx, QWORD PTR [rbp-48]
 1067 005b 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 1068 005f 4801D0   		add	rax, rdx
 1069 0062 0FB600   		movzx	eax, BYTE PTR [rax]
 1070 0065 0FB6C8   		movzx	ecx, al
 1071 0068 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1072 006c 488B7808 		mov	rdi, QWORD PTR [rax+8]
 1073 0070 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1074 0074 488B5058 		mov	rdx, QWORD PTR [rax+88]
 1075 0078 4889D0   		mov	rax, rdx
 1076 007b 48C1E002 		sal	rax, 2
 1077 007f 4801D0   		add	rax, rdx
 1078 0082 48C1E004 		sal	rax, 4
 1079 0086 4889C2   		mov	rdx, rax
 1080 0089 488B0500 		mov	rax, QWORD PTR _ZZN6FastOS12FastTerminal6cprintEPKcE1x[rip]
 1080      000000
 1081 0090 4801D0   		add	rax, rdx
 1082 0093 4801C0   		add	rax, rax
 1083 0096 488D1C07 		lea	rbx, [rdi+rax]
 1084 009a 89CF     		mov	edi, ecx
 1085 009c E8000000 		call	_ZN6FastOS9vga_utils5entryEhh
 1085      00
 1086 00a1 668903   		mov	WORD PTR [rbx], ax
 1087              	.L65:
  47:../src/kernel/memory/../FastTerminal.h **** 			++x;
 1088              		.loc 7 47 0
 1089 00a4 488B0500 		mov	rax, QWORD PTR _ZZN6FastOS12FastTerminal6cprintEPKcE1x[rip]
 1089      000000
 1090 00ab 4883C001 		add	rax, 1
 1091 00af 48890500 		mov	QWORD PTR _ZZN6FastOS12FastTerminal6cprintEPKcE1x[rip], rax
 1091      000000
  48:../src/kernel/memory/../FastTerminal.h **** 		} while(ch[++index]);
 1092              		.loc 7 48 0
 1093 00b6 488345E8 		add	QWORD PTR [rbp-24], 1
 1093      01
 1094 00bb 488B55D0 		mov	rdx, QWORD PTR [rbp-48]
 1095 00bf 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 1096 00c3 4801D0   		add	rax, rdx
 1097 00c6 0FB600   		movzx	eax, BYTE PTR [rax]
 1098 00c9 84C0     		test	al, al
 1099 00cb 0F95C0   		setne	al
 1100 00ce 84C0     		test	al, al
 1101 00d0 7405     		je	.L68
  40:../src/kernel/memory/../FastTerminal.h **** 			if (ch[index] == '\n') {
 1102              		.loc 7 40 0
 1103 00d2 E942FFFF 		jmp	.L67
 1103      FF
 1104              	.L68:
  49:../src/kernel/memory/../FastTerminal.h **** 	}
 1105              		.loc 7 49 0
 1106 00d7 90       		nop
 1107 00d8 4883C428 		add	rsp, 40
 1108 00dc 5B       		pop	rbx
 1109              		.cfi_restore 3
 1110 00dd 5D       		pop	rbp
 1111              		.cfi_restore 6
 1112              		.cfi_def_cfa 7, 8
 1113 00de C3       		ret
 1114              		.cfi_endproc
 1115              	.LFE52:
 1117              		.section	.text._ZN6FastOS12FastTerminal6cprintEji,"axG",@progbits,_ZN6FastOS12FastTerminal6cprintE
 1118              		.align 2
 1119              		.weak	_ZN6FastOS12FastTerminal6cprintEji
 1121              	_ZN6FastOS12FastTerminal6cprintEji:
 1122              	.LFB53:
  50:../src/kernel/memory/../FastTerminal.h **** 
  51:../src/kernel/memory/../FastTerminal.h **** 	void cprint(uint32_t in, int base=10) {
 1123              		.loc 7 51 0
 1124              		.cfi_startproc
 1125 0000 55       		push	rbp
 1126              		.cfi_def_cfa_offset 16
 1127              		.cfi_offset 6, -16
 1128 0001 4889E5   		mov	rbp, rsp
 1129              		.cfi_def_cfa_register 6
 1130 0004 4883EC10 		sub	rsp, 16
 1131 0008 48897DF8 		mov	QWORD PTR [rbp-8], rdi
 1132 000c 8975F4   		mov	DWORD PTR [rbp-12], esi
 1133 000f 8955F0   		mov	DWORD PTR [rbp-16], edx
  52:../src/kernel/memory/../FastTerminal.h **** 		cprint(uitoa(in, base));
 1134              		.loc 7 52 0
 1135 0012 8B55F0   		mov	edx, DWORD PTR [rbp-16]
 1136 0015 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 1137 0018 89D6     		mov	esi, edx
 1138 001a 89C7     		mov	edi, eax
 1139 001c E8000000 		call	_ZN6FastOS5uitoaEji
 1139      00
 1140 0021 4889C2   		mov	rdx, rax
 1141 0024 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1142 0028 4889D6   		mov	rsi, rdx
 1143 002b 4889C7   		mov	rdi, rax
 1144 002e E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1144      00
  53:../src/kernel/memory/../FastTerminal.h **** 	}
 1145              		.loc 7 53 0
 1146 0033 90       		nop
 1147 0034 C9       		leave
 1148              		.cfi_restore 6
 1149              		.cfi_def_cfa 7, 8
 1150 0035 C3       		ret
 1151              		.cfi_endproc
 1152              	.LFE53:
 1154              		.section	.text._ZN6FastOS12FastTerminal10initializeEv,"axG",@progbits,_ZN6FastOS12FastTerminal10in
 1155              		.align 2
 1156              		.weak	_ZN6FastOS12FastTerminal10initializeEv
 1158              	_ZN6FastOS12FastTerminal10initializeEv:
 1159              	.LFB55:
  54:../src/kernel/memory/../FastTerminal.h **** 
  55:../src/kernel/memory/../FastTerminal.h **** 	uint16_t* tt(const char* buf, size_t N, uint8_t c) {
  56:../src/kernel/memory/../FastTerminal.h **** 		static uint16_t rbuf[128];
  57:../src/kernel/memory/../FastTerminal.h **** 		for (auto i(0); i < N; ++i) {
  58:../src/kernel/memory/../FastTerminal.h **** 			rbuf[i] = vga_utils::entry(buf[i], c);
  59:../src/kernel/memory/../FastTerminal.h **** 		}
  60:../src/kernel/memory/../FastTerminal.h **** 		return rbuf;
  61:../src/kernel/memory/../FastTerminal.h **** 	}
  62:../src/kernel/memory/../FastTerminal.h **** 
  63:../src/kernel/memory/../FastTerminal.h **** 	void initialize() {
 1160              		.loc 7 63 0
 1161              		.cfi_startproc
 1162 0000 55       		push	rbp
 1163              		.cfi_def_cfa_offset 16
 1164              		.cfi_offset 6, -16
 1165 0001 4889E5   		mov	rbp, rsp
 1166              		.cfi_def_cfa_register 6
 1167 0004 53       		push	rbx
 1168 0005 4883EC28 		sub	rsp, 40
 1169              		.cfi_offset 3, -24
 1170 0009 48897DD8 		mov	QWORD PTR [rbp-40], rdi
  64:../src/kernel/memory/../FastTerminal.h **** 		m_VGABuffer = (uint16_t*)VGA_ADDR;
 1171              		.loc 7 64 0
 1172 000d 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1173 0011 48C74008 		mov	QWORD PTR [rax+8], -2146729984
 1173      00800B80 
  65:../src/kernel/memory/../FastTerminal.h **** 
  66:../src/kernel/memory/../FastTerminal.h **** 		m_Width = vga_utils::VGA_WIDTH;
 1174              		.loc 7 66 0
 1175 0019 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1176 001d C7005000 		mov	DWORD PTR [rax], 80
 1176      0000
  67:../src/kernel/memory/../FastTerminal.h **** 		m_Height = vga_utils::VGA_HEIGHT;
 1177              		.loc 7 67 0
 1178 0023 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1179 0027 C7400419 		mov	DWORD PTR [rax+4], 25
 1179      000000
  68:../src/kernel/memory/../FastTerminal.h **** 
  69:../src/kernel/memory/../FastTerminal.h **** 		m_ColorBackground = vga_utils::VGA_COLOR_BLACK;
 1180              		.loc 7 69 0
 1181 002e 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1182 0032 C7401000 		mov	DWORD PTR [rax+16], 0
 1182      000000
  70:../src/kernel/memory/../FastTerminal.h **** 		m_ColorForeground = vga_utils::VGA_COLOR_LIGHT_GREY;
 1183              		.loc 7 70 0
 1184 0039 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1185 003d C7401407 		mov	DWORD PTR [rax+20], 7
 1185      000000
  71:../src/kernel/memory/../FastTerminal.h **** 		m_ColorGeneral = vga_utils::entryColor(m_ColorForeground, m_ColorBackground);
 1186              		.loc 7 71 0
 1187 0044 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1188 0048 8B5010   		mov	edx, DWORD PTR [rax+16]
 1189 004b 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1190 004f 8B4014   		mov	eax, DWORD PTR [rax+20]
 1191 0052 89D6     		mov	esi, edx
 1192 0054 89C7     		mov	edi, eax
 1193 0056 E8000000 		call	_ZN6FastOS9vga_utils10entryColorENS0_9vga_colorES1_
 1193      00
 1194 005b 89C2     		mov	edx, eax
 1195 005d 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1196 0061 885018   		mov	BYTE PTR [rax+24], dl
 1197              	.LBB7:
  72:../src/kernel/memory/../FastTerminal.h **** 
  73:../src/kernel/memory/../FastTerminal.h **** 
  74:../src/kernel/memory/../FastTerminal.h **** 		for (uint32_t y(0u); y < m_Height; ++y) {
 1198              		.loc 7 74 0
 1199 0064 C745EC00 		mov	DWORD PTR [rbp-20], 0
 1199      000000
 1200              	.L74:
 1201              		.loc 7 74 0 is_stmt 0 discriminator 1
 1202 006b 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1203 006f 8B4004   		mov	eax, DWORD PTR [rax+4]
 1204 0072 3945EC   		cmp	DWORD PTR [rbp-20], eax
 1205 0075 735E     		jnb	.L75
 1206              	.LBB8:
 1207              	.LBB9:
  75:../src/kernel/memory/../FastTerminal.h **** 			for (uint32_t x(0u); x < m_Width; ++x) {
 1208              		.loc 7 75 0 is_stmt 1
 1209 0077 C745E800 		mov	DWORD PTR [rbp-24], 0
 1209      000000
 1210              	.L73:
 1211              		.loc 7 75 0 is_stmt 0 discriminator 3
 1212 007e 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1213 0082 8B00     		mov	eax, DWORD PTR [rax]
 1214 0084 3945E8   		cmp	DWORD PTR [rbp-24], eax
 1215 0087 7346     		jnb	.L72
 1216              	.LBB10:
  76:../src/kernel/memory/../FastTerminal.h **** 				const uint32_t i = y * m_Width + x;
 1217              		.loc 7 76 0 is_stmt 1 discriminator 2
 1218 0089 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1219 008d 8B00     		mov	eax, DWORD PTR [rax]
 1220 008f 0FAF45EC 		imul	eax, DWORD PTR [rbp-20]
 1221 0093 89C2     		mov	edx, eax
 1222 0095 8B45E8   		mov	eax, DWORD PTR [rbp-24]
 1223 0098 01D0     		add	eax, edx
 1224 009a 8945E4   		mov	DWORD PTR [rbp-28], eax
  77:../src/kernel/memory/../FastTerminal.h **** 				m_VGABuffer[i] = vga_utils::entry(' ', m_ColorGeneral);
 1225              		.loc 7 77 0 discriminator 2
 1226 009d 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1227 00a1 0FB64018 		movzx	eax, BYTE PTR [rax+24]
 1228 00a5 0FB6C0   		movzx	eax, al
 1229 00a8 488B55D8 		mov	rdx, QWORD PTR [rbp-40]
 1230 00ac 488B5208 		mov	rdx, QWORD PTR [rdx+8]
 1231 00b0 8B4DE4   		mov	ecx, DWORD PTR [rbp-28]
 1232 00b3 4801C9   		add	rcx, rcx
 1233 00b6 488D1C0A 		lea	rbx, [rdx+rcx]
 1234 00ba 89C6     		mov	esi, eax
 1235 00bc BF200000 		mov	edi, 32
 1235      00
 1236 00c1 E8000000 		call	_ZN6FastOS9vga_utils5entryEhh
 1236      00
 1237 00c6 668903   		mov	WORD PTR [rbx], ax
 1238              	.LBE10:
  75:../src/kernel/memory/../FastTerminal.h **** 			for (uint32_t x(0u); x < m_Width; ++x) {
 1239              		.loc 7 75 0 discriminator 2
 1240 00c9 8345E801 		add	DWORD PTR [rbp-24], 1
 1241 00cd EBAF     		jmp	.L73
 1242              	.L72:
 1243              	.LBE9:
 1244              	.LBE8:
  74:../src/kernel/memory/../FastTerminal.h **** 			for (uint32_t x(0u); x < m_Width; ++x) {
 1245              		.loc 7 74 0 discriminator 2
 1246 00cf 8345EC01 		add	DWORD PTR [rbp-20], 1
 1247 00d3 EB96     		jmp	.L74
 1248              	.L75:
 1249              	.LBE7:
  78:../src/kernel/memory/../FastTerminal.h **** 			}
  79:../src/kernel/memory/../FastTerminal.h **** 		}
  80:../src/kernel/memory/../FastTerminal.h **** 		//print("Ce noyau d'OS fonctionne ");
  81:../src/kernel/memory/../FastTerminal.h **** 		//print(uitoa(8456, 10));
  82:../src/kernel/memory/../FastTerminal.h **** 
  83:../src/kernel/memory/../FastTerminal.h **** 		//uint32_t buf;
  84:../src/kernel/memory/../FastTerminal.h **** 		//uint32_t buf2;
  85:../src/kernel/memory/../FastTerminal.h **** 
  86:../src/kernel/memory/../FastTerminal.h **** 		//FastASM::cpuid(0, &buf, &buf2);
  87:../src/kernel/memory/../FastTerminal.h **** 
  88:../src/kernel/memory/../FastTerminal.h **** 		//print((char*)&buf);
  89:../src/kernel/memory/../FastTerminal.h **** 
  90:../src/kernel/memory/../FastTerminal.h **** 		/*FastVBE::VBEInfo_t* infos{ (FastVBE::VBEInfo_t*)0x80000 };
  91:../src/kernel/memory/../FastTerminal.h **** 		regs16_t regs;
  92:../src/kernel/memory/../FastTerminal.h **** 		regs.ax = 0x4f00;
  93:../src/kernel/memory/../FastTerminal.h **** 		regs.es = 0x8000;
  94:../src/kernel/memory/../FastTerminal.h **** 		regs.di = 0x0000;
  95:../src/kernel/memory/../FastTerminal.h **** 		int32(0x10, &regs);
  96:../src/kernel/memory/../FastTerminal.h **** 		*/
  97:../src/kernel/memory/../FastTerminal.h **** 		/*print(uitoa(regs.ax, 16));
  98:../src/kernel/memory/../FastTerminal.h **** 		print(infos->signature, 1);
  99:../src/kernel/memory/../FastTerminal.h **** 		print(uitoa(infos->version, 16), 2);
 100:../src/kernel/memory/../FastTerminal.h **** 		print(uitoa(infos->video_memory, 10), 3);
 101:../src/kernel/memory/../FastTerminal.h **** 		print(infos->oem_data, 4);*/
 102:../src/kernel/memory/../FastTerminal.h **** 
 103:../src/kernel/memory/../FastTerminal.h **** 		//print(infos.signature, 0);
 104:../src/kernel/memory/../FastTerminal.h **** 		//print(uitoa(addrinfos, 16), 1);
 105:../src/kernel/memory/../FastTerminal.h **** 		//print(uitoa(bwhigher32(addrinfos), 16), 2);
 106:../src/kernel/memory/../FastTerminal.h **** 		//print(uitoa(bwlower32(addrinfos), 16), 3);
 107:../src/kernel/memory/../FastTerminal.h **** 		//print(uitoa(fast_vbe_get_controller_info(bwlower32(addrinfos), bwhigher32(addrinfos)), 10), 1);
 108:../src/kernel/memory/../FastTerminal.h **** 		//print(uitoa(fast_vbe_get_controller_info(bwhigher32(addrinfos), bwlower32(addrinfos)), 10), 1);
 109:../src/kernel/memory/../FastTerminal.h **** 		//const char* stcbuf = "Ceci est un test";
 110:../src/kernel/memory/../FastTerminal.h **** 		//auto* stbuf = tt(stcbuf, strlen(stcbuf), m_ColorGeneral);
 111:../src/kernel/memory/../FastTerminal.h **** 		//(*(uint16_t**)VGA_ADDR) = stbuf;
 112:../src/kernel/memory/../FastTerminal.h **** 	}
 1250              		.loc 7 112 0
 1251 00d5 90       		nop
 1252 00d6 4883C428 		add	rsp, 40
 1253 00da 5B       		pop	rbx
 1254              		.cfi_restore 3
 1255 00db 5D       		pop	rbp
 1256              		.cfi_restore 6
 1257              		.cfi_def_cfa 7, 8
 1258 00dc C3       		ret
 1259              		.cfi_endproc
 1260              	.LFE55:
 1262              		.local	_ZN6FastOSL4termE
 1263              		.comm	_ZN6FastOSL4termE,96,32
 1264              		.text
 1265              		.globl	kprint
 1267              	kprint:
 1268              	.LFB66:
 1269              		.file 8 "../src/kernel/FastOS.h"
   1:../src/kernel/FastOS.h **** #pragma once
   2:../src/kernel/FastOS.h **** 
   3:../src/kernel/FastOS.h **** //#include "memory/FastLowMemoryAllocator.h"
   4:../src/kernel/FastOS.h **** 
   5:../src/kernel/FastOS.h **** #include "memory/FastPtr.h"
   6:../src/kernel/FastOS.h **** 
   7:../src/kernel/FastOS.h **** FASTOS_NAMESPACE_BEGIN
   8:../src/kernel/FastOS.h **** 
   9:../src/kernel/FastOS.h **** /*#include "memory/FastPtr.h"
  10:../src/kernel/FastOS.h **** #include <FastAsm.h>
  11:../src/kernel/FastOS.h **** 
  12:../src/kernel/FastOS.h **** //#include "graphics/FastVBE.h"
  13:../src/kernel/FastOS.h **** 
  14:../src/kernel/FastOS.h **** FASTOS_NAMESPACE_BEGIN
  15:../src/kernel/FastOS.h **** 
  16:../src/kernel/FastOS.h **** struct VBEInfo_t {
  17:../src/kernel/FastOS.h **** 	char VbeSignature[4];             // == "VESA"
  18:../src/kernel/FastOS.h **** 	uint16_t VbeVersion;                 // == 0x0300 for VBE 3.0
  19:../src/kernel/FastOS.h **** 	uint16_t OemStringPtr[2];            // isa vbeFarPtr
  20:../src/kernel/FastOS.h **** 	uint8_t Capabilities[4];
  21:../src/kernel/FastOS.h **** 	uint16_t VideoModePtr[2];         // isa vbeFarPtr
  22:../src/kernel/FastOS.h **** 	uint16_t TotalMemory;             // as # of 64KB blocks
  23:../src/kernel/FastOS.h **** } __attribute__((packed));
  24:../src/kernel/FastOS.h **** 
  25:../src/kernel/FastOS.h **** struct VBEModeInfo_t {
  26:../src/kernel/FastOS.h **** 	uint16_t attributes;
  27:../src/kernel/FastOS.h **** 	uint8_t winA, winB;
  28:../src/kernel/FastOS.h **** 	uint16_t granularity;
  29:../src/kernel/FastOS.h **** 	uint16_t winsize;
  30:../src/kernel/FastOS.h **** 	uint16_t segmentA, segmentB;
  31:../src/kernel/FastOS.h **** 	uint32_t* realFctPtr;
  32:../src/kernel/FastOS.h **** 	uint16_t pitch; // bytes per scanline
  33:../src/kernel/FastOS.h **** 
  34:../src/kernel/FastOS.h **** 	uint16_t Xres, Yres;
  35:../src/kernel/FastOS.h **** 	uint8_t Wchar, Ychar, planes, bpp, banks;
  36:../src/kernel/FastOS.h **** 	uint8_t memory_model, bank_size, image_pages;
  37:../src/kernel/FastOS.h **** 	uint8_t reserved0;
  38:../src/kernel/FastOS.h **** 
  39:../src/kernel/FastOS.h **** 	uint8_t red_mask, red_position;
  40:../src/kernel/FastOS.h **** 	uint8_t green_mask, green_position;
  41:../src/kernel/FastOS.h **** 	uint8_t blue_mask, blue_position;
  42:../src/kernel/FastOS.h **** 	uint8_t rsv_mask, rsv_position;
  43:../src/kernel/FastOS.h **** 	uint8_t directcolor_attributes;
  44:../src/kernel/FastOS.h **** 
  45:../src/kernel/FastOS.h **** 	uint32_t physbase;  // The Linear framebuffer addr
  46:../src/kernel/FastOS.h **** 	uint32_t reserved1;
  47:../src/kernel/FastOS.h **** 	uint16_t reserved2;
  48:../src/kernel/FastOS.h **** } __attribute__((packed));
  49:../src/kernel/FastOS.h **** */
  50:../src/kernel/FastOS.h **** extern "C" {
  51:../src/kernel/FastOS.h **** 	void kprint(uint32_t nb) {
 1270              		.loc 8 51 0
 1271              		.cfi_startproc
 1272 0498 55       		push	rbp
 1273              		.cfi_def_cfa_offset 16
 1274              		.cfi_offset 6, -16
 1275 0499 4889E5   		mov	rbp, rsp
 1276              		.cfi_def_cfa_register 6
 1277 049c 4883EC10 		sub	rsp, 16
 1278 04a0 897DFC   		mov	DWORD PTR [rbp-4], edi
  52:../src/kernel/FastOS.h **** 		term.cprint(nb);
 1279              		.loc 8 52 0
 1280 04a3 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 1281 04a6 BA0A0000 		mov	edx, 10
 1281      00
 1282 04ab 89C6     		mov	esi, eax
 1283 04ad 48C7C700 		mov	rdi, OFFSET FLAT:_ZN6FastOSL4termE
 1283      000000
 1284 04b4 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEji
 1284      00
  53:../src/kernel/FastOS.h **** 	}
 1285              		.loc 8 53 0
 1286 04b9 90       		nop
 1287 04ba C9       		leave
 1288              		.cfi_restore 6
 1289              		.cfi_def_cfa 7, 8
 1290 04bb C3       		ret
 1291              		.cfi_endproc
 1292              	.LFE66:
 1294              		.globl	kprintstr
 1296              	kprintstr:
 1297              	.LFB67:
  54:../src/kernel/FastOS.h **** 
  55:../src/kernel/FastOS.h **** 	void kprintstr(const char* ch) {
 1298              		.loc 8 55 0
 1299              		.cfi_startproc
 1300 04bc 55       		push	rbp
 1301              		.cfi_def_cfa_offset 16
 1302              		.cfi_offset 6, -16
 1303 04bd 4889E5   		mov	rbp, rsp
 1304              		.cfi_def_cfa_register 6
 1305 04c0 4883EC10 		sub	rsp, 16
 1306 04c4 48897DF8 		mov	QWORD PTR [rbp-8], rdi
  56:../src/kernel/FastOS.h **** 		term.cprint(ch);
 1307              		.loc 8 56 0
 1308 04c8 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1309 04cc 4889C6   		mov	rsi, rax
 1310 04cf 48C7C700 		mov	rdi, OFFSET FLAT:_ZN6FastOSL4termE
 1310      000000
 1311 04d6 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1311      00
  57:../src/kernel/FastOS.h **** 	}
 1312              		.loc 8 57 0
 1313 04db 90       		nop
 1314 04dc C9       		leave
 1315              		.cfi_restore 6
 1316              		.cfi_def_cfa 7, 8
 1317 04dd C3       		ret
 1318              		.cfi_endproc
 1319              	.LFE67:
 1321              		.section	.rodata
 1322              	.LC0:
 1323 00e0 52656773 		.string	"RegsDump: a="
 1323      44756D70 
 1323      3A20613D 
 1323      00
 1324              	.LC1:
 1325 00ed 20623D00 		.string	" b="
 1326              	.LC2:
 1327 00f1 20633D00 		.string	" c="
 1328              	.LC3:
 1329 00f5 20643D00 		.string	" d="
 1330              	.LC4:
 1331 00f9 0A00     		.string	"\n"
 1332              		.text
 1333              		.globl	dump_regs
 1335              	dump_regs:
 1336              	.LFB68:
  58:../src/kernel/FastOS.h **** 
  59:../src/kernel/FastOS.h **** 	void dump_regs(uint32_t eax, uint32_t ebx, uint32_t ecx, uint32_t edx) {
 1337              		.loc 8 59 0
 1338              		.cfi_startproc
 1339 04de 55       		push	rbp
 1340              		.cfi_def_cfa_offset 16
 1341              		.cfi_offset 6, -16
 1342 04df 4889E5   		mov	rbp, rsp
 1343              		.cfi_def_cfa_register 6
 1344 04e2 4883EC10 		sub	rsp, 16
 1345 04e6 897DFC   		mov	DWORD PTR [rbp-4], edi
 1346 04e9 8975F8   		mov	DWORD PTR [rbp-8], esi
 1347 04ec 8955F4   		mov	DWORD PTR [rbp-12], edx
 1348 04ef 894DF0   		mov	DWORD PTR [rbp-16], ecx
  60:../src/kernel/FastOS.h **** 		term.cprint("RegsDump: a=");
 1349              		.loc 8 60 0
 1350 04f2 48C7C600 		mov	rsi, OFFSET FLAT:.LC0
 1350      000000
 1351 04f9 48C7C700 		mov	rdi, OFFSET FLAT:_ZN6FastOSL4termE
 1351      000000
 1352 0500 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1352      00
  61:../src/kernel/FastOS.h **** 		term.cprint(eax, 16);
 1353              		.loc 8 61 0
 1354 0505 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 1355 0508 BA100000 		mov	edx, 16
 1355      00
 1356 050d 89C6     		mov	esi, eax
 1357 050f 48C7C700 		mov	rdi, OFFSET FLAT:_ZN6FastOSL4termE
 1357      000000
 1358 0516 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEji
 1358      00
  62:../src/kernel/FastOS.h **** 		term.cprint(" b=");
 1359              		.loc 8 62 0
 1360 051b 48C7C600 		mov	rsi, OFFSET FLAT:.LC1
 1360      000000
 1361 0522 48C7C700 		mov	rdi, OFFSET FLAT:_ZN6FastOSL4termE
 1361      000000
 1362 0529 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1362      00
  63:../src/kernel/FastOS.h **** 		term.cprint(ebx, 16);
 1363              		.loc 8 63 0
 1364 052e 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 1365 0531 BA100000 		mov	edx, 16
 1365      00
 1366 0536 89C6     		mov	esi, eax
 1367 0538 48C7C700 		mov	rdi, OFFSET FLAT:_ZN6FastOSL4termE
 1367      000000
 1368 053f E8000000 		call	_ZN6FastOS12FastTerminal6cprintEji
 1368      00
  64:../src/kernel/FastOS.h **** 		term.cprint(" c=");
 1369              		.loc 8 64 0
 1370 0544 48C7C600 		mov	rsi, OFFSET FLAT:.LC2
 1370      000000
 1371 054b 48C7C700 		mov	rdi, OFFSET FLAT:_ZN6FastOSL4termE
 1371      000000
 1372 0552 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1372      00
  65:../src/kernel/FastOS.h **** 		term.cprint(ecx, 16);
 1373              		.loc 8 65 0
 1374 0557 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 1375 055a BA100000 		mov	edx, 16
 1375      00
 1376 055f 89C6     		mov	esi, eax
 1377 0561 48C7C700 		mov	rdi, OFFSET FLAT:_ZN6FastOSL4termE
 1377      000000
 1378 0568 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEji
 1378      00
  66:../src/kernel/FastOS.h **** 		term.cprint(" d=");
 1379              		.loc 8 66 0
 1380 056d 48C7C600 		mov	rsi, OFFSET FLAT:.LC3
 1380      000000
 1381 0574 48C7C700 		mov	rdi, OFFSET FLAT:_ZN6FastOSL4termE
 1381      000000
 1382 057b E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1382      00
  67:../src/kernel/FastOS.h **** 		term.cprint(edx, 16);
 1383              		.loc 8 67 0
 1384 0580 8B45F0   		mov	eax, DWORD PTR [rbp-16]
 1385 0583 BA100000 		mov	edx, 16
 1385      00
 1386 0588 89C6     		mov	esi, eax
 1387 058a 48C7C700 		mov	rdi, OFFSET FLAT:_ZN6FastOSL4termE
 1387      000000
 1388 0591 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEji
 1388      00
  68:../src/kernel/FastOS.h **** 		term.cprint("\n");
 1389              		.loc 8 68 0
 1390 0596 48C7C600 		mov	rsi, OFFSET FLAT:.LC4
 1390      000000
 1391 059d 48C7C700 		mov	rdi, OFFSET FLAT:_ZN6FastOSL4termE
 1391      000000
 1392 05a4 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1392      00
  69:../src/kernel/FastOS.h **** 	}
 1393              		.loc 8 69 0
 1394 05a9 90       		nop
 1395 05aa C9       		leave
 1396              		.cfi_restore 6
 1397              		.cfi_def_cfa 7, 8
 1398 05ab C3       		ret
 1399              		.cfi_endproc
 1400              	.LFE68:
 1402              		.section	.rodata
 1403              	.LC5:
 1404 00fb 48656C6C 		.string	"Hello World\n"
 1404      6F20576F 
 1404      726C640A 
 1404      00
 1405              		.section	.text._ZN6FastOS6FastOS4mainEmm,"axG",@progbits,_ZN6FastOS6FastOS4mainEmm,comdat
 1406              		.align 2
 1407              		.weak	_ZN6FastOS6FastOS4mainEmm
 1409              	_ZN6FastOS6FastOS4mainEmm:
 1410              	.LFB69:
  70:../src/kernel/FastOS.h **** }
  71:../src/kernel/FastOS.h **** 
  72:../src/kernel/FastOS.h **** #include "kernel.h"
  73:../src/kernel/FastOS.h **** #include <multiboot.h>
  74:../src/kernel/FastOS.h **** #include <boot.h>
  75:../src/kernel/FastOS.h **** 
  76:../src/kernel/FastOS.h **** 	class FastOS {
  77:../src/kernel/FastOS.h **** 	public:
  78:../src/kernel/FastOS.h **** 		FastTerminal* terminal;
  79:../src/kernel/FastOS.h **** 
  80:../src/kernel/FastOS.h **** 		void main(unsigned long magic, unsigned long mbi) {
 1411              		.loc 8 80 0
 1412              		.cfi_startproc
 1413 0000 55       		push	rbp
 1414              		.cfi_def_cfa_offset 16
 1415              		.cfi_offset 6, -16
 1416 0001 4889E5   		mov	rbp, rsp
 1417              		.cfi_def_cfa_register 6
 1418 0004 4883EC20 		sub	rsp, 32
 1419 0008 48897DF8 		mov	QWORD PTR [rbp-8], rdi
 1420 000c 488975F0 		mov	QWORD PTR [rbp-16], rsi
 1421 0010 488955E8 		mov	QWORD PTR [rbp-24], rdx
  81:../src/kernel/FastOS.h **** 
  82:../src/kernel/FastOS.h **** 			term.initialize();
 1422              		.loc 8 82 0
 1423 0014 48C7C700 		mov	rdi, OFFSET FLAT:_ZN6FastOSL4termE
 1423      000000
 1424 001b E8000000 		call	_ZN6FastOS12FastTerminal10initializeEv
 1424      00
  83:../src/kernel/FastOS.h **** 			//kprint(5);
  84:../src/kernel/FastOS.h **** 			/*term.cprint("enable: ");
  85:../src/kernel/FastOS.h **** 			term.cprint(enable_a20(), 10);
  86:../src/kernel/FastOS.h **** 			term.cprint("\n");
  87:../src/kernel/FastOS.h **** 			term.cprint("check: ");
  88:../src/kernel/FastOS.h **** 			//term.cprint(check_a20(), 10);
  89:../src/kernel/FastOS.h **** 			term.cprint("\n");*/
  90:../src/kernel/FastOS.h **** 			
  91:../src/kernel/FastOS.h **** 			/*if (!ASM::new_set_a20(true)) {
  92:../src/kernel/FastOS.h **** 				term.cprint("ERROR: Could not turn on A20 line\n");
  93:../src/kernel/FastOS.h **** 			}*/
  94:../src/kernel/FastOS.h **** 
  95:../src/kernel/FastOS.h **** 			//TODO: Support ACPI 3 24 bytes entries !
  96:../src/kernel/FastOS.h **** 			/*struct BIOSMemEntry {
  97:../src/kernel/FastOS.h **** 				uint32_t laddr;
  98:../src/kernel/FastOS.h **** 				uint32_t haddr;
  99:../src/kernel/FastOS.h **** 				uint32_t lreg;
 100:../src/kernel/FastOS.h **** 				uint32_t hreg;
 101:../src/kernel/FastOS.h **** 				uint32_t type;
 102:../src/kernel/FastOS.h **** 			};
 103:../src/kernel/FastOS.h **** 
 104:../src/kernel/FastOS.h **** 			//BIOSMemEntry mem;// [10] ;*/
 105:../src/kernel/FastOS.h **** 
 106:../src/kernel/FastOS.h **** 			term.cprint("Hello World\n");
 1425              		.loc 8 106 0
 1426 0020 48C7C600 		mov	rsi, OFFSET FLAT:.LC5
 1426      000000
 1427 0027 48C7C700 		mov	rdi, OFFSET FLAT:_ZN6FastOSL4termE
 1427      000000
 1428 002e E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1428      00
 107:../src/kernel/FastOS.h **** 
 108:../src/kernel/FastOS.h **** 
 109:../src/kernel/FastOS.h **** 			/*term.cprint("ASM>");
 110:../src/kernel/FastOS.h **** 			get_mmap(PTR_SEG(&mem), PTR_OFF(&mem));
 111:../src/kernel/FastOS.h **** 			term.cprint("<END\n");*/
 112:../src/kernel/FastOS.h **** 
 113:../src/kernel/FastOS.h **** 
 114:../src/kernel/FastOS.h **** 			/*for (int i(0); i < 10; ++i) {
 115:../src/kernel/FastOS.h **** 				term.cprint(i);
 116:../src/kernel/FastOS.h **** 				term.cprint(" ");
 117:../src/kernel/FastOS.h **** 				term.cprint((mem[i].haddr << 32) | mem[i].laddr);
 118:../src/kernel/FastOS.h **** 				term.cprint("\n");
 119:../src/kernel/FastOS.h **** 			}*/
 120:../src/kernel/FastOS.h **** 
 121:../src/kernel/FastOS.h **** 			/*FastMemoryImpl impl;
 122:../src/kernel/FastOS.h **** 
 123:../src/kernel/FastOS.h **** 			impl.init(3, 31, (void*)0x00000600, (void*)0x0007BFF);
 124:../src/kernel/FastOS.h **** 
 125:../src/kernel/FastOS.h **** 			term.cprint("Memory Initialized\n");
 126:../src/kernel/FastOS.h **** 
 127:../src/kernel/FastOS.h **** 			FastPtr<VBEInfo_t> ptr1{ impl };
 128:../src/kernel/FastOS.h **** 			FastPtr<VBEModeInfo_t> ptr2{ impl };
 129:../src/kernel/FastOS.h **** 
 130:../src/kernel/FastOS.h **** 			term.cprint((uint32_t)ptr1.get());
 131:../src/kernel/FastOS.h **** 			term.cprint(" ");
 132:../src/kernel/FastOS.h **** 			term.cprint((uint32_t)ptr2.get());
 133:../src/kernel/FastOS.h **** 			term.cprint("\n");*/
 134:../src/kernel/FastOS.h **** 
 135:../src/kernel/FastOS.h **** 			//term.cprint("FastPtr tested\n");
 136:../src/kernel/FastOS.h **** 			//FastVBE vbe;
 137:../src/kernel/FastOS.h **** 			//vbe.initialize(impl, term);
 138:../src/kernel/FastOS.h **** 			//term.cprint("Initialized\n");
 139:../src/kernel/FastOS.h **** 
 140:../src/kernel/FastOS.h **** 			/*void* ptr1 = impl.malloc<void>(64);
 141:../src/kernel/FastOS.h **** 
 142:../src/kernel/FastOS.h **** 			term.cprint("Ptr1: ");
 143:../src/kernel/FastOS.h **** 			term.cprint((uifast_t)ptr1, 16);
 144:../src/kernel/FastOS.h **** 			term.cprint("\n");
 145:../src/kernel/FastOS.h **** 			impl.free(ptr1, 64);
 146:../src/kernel/FastOS.h **** 
 147:../src/kernel/FastOS.h **** 			void* ptr2 = impl.malloc<void>(64);
 148:../src/kernel/FastOS.h **** 
 149:../src/kernel/FastOS.h **** 			term.cprint("Ptr2: ");
 150:../src/kernel/FastOS.h **** 			term.cprint((uifast_t)ptr2, 16);
 151:../src/kernel/FastOS.h **** 			term.cprint("\n");
 152:../src/kernel/FastOS.h **** 
 153:../src/kernel/FastOS.h **** 			
 154:../src/kernel/FastOS.h **** 			void* ptr3 = impl.malloc<void>(128);
 155:../src/kernel/FastOS.h **** 
 156:../src/kernel/FastOS.h **** 			term.cprint("Ptr3: ");
 157:../src/kernel/FastOS.h **** 			term.cprint((uifast_t)ptr3, 16);
 158:../src/kernel/FastOS.h **** 			term.cprint("\n");
 159:../src/kernel/FastOS.h **** 
 160:../src/kernel/FastOS.h **** 			impl.free(ptr2, 64);
 161:../src/kernel/FastOS.h **** 			impl.free(ptr3, 64);
 162:../src/kernel/FastOS.h **** 
 163:../src/kernel/FastOS.h **** 			void* ptr4 = impl.malloc<void>(128);
 164:../src/kernel/FastOS.h **** 
 165:../src/kernel/FastOS.h **** 			term.cprint("Ptr4: ");
 166:../src/kernel/FastOS.h **** 			term.cprint((uifast_t)ptr4, 16);
 167:../src/kernel/FastOS.h **** 			term.cprint("\n");
 168:../src/kernel/FastOS.h **** 			impl.free(ptr4, 64);*/
 169:../src/kernel/FastOS.h **** 
 170:../src/kernel/FastOS.h **** 			/*FastLowMemoryAllocator alloc{ (void*)0x00000500, 2 };
 171:../src/kernel/FastOS.h **** 			alloc.addPool((void*)0x00000600, (void*)0x0007BFF);
 172:../src/kernel/FastOS.h **** 			term.cprint("Alloc: p");
 173:../src/kernel/FastOS.h **** 			term.cprint((uint32_t)(alloc.m_Pools), 16);
 174:../src/kernel/FastOS.h **** 			term.cprint(" p0: ");
 175:../src/kernel/FastOS.h **** 			term.cprint((uint32_t)*(uint8_t*)((*alloc.m_Pools)[0]), 16);
 176:../src/kernel/FastOS.h **** 			term.cprint("\n");
 177:../src/kernel/FastOS.h **** 
 178:../src/kernel/FastOS.h **** 			void* testptr = alloc.malloc(256);
 179:../src/kernel/FastOS.h **** 
 180:../src/kernel/FastOS.h **** 			term.cprint("\nTestptr: ");
 181:../src/kernel/FastOS.h **** 			term.cprint((uint32_t)testptr);
 182:../src/kernel/FastOS.h **** 
 183:../src/kernel/FastOS.h **** 			alloc.free(testptr, 256);
 184:../src/kernel/FastOS.h **** 
 185:../src/kernel/FastOS.h **** 			//term.cprint("\n");
 186:../src/kernel/FastOS.h **** 			//term.cprint(123456789);*/
 187:../src/kernel/FastOS.h **** 
 188:../src/kernel/FastOS.h **** 
 189:../src/kernel/FastOS.h **** 			/*char b[8192];
 190:../src/kernel/FastOS.h **** 			char* ptr = (char*)0x00000500;
 191:../src/kernel/FastOS.h **** 			for (int i = 0; i < 8192; ++i) {
 192:../src/kernel/FastOS.h **** 				if (ptr[i] == 0) b[i] = '0';
 193:../src/kernel/FastOS.h **** 				else b[i] = ptr[i];
 194:../src/kernel/FastOS.h **** 			}*/
 195:../src/kernel/FastOS.h **** 
 196:../src/kernel/FastOS.h **** 			//term.cprint(b);
 197:../src/kernel/FastOS.h **** 		}
 1429              		.loc 8 197 0
 1430 0033 90       		nop
 1431 0034 C9       		leave
 1432              		.cfi_restore 6
 1433              		.cfi_def_cfa 7, 8
 1434 0035 C3       		ret
 1435              		.cfi_endproc
 1436              	.LFE69:
 1438              		.text
 1439              		.globl	kmain
 1441              	kmain:
 1442              	.LFB70:
 1443              		.file 9 "../src/kernel/entry.cpp"
   1:../src/kernel/entry.cpp **** #include "FastOS.h"
   2:../src/kernel/entry.cpp **** 
   3:../src/kernel/entry.cpp **** extern "C" {
   4:../src/kernel/entry.cpp **** 	int kmain(unsigned long magic, unsigned long mbi) {
 1444              		.loc 9 4 0
 1445              		.cfi_startproc
 1446 05ac 55       		push	rbp
 1447              		.cfi_def_cfa_offset 16
 1448              		.cfi_offset 6, -16
 1449 05ad 4889E5   		mov	rbp, rsp
 1450              		.cfi_def_cfa_register 6
 1451 05b0 4883EC20 		sub	rsp, 32
 1452 05b4 48897DE8 		mov	QWORD PTR [rbp-24], rdi
 1453 05b8 488975E0 		mov	QWORD PTR [rbp-32], rsi
   5:../src/kernel/entry.cpp **** 		FastOS::FastOS os;
   6:../src/kernel/entry.cpp **** 		os.main(magic, mbi);
 1454              		.loc 9 6 0
 1455 05bc 488B55E0 		mov	rdx, QWORD PTR [rbp-32]
 1456 05c0 488B4DE8 		mov	rcx, QWORD PTR [rbp-24]
 1457 05c4 488D45F8 		lea	rax, [rbp-8]
 1458 05c8 4889CE   		mov	rsi, rcx
 1459 05cb 4889C7   		mov	rdi, rax
 1460 05ce E8000000 		call	_ZN6FastOS6FastOS4mainEmm
 1460      00
   7:../src/kernel/entry.cpp **** 		return 0;
 1461              		.loc 9 7 0
 1462 05d3 B8000000 		mov	eax, 0
 1462      00
   8:../src/kernel/entry.cpp **** 
   9:../src/kernel/entry.cpp **** 	}
 1463              		.loc 9 9 0
 1464 05d8 C9       		leave
 1465              		.cfi_restore 6
 1466              		.cfi_def_cfa 7, 8
 1467 05d9 C3       		ret
 1468              		.cfi_endproc
 1469              	.LFE70:
 1472              	_Z41__static_initialization_and_destruction_0ii:
 1473              	.LFB72:
  10:../src/kernel/entry.cpp **** }...
 1474              		.loc 9 10 0
 1475              		.cfi_startproc
 1476 05da 55       		push	rbp
 1477              		.cfi_def_cfa_offset 16
 1478              		.cfi_offset 6, -16
 1479 05db 4889E5   		mov	rbp, rsp
 1480              		.cfi_def_cfa_register 6
 1481 05de 4883EC10 		sub	rsp, 16
 1482 05e2 897DFC   		mov	DWORD PTR [rbp-4], edi
 1483 05e5 8975F8   		mov	DWORD PTR [rbp-8], esi
 1484              		.loc 9 10 0
 1485 05e8 837DFC01 		cmp	DWORD PTR [rbp-4], 1
 1486 05ec 7515     		jne	.L84
 1487              		.loc 9 10 0 is_stmt 0 discriminator 1
 1488 05ee 817DF8FF 		cmp	DWORD PTR [rbp-8], 65535
 1488      FF0000
 1489 05f5 750C     		jne	.L84
 1490              		.file 10 "../src/kernel/memory/FastMemory.h"
   1:../src/kernel/memory/FastMemory.h **** #pragma once
   2:../src/kernel/memory/FastMemory.h **** #include <FastDefines.h>
   3:../src/kernel/memory/FastMemory.h **** #include <maths.h>
   4:../src/kernel/memory/FastMemory.h **** 
   5:../src/kernel/memory/FastMemory.h **** #include "../FastTerminal.h"
   6:../src/kernel/memory/FastMemory.h **** 
   7:../src/kernel/memory/FastMemory.h **** FASTOS_NAMESPACE_BEGIN
   8:../src/kernel/memory/FastMemory.h **** 
   9:../src/kernel/memory/FastMemory.h **** static FastTerminal term;
 1491              		.loc 10 9 0 is_stmt 1
 1492 05f7 48C7C700 		mov	rdi, OFFSET FLAT:_ZN6FastOSL4termE
 1492      000000
 1493 05fe E8000000 		call	_ZN6FastOS12FastTerminalC1Ev
 1493      00
 1494              	.L84:
 1495              		.loc 9 10 0
 1496 0603 90       		nop
 1497 0604 C9       		leave
 1498              		.cfi_restore 6
 1499              		.cfi_def_cfa 7, 8
 1500 0605 C3       		ret
 1501              		.cfi_endproc
 1502              	.LFE72:
 1505              	_GLOBAL__sub_I__ZN6FastOS9bwlower32Ej:
 1506              	.LFB73:
 1507              		.loc 9 10 0
 1508              		.cfi_startproc
 1509 0606 55       		push	rbp
 1510              		.cfi_def_cfa_offset 16
 1511              		.cfi_offset 6, -16
 1512 0607 4889E5   		mov	rbp, rsp
 1513              		.cfi_def_cfa_register 6
 1514              		.loc 9 10 0
 1515 060a BEFFFF00 		mov	esi, 65535
 1515      00
 1516 060f BF010000 		mov	edi, 1
 1516      00
 1517 0614 E8C1FFFF 		call	_Z41__static_initialization_and_destruction_0ii
 1517      FF
 1518 0619 5D       		pop	rbp
 1519              		.cfi_restore 6
 1520              		.cfi_def_cfa 7, 8
 1521 061a C3       		ret
 1522              		.cfi_endproc
 1523              	.LFE73:
 1525              		.section	.init_array,"aw"
 1526              		.align 8
 1527 0000 00000000 		.quad	_GLOBAL__sub_I__ZN6FastOS9bwlower32Ej
 1527      00000000 
 1528              		.text
 1529              	.Letext0:
 1530              		.file 11 "../src/fastlib/FastDefines.h"
 1531              		.file 12 "../src/fastlib/FastConstants.h"
