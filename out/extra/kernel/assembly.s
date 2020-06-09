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
  10              		.loc 1 6 33
  11              		.cfi_startproc
  12 0000 55       		push	rbp
  13              		.cfi_def_cfa_offset 16
  14              		.cfi_offset 6, -16
  15 0001 4889E5   		mov	rbp, rsp
  16              		.cfi_def_cfa_register 6
  17 0004 897DFC   		mov	DWORD PTR [rbp-4], edi
   7:../src/fastlib/maths.h **** 	return (uint16_t)nb;
  18              		.loc 1 7 19
  19 0007 8B45FC   		mov	eax, DWORD PTR [rbp-4]
   8:../src/fastlib/maths.h **** }
  20              		.loc 1 8 1
  21 000a 5D       		pop	rbp
  22              		.cfi_def_cfa 7, 8
  23 000b C3       		ret
  24              		.cfi_endproc
  25              	.LFE0:
  27              		.globl	_ZN6FastOS10bwhigher32Ej
  29              	_ZN6FastOS10bwhigher32Ej:
  30              	.LFB1:
   9:../src/fastlib/maths.h **** 
  10:../src/fastlib/maths.h **** uint16_t bwhigher32(uint32_t nb) {
  31              		.loc 1 10 34
  32              		.cfi_startproc
  33 000c 55       		push	rbp
  34              		.cfi_def_cfa_offset 16
  35              		.cfi_offset 6, -16
  36 000d 4889E5   		mov	rbp, rsp
  37              		.cfi_def_cfa_register 6
  38 0010 4883EC08 		sub	rsp, 8
  39 0014 897DFC   		mov	DWORD PTR [rbp-4], edi
  11:../src/fastlib/maths.h **** 	return bwlower32(nb >> 16);
  40              		.loc 1 11 18
  41 0017 8B45FC   		mov	eax, DWORD PTR [rbp-4]
  42 001a C1E810   		shr	eax, 16
  43 001d 89C7     		mov	edi, eax
  44 001f E8000000 		call	_ZN6FastOS9bwlower32Ej
  44      00
  12:../src/fastlib/maths.h **** }
  45              		.loc 1 12 1
  46 0024 C9       		leave
  47              		.cfi_def_cfa 7, 8
  48 0025 C3       		ret
  49              		.cfi_endproc
  50              	.LFE1:
  52              		.globl	_ZN6FastOS14tolittleendianEj
  54              	_ZN6FastOS14tolittleendianEj:
  55              	.LFB2:
  13:../src/fastlib/maths.h **** 
  14:../src/fastlib/maths.h **** uint32_t tolittleendian(uint32_t big) {
  56              		.loc 1 14 39
  57              		.cfi_startproc
  58 0026 55       		push	rbp
  59              		.cfi_def_cfa_offset 16
  60              		.cfi_offset 6, -16
  61 0027 4889E5   		mov	rbp, rsp
  62              		.cfi_def_cfa_register 6
  63 002a 897DFC   		mov	DWORD PTR [rbp-4], edi
  15:../src/fastlib/maths.h **** 	return ((big >> 24) & 0xff) |
  64              		.loc 1 15 15
  65 002d 8B45FC   		mov	eax, DWORD PTR [rbp-4]
  66 0030 C1E818   		shr	eax, 24
  67 0033 89C2     		mov	edx, eax
  16:../src/fastlib/maths.h **** 		((big << 8) & 0xff0000) |
  68              		.loc 1 16 9
  69 0035 8B45FC   		mov	eax, DWORD PTR [rbp-4]
  70 0038 C1E008   		sal	eax, 8
  71              		.loc 1 16 15
  72 003b 250000FF 		and	eax, 16711680
  72      00
  15:../src/fastlib/maths.h **** 	return ((big >> 24) & 0xff) |
  73              		.loc 1 15 30
  74 0040 09C2     		or	edx, eax
  17:../src/fastlib/maths.h **** 		((big >> 8) & 0xff00) |
  75              		.loc 1 17 9
  76 0042 8B45FC   		mov	eax, DWORD PTR [rbp-4]
  77 0045 C1E808   		shr	eax, 8
  78              		.loc 1 17 15
  79 0048 2500FF00 		and	eax, 65280
  79      00
  16:../src/fastlib/maths.h **** 		((big << 8) & 0xff0000) |
  80              		.loc 1 16 27
  81 004d 09C2     		or	edx, eax
  18:../src/fastlib/maths.h **** 		((big << 24) & 0xff000000);
  82              		.loc 1 18 9
  83 004f 8B45FC   		mov	eax, DWORD PTR [rbp-4]
  84 0052 C1E018   		sal	eax, 24
  85              		.loc 1 18 28
  86 0055 09D0     		or	eax, edx
  19:../src/fastlib/maths.h **** }
  87              		.loc 1 19 1
  88 0057 5D       		pop	rbp
  89              		.cfi_def_cfa 7, 8
  90 0058 C3       		ret
  91              		.cfi_endproc
  92              	.LFE2:
  94              		.section	.rodata
  95              		.align 32
  98              	_ZN6FastOSL15__log2_32_tab32E:
  99 0000 00000000 		.long	0
 100 0004 09000000 		.long	9
 101 0008 01000000 		.long	1
 102 000c 0A000000 		.long	10
 103 0010 0D000000 		.long	13
 104 0014 15000000 		.long	21
 105 0018 02000000 		.long	2
 106 001c 1D000000 		.long	29
 107 0020 0B000000 		.long	11
 108 0024 0E000000 		.long	14
 109 0028 10000000 		.long	16
 110 002c 12000000 		.long	18
 111 0030 16000000 		.long	22
 112 0034 19000000 		.long	25
 113 0038 03000000 		.long	3
 114 003c 1E000000 		.long	30
 115 0040 08000000 		.long	8
 116 0044 0C000000 		.long	12
 117 0048 14000000 		.long	20
 118 004c 1C000000 		.long	28
 119 0050 0F000000 		.long	15
 120 0054 11000000 		.long	17
 121 0058 18000000 		.long	24
 122 005c 07000000 		.long	7
 123 0060 13000000 		.long	19
 124 0064 1B000000 		.long	27
 125 0068 17000000 		.long	23
 126 006c 06000000 		.long	6
 127 0070 1A000000 		.long	26
 128 0074 05000000 		.long	5
 129 0078 04000000 		.long	4
 130 007c 1F000000 		.long	31
 131              		.text
 132              		.globl	_ZN6FastOS8isqrt_32Ej
 134              	_ZN6FastOS8isqrt_32Ej:
 135              	.LFB6:
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
 136              		.loc 1 53 33
 137              		.cfi_startproc
 138 0059 55       		push	rbp
 139              		.cfi_def_cfa_offset 16
 140              		.cfi_offset 6, -16
 141 005a 4889E5   		mov	rbp, rsp
 142              		.cfi_def_cfa_register 6
 143 005d 897DEC   		mov	DWORD PTR [rbp-20], edi
  54:../src/fastlib/maths.h **** 	uint32_t res = 0;
 144              		.loc 1 54 11
 145 0060 C745FC00 		mov	DWORD PTR [rbp-4], 0
 145      000000
  55:../src/fastlib/maths.h **** 	uint32_t bit = 1 << 14; // The second-to-top bit is set: 1 << 30 for 32 bits
 146              		.loc 1 55 11
 147 0067 C745F800 		mov	DWORD PTR [rbp-8], 16384
 147      400000
 148              	.L9:
  56:../src/fastlib/maths.h **** 
  57:../src/fastlib/maths.h **** 	// "bit" starts at the highest power of four <= the argument.
  58:../src/fastlib/maths.h **** 	while (bit > num)
 149              		.loc 1 58 13
 150 006e 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 151 0071 3B45EC   		cmp	eax, DWORD PTR [rbp-20]
 152 0074 7606     		jbe	.L8
  59:../src/fastlib/maths.h **** 		bit >>= 2;
 153              		.loc 1 59 7
 154 0076 C16DF802 		shr	DWORD PTR [rbp-8], 2
  58:../src/fastlib/maths.h **** 		bit >>= 2;
 155              		.loc 1 58 2
 156 007a EBF2     		jmp	.L9
 157              	.L8:
  60:../src/fastlib/maths.h **** 
  61:../src/fastlib/maths.h **** 	while (bit != 0) {
 158              		.loc 1 61 13
 159 007c 837DF800 		cmp	DWORD PTR [rbp-8], 0
 160 0080 7432     		je	.L10
  62:../src/fastlib/maths.h **** 		if (num >= res + bit) {
 161              		.loc 1 62 18
 162 0082 8B55FC   		mov	edx, DWORD PTR [rbp-4]
 163 0085 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 164 0088 01D0     		add	eax, edx
 165              		.loc 1 62 3
 166 008a 3945EC   		cmp	DWORD PTR [rbp-20], eax
 167 008d 721C     		jb	.L11
  63:../src/fastlib/maths.h **** 			num -= res + bit;
 168              		.loc 1 63 15
 169 008f 8B55FC   		mov	edx, DWORD PTR [rbp-4]
 170 0092 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 171 0095 01D0     		add	eax, edx
 172              		.loc 1 63 8
 173 0097 2945EC   		sub	DWORD PTR [rbp-20], eax
  64:../src/fastlib/maths.h **** 			res = (res >> 1) + bit;
 174              		.loc 1 64 15
 175 009a 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 176 009d D1E8     		shr	eax
 177 009f 89C2     		mov	edx, eax
 178              		.loc 1 64 8
 179 00a1 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 180 00a4 01D0     		add	eax, edx
 181 00a6 8945FC   		mov	DWORD PTR [rbp-4], eax
 182 00a9 EB03     		jmp	.L12
 183              	.L11:
  65:../src/fastlib/maths.h **** 		}
  66:../src/fastlib/maths.h **** 		else
  67:../src/fastlib/maths.h **** 			res >>= 1;
 184              		.loc 1 67 8
 185 00ab D16DFC   		shr	DWORD PTR [rbp-4]
 186              	.L12:
  68:../src/fastlib/maths.h **** 		bit >>= 2;
 187              		.loc 1 68 7
 188 00ae C16DF802 		shr	DWORD PTR [rbp-8], 2
  61:../src/fastlib/maths.h **** 		if (num >= res + bit) {
 189              		.loc 1 61 2
 190 00b2 EBC8     		jmp	.L8
 191              	.L10:
  69:../src/fastlib/maths.h **** 	}
  70:../src/fastlib/maths.h **** 	return res;
 192              		.loc 1 70 9
 193 00b4 8B45FC   		mov	eax, DWORD PTR [rbp-4]
  71:../src/fastlib/maths.h **** }
 194              		.loc 1 71 1
 195 00b7 5D       		pop	rbp
 196              		.cfi_def_cfa 7, 8
 197 00b8 C3       		ret
 198              		.cfi_endproc
 199              	.LFE6:
 201              		.section	.rodata
 202              		.align 4
 205              	_ZL8VGA_ADDR:
 206 0080 00800B00 		.long	753664
 207              		.section	.text._ZN6FastOS9vga_utils10entryColorENS0_9vga_colorES1_,"axG",@progbits,_ZN6FastOS9vga_
 208              		.weak	_ZN6FastOS9vga_utils10entryColorENS0_9vga_colorES1_
 210              	_ZN6FastOS9vga_utils10entryColorENS0_9vga_colorES1_:
 211              	.LFB7:
 212              		.file 2 "../src/kernel/memory/../vgautils.h"
   1:../src/kernel/memory/../vgautils.h **** #ifndef _VGAUTILS_H_GUARD
   2:../src/kernel/memory/../vgautils.h **** #define _VGAUTILS_H_GUARD
   3:../src/kernel/memory/../vgautils.h **** 
   4:../src/kernel/memory/../vgautils.h **** #include <FastDefines.h>
   5:../src/kernel/memory/../vgautils.h **** 
   6:../src/kernel/memory/../vgautils.h **** constexpr auto VGA_ADDR = 0xB8000;
   7:../src/kernel/memory/../vgautils.h **** 
   8:../src/kernel/memory/../vgautils.h **** FASTOS_NAMESPACE_BEGIN
   9:../src/kernel/memory/../vgautils.h **** 	class vga_utils {
  10:../src/kernel/memory/../vgautils.h **** 	public:
  11:../src/kernel/memory/../vgautils.h **** 		static const unsigned long VGA_WIDTH = 80;
  12:../src/kernel/memory/../vgautils.h **** 		static const unsigned long VGA_HEIGHT = 25;
  13:../src/kernel/memory/../vgautils.h **** 
  14:../src/kernel/memory/../vgautils.h **** 		enum vga_color {
  15:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_BLACK = 0,
  16:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_BLUE = 1,
  17:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_GREEN = 2,
  18:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_CYAN = 3,
  19:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_RED = 4,
  20:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_MAGENTA = 5,
  21:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_BROWN = 6,
  22:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_LIGHT_GREY = 7,
  23:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_DARK_GREY = 8,
  24:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_LIGHT_BLUE = 9,
  25:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_LIGHT_GREEN = 10,
  26:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_LIGHT_CYAN = 11,
  27:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_LIGHT_RED = 12,
  28:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_LIGHT_MAGENTA = 13,
  29:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_LIGHT_BROWN = 14,
  30:../src/kernel/memory/../vgautils.h **** 			VGA_COLOR_WHITE = 15,
  31:../src/kernel/memory/../vgautils.h **** 		};
  32:../src/kernel/memory/../vgautils.h **** 
  33:../src/kernel/memory/../vgautils.h **** 		//Convert readable color format to vga-readable format
  34:../src/kernel/memory/../vgautils.h **** 		static inline unsigned char entryColor(enum vga_color fg, enum vga_color bg)
 213              		.loc 2 34 31
 214              		.cfi_startproc
 215 0000 55       		push	rbp
 216              		.cfi_def_cfa_offset 16
 217              		.cfi_offset 6, -16
 218 0001 4889E5   		mov	rbp, rsp
 219              		.cfi_def_cfa_register 6
 220 0004 897DFC   		mov	DWORD PTR [rbp-4], edi
 221 0007 8975F8   		mov	DWORD PTR [rbp-8], esi
  35:../src/kernel/memory/../vgautils.h **** 		{
  36:../src/kernel/memory/../vgautils.h **** 			return fg | bg << 4;
 222              		.loc 2 36 16
 223 000a 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 224              		.loc 2 36 19
 225 000d C1E004   		sal	eax, 4
 226              		.loc 2 36 14
 227 0010 89C2     		mov	edx, eax
 228 0012 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 229 0015 09D0     		or	eax, edx
  37:../src/kernel/memory/../vgautils.h **** 		}
 230              		.loc 2 37 3
 231 0017 5D       		pop	rbp
 232              		.cfi_def_cfa 7, 8
 233 0018 C3       		ret
 234              		.cfi_endproc
 235              	.LFE7:
 237              		.section	.text._ZN6FastOS9vga_utils5entryEhh,"axG",@progbits,_ZN6FastOS9vga_utils5entryEhh,comdat
 238              		.weak	_ZN6FastOS9vga_utils5entryEhh
 240              	_ZN6FastOS9vga_utils5entryEhh:
 241              	.LFB8:
  38:../src/kernel/memory/../vgautils.h **** 
  39:../src/kernel/memory/../vgautils.h **** 		//Convert a character to vga-readable format with color support
  40:../src/kernel/memory/../vgautils.h **** 		static inline unsigned short entry(unsigned char uc, unsigned char color)
 242              		.loc 2 40 32
 243              		.cfi_startproc
 244 0000 55       		push	rbp
 245              		.cfi_def_cfa_offset 16
 246              		.cfi_offset 6, -16
 247 0001 4889E5   		mov	rbp, rsp
 248              		.cfi_def_cfa_register 6
 249 0004 89FA     		mov	edx, edi
 250 0006 89F0     		mov	eax, esi
 251 0008 8855FC   		mov	BYTE PTR [rbp-4], dl
 252 000b 8845F8   		mov	BYTE PTR [rbp-8], al
  41:../src/kernel/memory/../vgautils.h **** 		{
  42:../src/kernel/memory/../vgautils.h **** 			return (unsigned short)uc | (unsigned short)color << 8;
 253              		.loc 2 42 30
 254 000e 0FB645FC 		movzx	eax, BYTE PTR [rbp-4]
 255              		.loc 2 42 32
 256 0012 0FB655F8 		movzx	edx, BYTE PTR [rbp-8]
 257              		.loc 2 42 54
 258 0016 C1E208   		sal	edx, 8
 259              		.loc 2 42 30
 260 0019 09D0     		or	eax, edx
  43:../src/kernel/memory/../vgautils.h **** 		}
 261              		.loc 2 43 3
 262 001b 5D       		pop	rbp
 263              		.cfi_def_cfa 7, 8
 264 001c C3       		ret
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
 274              		.loc 3 6 32
 275              		.cfi_startproc
 276 00b9 55       		push	rbp
 277              		.cfi_def_cfa_offset 16
 278              		.cfi_offset 6, -16
 279 00ba 4889E5   		mov	rbp, rsp
 280              		.cfi_def_cfa_register 6
 281 00bd 48897DE8 		mov	QWORD PTR [rbp-24], rdi
   7:../src/fastlib/string.h **** 	int r = 0;
 282              		.loc 3 7 6
 283 00c1 C745FC00 		mov	DWORD PTR [rbp-4], 0
 283      000000
 284              	.L20:
   8:../src/fastlib/string.h **** 	while (str[r++]) {}
 285              		.loc 3 8 14
 286 00c8 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 287 00cb 8D5001   		lea	edx, [rax+1]
 288 00ce 8955FC   		mov	DWORD PTR [rbp-4], edx
 289 00d1 4863D0   		movsx	rdx, eax
 290              		.loc 3 8 16
 291 00d4 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 292 00d8 4801D0   		add	rax, rdx
 293 00db 0FB600   		movzx	eax, BYTE PTR [rax]
 294 00de 84C0     		test	al, al
 295 00e0 0F95C0   		setne	al
 296 00e3 84C0     		test	al, al
 297 00e5 7402     		je	.L19
 298              		.loc 3 8 2
 299 00e7 EBDF     		jmp	.L20
 300              	.L19:
   9:../src/fastlib/string.h **** 	return r;
 301              		.loc 3 9 9
 302 00e9 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 303 00ec 4898     		cdqe
  10:../src/fastlib/string.h **** }
 304              		.loc 3 10 1
 305 00ee 5D       		pop	rbp
 306              		.cfi_def_cfa 7, 8
 307 00ef C3       		ret
 308              		.cfi_endproc
 309              	.LFE9:
 311              		.globl	_ZN6FastOS6strcpyEPcPKcy
 313              	_ZN6FastOS6strcpyEPcPKcy:
 314              	.LFB10:
  11:../src/fastlib/string.h **** 
  12:../src/fastlib/string.h **** char* strcpy(char* dest, const char* from, size_t size) {
 315              		.loc 3 12 57
 316              		.cfi_startproc
 317 00f0 55       		push	rbp
 318              		.cfi_def_cfa_offset 16
 319              		.cfi_offset 6, -16
 320 00f1 4889E5   		mov	rbp, rsp
 321              		.cfi_def_cfa_register 6
 322 00f4 48897DF8 		mov	QWORD PTR [rbp-8], rdi
 323 00f8 488975F0 		mov	QWORD PTR [rbp-16], rsi
 324 00fc 488955E8 		mov	QWORD PTR [rbp-24], rdx
 325              	.L24:
  13:../src/fastlib/string.h **** 	do dest[size] = from[size]; while (size--);
 326              		.loc 3 13 27
 327 0100 488B55F0 		mov	rdx, QWORD PTR [rbp-16]
 328 0104 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 329 0108 4801D0   		add	rax, rdx
 330              		.loc 3 13 14
 331 010b 488B4DF8 		mov	rcx, QWORD PTR [rbp-8]
 332 010f 488B55E8 		mov	rdx, QWORD PTR [rbp-24]
 333 0113 4801CA   		add	rdx, rcx
 334              		.loc 3 13 27
 335 0116 0FB600   		movzx	eax, BYTE PTR [rax]
 336              		.loc 3 13 16
 337 0119 8802     		mov	BYTE PTR [rdx], al
 338              		.loc 3 13 41
 339 011b 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 340 011f 488D50FF 		lea	rdx, [rax-1]
 341 0123 488955E8 		mov	QWORD PTR [rbp-24], rdx
 342 0127 4885C0   		test	rax, rax
 343 012a 0F95C0   		setne	al
 344 012d 84C0     		test	al, al
 345 012f 7402     		je	.L23
 346              		.loc 3 13 2
 347 0131 EBCD     		jmp	.L24
 348              	.L23:
  14:../src/fastlib/string.h **** 	return dest;
 349              		.loc 3 14 9
 350 0133 488B45F8 		mov	rax, QWORD PTR [rbp-8]
  15:../src/fastlib/string.h **** }
 351              		.loc 3 15 1
 352 0137 5D       		pop	rbp
 353              		.cfi_def_cfa 7, 8
 354 0138 C3       		ret
 355              		.cfi_endproc
 356              	.LFE10:
 358              		.globl	_ZN6FastOS6strcmpEPKcS1_y
 360              	_ZN6FastOS6strcmpEPKcS1_y:
 361              	.LFB11:
  16:../src/fastlib/string.h **** 
  17:../src/fastlib/string.h **** //From: http://mgronhol.github.io/fast-strcmp/
  18:../src/fastlib/string.h **** int strcmp(const char* f, const char* s, size_t len) {
 362              		.loc 3 18 54
 363              		.cfi_startproc
 364 0139 55       		push	rbp
 365              		.cfi_def_cfa_offset 16
 366              		.cfi_offset 6, -16
 367 013a 4889E5   		mov	rbp, rsp
 368              		.cfi_def_cfa_register 6
 369 013d 48897DC8 		mov	QWORD PTR [rbp-56], rdi
 370 0141 488975C0 		mov	QWORD PTR [rbp-64], rsi
 371 0145 488955B8 		mov	QWORD PTR [rbp-72], rdx
  19:../src/fastlib/string.h ****     int fast = len / sizeof(size_t) + 1;
 372              		.loc 3 19 20
 373 0149 488B45B8 		mov	rax, QWORD PTR [rbp-72]
 374 014d 48C1E803 		shr	rax, 3
 375              		.loc 3 19 37
 376 0151 83C001   		add	eax, 1
 377              		.loc 3 19 9
 378 0154 8945FC   		mov	DWORD PTR [rbp-4], eax
  20:../src/fastlib/string.h ****     int offset = (fast - 1) * sizeof(size_t);
 379              		.loc 3 20 24
 380 0157 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 381 015a 83E801   		sub	eax, 1
 382 015d 4898     		cdqe
 383              		.loc 3 20 9
 384 015f C1E003   		sal	eax, 3
 385 0162 8945F8   		mov	DWORD PTR [rbp-8], eax
  21:../src/fastlib/string.h ****     int current_block = 0;
 386              		.loc 3 21 9
 387 0165 C745F400 		mov	DWORD PTR [rbp-12], 0
 387      000000
  22:../src/fastlib/string.h **** 
  23:../src/fastlib/string.h ****     if (len <= sizeof(size_t)) { fast = 0; }
 388              		.loc 3 23 5
 389 016c 48837DB8 		cmp	QWORD PTR [rbp-72], 8
 389      08
 390 0171 7707     		ja	.L27
 391              		.loc 3 23 39 discriminator 1
 392 0173 C745FC00 		mov	DWORD PTR [rbp-4], 0
 392      000000
 393              	.L27:
  24:../src/fastlib/string.h **** 
  25:../src/fastlib/string.h **** 
  26:../src/fastlib/string.h ****     size_t* lptr0 = (size_t*)f;
 394              		.loc 3 26 13
 395 017a 488B45C8 		mov	rax, QWORD PTR [rbp-56]
 396 017e 488945E0 		mov	QWORD PTR [rbp-32], rax
  27:../src/fastlib/string.h ****     size_t* lptr1 = (size_t*)s;
 397              		.loc 3 27 13
 398 0182 488B45C0 		mov	rax, QWORD PTR [rbp-64]
 399 0186 488945D8 		mov	QWORD PTR [rbp-40], rax
 400              	.L34:
  28:../src/fastlib/string.h **** 
  29:../src/fastlib/string.h ****     while (current_block < fast) {
 401              		.loc 3 29 26
 402 018a 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 403 018d 3B45FC   		cmp	eax, DWORD PTR [rbp-4]
 404 0190 0F8DCA00 		jge	.L28
 404      0000
 405              	.LBB2:
 406              	.LBB3:
  30:../src/fastlib/string.h ****         if ((lptr0[current_block] ^ lptr1[current_block])) {
 407              		.loc 3 30 20
 408 0196 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 409 0199 4898     		cdqe
 410              		.loc 3 30 33
 411 019b 488D14C5 		lea	rdx, [0+rax*8]
 411      00000000 
 412 01a3 488B45E0 		mov	rax, QWORD PTR [rbp-32]
 413 01a7 4801D0   		add	rax, rdx
 414 01aa 488B10   		mov	rdx, QWORD PTR [rax]
 415              		.loc 3 30 43
 416 01ad 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 417 01b0 4898     		cdqe
 418              		.loc 3 30 56
 419 01b2 488D0CC5 		lea	rcx, [0+rax*8]
 419      00000000 
 420 01ba 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 421 01be 4801C8   		add	rax, rcx
 422 01c1 488B00   		mov	rax, QWORD PTR [rax]
 423              		.loc 3 30 9
 424 01c4 4839C2   		cmp	rdx, rax
 425 01c7 0F848A00 		je	.L29
 425      0000
 426              	.LBB4:
  31:../src/fastlib/string.h ****             size_t pos;
  32:../src/fastlib/string.h ****             for (pos = current_block * sizeof(size_t); pos < len; ++pos) {
 427              		.loc 3 32 24
 428 01cd 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 429 01d0 4898     		cdqe
 430              		.loc 3 32 22
 431 01d2 48C1E003 		sal	rax, 3
 432 01d6 488945E8 		mov	QWORD PTR [rbp-24], rax
 433              	.L33:
 434              		.loc 3 32 60 discriminator 1
 435 01da 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 436 01de 483B45B8 		cmp	rax, QWORD PTR [rbp-72]
 437 01e2 7373     		jnb	.L29
  33:../src/fastlib/string.h ****                 if ((f[pos] ^ s[pos]) || (f[pos] == 0) || (s[pos] == 0)) {
 438              		.loc 3 33 27
 439 01e4 488B55C8 		mov	rdx, QWORD PTR [rbp-56]
 440 01e8 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 441 01ec 4801D0   		add	rax, rdx
 442 01ef 0FB610   		movzx	edx, BYTE PTR [rax]
 443              		.loc 3 33 36
 444 01f2 488B4DC0 		mov	rcx, QWORD PTR [rbp-64]
 445 01f6 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 446 01fa 4801C8   		add	rax, rcx
 447 01fd 0FB600   		movzx	eax, BYTE PTR [rax]
 448              		.loc 3 33 17
 449 0200 38C2     		cmp	dl, al
 450 0202 7524     		jne	.L30
 451              		.loc 3 33 48 discriminator 1
 452 0204 488B55C8 		mov	rdx, QWORD PTR [rbp-56]
 453 0208 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 454 020c 4801D0   		add	rax, rdx
 455 020f 0FB600   		movzx	eax, BYTE PTR [rax]
 456              		.loc 3 33 39 discriminator 1
 457 0212 84C0     		test	al, al
 458 0214 7412     		je	.L30
 459              		.loc 3 33 65 discriminator 2
 460 0216 488B55C0 		mov	rdx, QWORD PTR [rbp-64]
 461 021a 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 462 021e 4801D0   		add	rax, rdx
 463 0221 0FB600   		movzx	eax, BYTE PTR [rax]
 464              		.loc 3 33 56 discriminator 2
 465 0224 84C0     		test	al, al
 466 0226 7528     		jne	.L31
 467              	.L30:
  34:../src/fastlib/string.h ****                     return  (int)((unsigned char)f[pos] - (unsigned char)s[pos]);
 468              		.loc 3 34 55
 469 0228 488B55C8 		mov	rdx, QWORD PTR [rbp-56]
 470 022c 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 471 0230 4801D0   		add	rax, rdx
 472 0233 0FB600   		movzx	eax, BYTE PTR [rax]
 473              		.loc 3 34 35
 474 0236 0FB6D0   		movzx	edx, al
 475              		.loc 3 34 79
 476 0239 488B4DC0 		mov	rcx, QWORD PTR [rbp-64]
 477 023d 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 478 0241 4801C8   		add	rax, rcx
 479 0244 0FB600   		movzx	eax, BYTE PTR [rax]
 480              		.loc 3 34 59
 481 0247 0FB6C0   		movzx	eax, al
 482              		.loc 3 34 80
 483 024a 29C2     		sub	edx, eax
 484 024c 89D0     		mov	eax, edx
 485 024e EB76     		jmp	.L32
 486              	.L31:
  32:../src/fastlib/string.h ****                 if ((f[pos] ^ s[pos]) || (f[pos] == 0) || (s[pos] == 0)) {
 487              		.loc 3 32 13 discriminator 2
 488 0250 488345E8 		add	QWORD PTR [rbp-24], 1
 488      01
 489 0255 EB83     		jmp	.L33
 490              	.L29:
 491              	.LBE4:
 492              	.LBE3:
  35:../src/fastlib/string.h ****                 }
  36:../src/fastlib/string.h ****             }
  37:../src/fastlib/string.h ****         }
  38:../src/fastlib/string.h **** 
  39:../src/fastlib/string.h ****         ++current_block;
 493              		.loc 3 39 9
 494 0257 8345F401 		add	DWORD PTR [rbp-12], 1
 495              	.LBE2:
  29:../src/fastlib/string.h ****         if ((lptr0[current_block] ^ lptr1[current_block])) {
 496              		.loc 3 29 5
 497 025b E92AFFFF 		jmp	.L34
 497      FF
 498              	.L28:
  40:../src/fastlib/string.h ****     }
  41:../src/fastlib/string.h ****     while (len > offset) {
 499              		.loc 3 41 18
 500 0260 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 501 0263 4898     		cdqe
 502              		.loc 3 41 16
 503 0265 483945B8 		cmp	QWORD PTR [rbp-72], rax
 504 0269 7656     		jbe	.L35
  42:../src/fastlib/string.h ****         if ((f[offset] ^ s[offset])) {
 505              		.loc 3 42 16
 506 026b 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 507 026e 4863D0   		movsx	rdx, eax
 508              		.loc 3 42 22
 509 0271 488B45C8 		mov	rax, QWORD PTR [rbp-56]
 510 0275 4801D0   		add	rax, rdx
 511 0278 0FB610   		movzx	edx, BYTE PTR [rax]
 512              		.loc 3 42 28
 513 027b 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 514 027e 4863C8   		movsx	rcx, eax
 515              		.loc 3 42 34
 516 0281 488B45C0 		mov	rax, QWORD PTR [rbp-64]
 517 0285 4801C8   		add	rax, rcx
 518 0288 0FB600   		movzx	eax, BYTE PTR [rax]
 519              		.loc 3 42 9
 520 028b 38C2     		cmp	dl, al
 521 028d 742C     		je	.L36
  43:../src/fastlib/string.h ****             return (int)((unsigned char)f[offset] - (unsigned char)s[offset]);
 522              		.loc 3 43 43
 523 028f 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 524 0292 4863D0   		movsx	rdx, eax
 525              		.loc 3 43 49
 526 0295 488B45C8 		mov	rax, QWORD PTR [rbp-56]
 527 0299 4801D0   		add	rax, rdx
 528 029c 0FB600   		movzx	eax, BYTE PTR [rax]
 529              		.loc 3 43 26
 530 029f 0FB6D0   		movzx	edx, al
 531              		.loc 3 43 70
 532 02a2 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 533 02a5 4863C8   		movsx	rcx, eax
 534              		.loc 3 43 76
 535 02a8 488B45C0 		mov	rax, QWORD PTR [rbp-64]
 536 02ac 4801C8   		add	rax, rcx
 537 02af 0FB600   		movzx	eax, BYTE PTR [rax]
 538              		.loc 3 43 53
 539 02b2 0FB6C0   		movzx	eax, al
 540              		.loc 3 43 77
 541 02b5 29C2     		sub	edx, eax
 542 02b7 89D0     		mov	eax, edx
 543 02b9 EB0B     		jmp	.L32
 544              	.L36:
  44:../src/fastlib/string.h ****         }
  45:../src/fastlib/string.h ****         ++offset;
 545              		.loc 3 45 9
 546 02bb 8345F801 		add	DWORD PTR [rbp-8], 1
  41:../src/fastlib/string.h ****         if ((f[offset] ^ s[offset])) {
 547              		.loc 3 41 5
 548 02bf EB9F     		jmp	.L28
 549              	.L35:
  46:../src/fastlib/string.h ****     }
  47:../src/fastlib/string.h ****     return 0;
 550              		.loc 3 47 12
 551 02c1 B8000000 		mov	eax, 0
 551      00
 552              	.L32:
  48:../src/fastlib/string.h **** }
 553              		.loc 3 48 1
 554 02c6 5D       		pop	rbp
 555              		.cfi_def_cfa 7, 8
 556 02c7 C3       		ret
 557              		.cfi_endproc
 558              	.LFE11:
 560              		.globl	_ZN6FastOS6lengthEPc
 562              	_ZN6FastOS6lengthEPc:
 563              	.LFB12:
 564              		.file 4 "../src/fastlib/stdlib.h"
   1:../src/fastlib/stdlib.h **** #pragma once
   2:../src/fastlib/stdlib.h **** #include <FastDefines.h>
   3:../src/fastlib/stdlib.h **** 
   4:../src/fastlib/stdlib.h **** FASTOS_NAMESPACE_BEGIN
   5:../src/fastlib/stdlib.h **** 
   6:../src/fastlib/stdlib.h **** 
   7:../src/fastlib/stdlib.h **** 
   8:../src/fastlib/stdlib.h **** int length(char* ch) {
 565              		.loc 4 8 22
 566              		.cfi_startproc
 567 02c8 55       		push	rbp
 568              		.cfi_def_cfa_offset 16
 569              		.cfi_offset 6, -16
 570 02c9 4889E5   		mov	rbp, rsp
 571              		.cfi_def_cfa_register 6
 572 02cc 48897DE8 		mov	QWORD PTR [rbp-24], rdi
   9:../src/fastlib/stdlib.h **** 	int r = 0;
 573              		.loc 4 9 6
 574 02d0 C745FC00 		mov	DWORD PTR [rbp-4], 0
 574      000000
 575              	.L39:
  10:../src/fastlib/stdlib.h **** 	while(ch[r++]) {}
 576              		.loc 4 10 12
 577 02d7 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 578 02da 8D5001   		lea	edx, [rax+1]
 579 02dd 8955FC   		mov	DWORD PTR [rbp-4], edx
 580 02e0 4863D0   		movsx	rdx, eax
 581              		.loc 4 10 14
 582 02e3 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 583 02e7 4801D0   		add	rax, rdx
 584 02ea 0FB600   		movzx	eax, BYTE PTR [rax]
 585 02ed 84C0     		test	al, al
 586 02ef 0F95C0   		setne	al
 587 02f2 84C0     		test	al, al
 588 02f4 7402     		je	.L38
 589              		.loc 4 10 2
 590 02f6 EBDF     		jmp	.L39
 591              	.L38:
  11:../src/fastlib/stdlib.h **** 	return r;
 592              		.loc 4 11 9
 593 02f8 8B45FC   		mov	eax, DWORD PTR [rbp-4]
  12:../src/fastlib/stdlib.h **** }
 594              		.loc 4 12 1
 595 02fb 5D       		pop	rbp
 596              		.cfi_def_cfa 7, 8
 597 02fc C3       		ret
 598              		.cfi_endproc
 599              	.LFE12:
 601              		.globl	_ZN6FastOS4itoaEiPci
 603              	_ZN6FastOS4itoaEiPci:
 604              	.LFB14:
  13:../src/fastlib/stdlib.h **** 
  14:../src/fastlib/stdlib.h **** template<typename _Ty>_Ty* arrayCopy(_Ty* dest, const _Ty* from, size_t size) {
  15:../src/fastlib/stdlib.h **** 	do dest[size] = from[size]; while (size--);
  16:../src/fastlib/stdlib.h **** 	return dest;
  17:../src/fastlib/stdlib.h **** }
  18:../src/fastlib/stdlib.h **** 
  19:../src/fastlib/stdlib.h **** int itoa(int value, char* sp, int radix)
  20:../src/fastlib/stdlib.h **** {
 605              		.loc 4 20 1
 606              		.cfi_startproc
 607 02fd 55       		push	rbp
 608              		.cfi_def_cfa_offset 16
 609              		.cfi_offset 6, -16
 610 02fe 4889E5   		mov	rbp, rsp
 611              		.cfi_def_cfa_register 6
 612 0301 897DCC   		mov	DWORD PTR [rbp-52], edi
 613 0304 488975C0 		mov	QWORD PTR [rbp-64], rsi
 614 0308 8955C8   		mov	DWORD PTR [rbp-56], edx
  21:../src/fastlib/stdlib.h ****     char tmp[16];// be careful with the length of the buffer
  22:../src/fastlib/stdlib.h ****     char* tp = tmp;
 615              		.loc 4 22 11
 616 030b 488D45D0 		lea	rax, [rbp-48]
 617 030f 488945F8 		mov	QWORD PTR [rbp-8], rax
  23:../src/fastlib/stdlib.h ****     int i;
  24:../src/fastlib/stdlib.h ****     unsigned v;
  25:../src/fastlib/stdlib.h **** 
  26:../src/fastlib/stdlib.h ****     int sign = (radix == 10 && value < 0);
 618              		.loc 4 26 29
 619 0313 837DC80A 		cmp	DWORD PTR [rbp-56], 10
 620 0317 750D     		jne	.L42
 621              		.loc 4 26 29 is_stmt 0 discriminator 1
 622 0319 837DCC00 		cmp	DWORD PTR [rbp-52], 0
 623 031d 7907     		jns	.L42
 624              		.loc 4 26 29 discriminator 3
 625 031f B8010000 		mov	eax, 1
 625      00
 626 0324 EB05     		jmp	.L43
 627              	.L42:
 628              		.loc 4 26 29 discriminator 4
 629 0326 B8000000 		mov	eax, 0
 629      00
 630              	.L43:
 631              		.loc 4 26 9 is_stmt 1 discriminator 6
 632 032b 0FB6C0   		movzx	eax, al
 633 032e 8945EC   		mov	DWORD PTR [rbp-20], eax
  27:../src/fastlib/stdlib.h ****     if (sign)
 634              		.loc 4 27 5 discriminator 6
 635 0331 837DEC00 		cmp	DWORD PTR [rbp-20], 0
 636 0335 740A     		je	.L44
  28:../src/fastlib/stdlib.h ****         v = -value;
 637              		.loc 4 28 13
 638 0337 8B45CC   		mov	eax, DWORD PTR [rbp-52]
 639 033a F7D8     		neg	eax
 640              		.loc 4 28 11
 641 033c 8945F4   		mov	DWORD PTR [rbp-12], eax
 642 033f EB06     		jmp	.L50
 643              	.L44:
  29:../src/fastlib/stdlib.h ****     else
  30:../src/fastlib/stdlib.h ****         v = (unsigned)value;
 644              		.loc 4 30 11
 645 0341 8B45CC   		mov	eax, DWORD PTR [rbp-52]
 646 0344 8945F4   		mov	DWORD PTR [rbp-12], eax
 647              	.L50:
  31:../src/fastlib/stdlib.h **** 
  32:../src/fastlib/stdlib.h ****     while (v || tp == tmp)
 648              		.loc 4 32 14
 649 0347 837DF400 		cmp	DWORD PTR [rbp-12], 0
 650 034b 750A     		jne	.L46
 651              		.loc 4 32 14 is_stmt 0 discriminator 1
 652 034d 488D45D0 		lea	rax, [rbp-48]
 653 0351 483945F8 		cmp	QWORD PTR [rbp-8], rax
 654 0355 7558     		jne	.L47
 655              	.L46:
  33:../src/fastlib/stdlib.h ****     {
  34:../src/fastlib/stdlib.h ****         i = v % radix;
 656              		.loc 4 34 17 is_stmt 1
 657 0357 8B4DC8   		mov	ecx, DWORD PTR [rbp-56]
 658              		.loc 4 34 15
 659 035a 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 660 035d BA000000 		mov	edx, 0
 660      00
 661 0362 F7F1     		div	ecx
 662 0364 89D0     		mov	eax, edx
 663              		.loc 4 34 11
 664 0366 8945E8   		mov	DWORD PTR [rbp-24], eax
  35:../src/fastlib/stdlib.h ****         v /= radix; // v/=radix uses less CPU clocks than v=v/radix does
 665              		.loc 4 35 14
 666 0369 8B75C8   		mov	esi, DWORD PTR [rbp-56]
 667              		.loc 4 35 11
 668 036c 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 669 036f BA000000 		mov	edx, 0
 669      00
 670 0374 F7F6     		div	esi
 671 0376 8945F4   		mov	DWORD PTR [rbp-12], eax
  36:../src/fastlib/stdlib.h ****         if (i < 10)
 672              		.loc 4 36 9
 673 0379 837DE809 		cmp	DWORD PTR [rbp-24], 9
 674 037d 7F18     		jg	.L48
  37:../src/fastlib/stdlib.h ****             *tp++ = i + '0';
 675              		.loc 4 37 23
 676 037f 8B45E8   		mov	eax, DWORD PTR [rbp-24]
 677 0382 8D4830   		lea	ecx, [rax+48]
 678              		.loc 4 37 16
 679 0385 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 680 0389 488D5001 		lea	rdx, [rax+1]
 681 038d 488955F8 		mov	QWORD PTR [rbp-8], rdx
 682              		.loc 4 37 23
 683 0391 89CA     		mov	edx, ecx
 684              		.loc 4 37 19
 685 0393 8810     		mov	BYTE PTR [rax], dl
 686 0395 EBB0     		jmp	.L50
 687              	.L48:
  38:../src/fastlib/stdlib.h ****         else
  39:../src/fastlib/stdlib.h ****             *tp++ = i + 'a' - 10;
 688              		.loc 4 39 29
 689 0397 8B45E8   		mov	eax, DWORD PTR [rbp-24]
 690 039a 8D4857   		lea	ecx, [rax+87]
 691              		.loc 4 39 16
 692 039d 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 693 03a1 488D5001 		lea	rdx, [rax+1]
 694 03a5 488955F8 		mov	QWORD PTR [rbp-8], rdx
 695              		.loc 4 39 29
 696 03a9 89CA     		mov	edx, ecx
 697              		.loc 4 39 19
 698 03ab 8810     		mov	BYTE PTR [rax], dl
  32:../src/fastlib/stdlib.h ****     {
 699              		.loc 4 32 5
 700 03ad EB98     		jmp	.L50
 701              	.L47:
  40:../src/fastlib/stdlib.h ****     }
  41:../src/fastlib/stdlib.h **** 
  42:../src/fastlib/stdlib.h ****     int len = tp - tmp;
 702              		.loc 4 42 18
 703 03af 488D45D0 		lea	rax, [rbp-48]
 704 03b3 488B55F8 		mov	rdx, QWORD PTR [rbp-8]
 705 03b7 4829C2   		sub	rdx, rax
 706 03ba 4889D0   		mov	rax, rdx
 707              		.loc 4 42 9
 708 03bd 8945F0   		mov	DWORD PTR [rbp-16], eax
  43:../src/fastlib/stdlib.h **** 
  44:../src/fastlib/stdlib.h ****     if (sign)
 709              		.loc 4 44 5
 710 03c0 837DEC00 		cmp	DWORD PTR [rbp-20], 0
 711 03c4 7413     		je	.L53
  45:../src/fastlib/stdlib.h ****     {
  46:../src/fastlib/stdlib.h ****         *sp++ = '-';
 712              		.loc 4 46 12
 713 03c6 488B45C0 		mov	rax, QWORD PTR [rbp-64]
 714 03ca 488D5001 		lea	rdx, [rax+1]
 715 03ce 488955C0 		mov	QWORD PTR [rbp-64], rdx
 716              		.loc 4 46 15
 717 03d2 C6002D   		mov	BYTE PTR [rax], 45
  47:../src/fastlib/stdlib.h ****         len++;
 718              		.loc 4 47 12
 719 03d5 8345F001 		add	DWORD PTR [rbp-16], 1
 720              	.L53:
  48:../src/fastlib/stdlib.h ****     }
  49:../src/fastlib/stdlib.h **** 
  50:../src/fastlib/stdlib.h ****     while (tp > tmp)
 721              		.loc 4 50 15
 722 03d9 488D45D0 		lea	rax, [rbp-48]
 723 03dd 483945F8 		cmp	QWORD PTR [rbp-8], rax
 724 03e1 761C     		jbe	.L52
  51:../src/fastlib/stdlib.h ****         *sp++ = *--tp;
 725              		.loc 4 51 15
 726 03e3 48836DF8 		sub	QWORD PTR [rbp-8], 1
 726      01
 727              		.loc 4 51 12
 728 03e8 488B45C0 		mov	rax, QWORD PTR [rbp-64]
 729 03ec 488D5001 		lea	rdx, [rax+1]
 730 03f0 488955C0 		mov	QWORD PTR [rbp-64], rdx
 731              		.loc 4 51 17
 732 03f4 488B55F8 		mov	rdx, QWORD PTR [rbp-8]
 733 03f8 0FB612   		movzx	edx, BYTE PTR [rdx]
 734              		.loc 4 51 15
 735 03fb 8810     		mov	BYTE PTR [rax], dl
  50:../src/fastlib/stdlib.h ****         *sp++ = *--tp;
 736              		.loc 4 50 5
 737 03fd EBDA     		jmp	.L53
 738              	.L52:
  52:../src/fastlib/stdlib.h **** 
  53:../src/fastlib/stdlib.h ****     return len;
 739              		.loc 4 53 12
 740 03ff 8B45F0   		mov	eax, DWORD PTR [rbp-16]
  54:../src/fastlib/stdlib.h **** }
 741              		.loc 4 54 1
 742 0402 5D       		pop	rbp
 743              		.cfi_def_cfa 7, 8
 744 0403 C3       		ret
 745              		.cfi_endproc
 746              	.LFE14:
 748              		.data
 749              		.align 16
 752              	_ZZN6FastOS5uitoaEjiE5decim:
 753 0000 30313233 		.string	"0123456789ABCDEF"
 753      34353637 
 753      38394142 
 753      43444546 
 753      00
 754              		.local	_ZZN6FastOS5uitoaEjiE6buffer
 755              		.comm	_ZZN6FastOS5uitoaEjiE6buffer,34,32
 756              		.text
 757              		.globl	_ZN6FastOS5uitoaEji
 759              	_ZN6FastOS5uitoaEji:
 760              	.LFB15:
  55:../src/fastlib/stdlib.h **** 
  56:../src/fastlib/stdlib.h **** char* uitoa(uint32_t num, int base) {
 761              		.loc 4 56 37
 762              		.cfi_startproc
 763 0404 55       		push	rbp
 764              		.cfi_def_cfa_offset 16
 765              		.cfi_offset 6, -16
 766 0405 4889E5   		mov	rbp, rsp
 767              		.cfi_def_cfa_register 6
 768 0408 897DEC   		mov	DWORD PTR [rbp-20], edi
 769 040b 8975E8   		mov	DWORD PTR [rbp-24], esi
  57:../src/fastlib/stdlib.h **** 	static char decim[] = "0123456789ABCDEF";
  58:../src/fastlib/stdlib.h **** 	static char buffer[34];
  59:../src/fastlib/stdlib.h **** 	char* ptr;
  60:../src/fastlib/stdlib.h **** 
  61:../src/fastlib/stdlib.h **** 	ptr = &buffer[33];
 770              		.loc 4 61 6
 771 040e 48C745F8 		mov	QWORD PTR [rbp-8], OFFSET FLAT:_ZZN6FastOS5uitoaEjiE6buffer+33
 771      00000000 
  62:../src/fastlib/stdlib.h **** 	*ptr = '\0';
 772              		.loc 4 62 7
 773 0416 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 774 041a C60000   		mov	BYTE PTR [rax], 0
 775              	.L57:
  63:../src/fastlib/stdlib.h **** 
  64:../src/fastlib/stdlib.h **** 	do
  65:../src/fastlib/stdlib.h **** 	{
  66:../src/fastlib/stdlib.h **** 		*--ptr = decim[num % base];
 776              		.loc 4 66 24
 777 041d 8B4DE8   		mov	ecx, DWORD PTR [rbp-24]
 778              		.loc 4 66 22
 779 0420 8B45EC   		mov	eax, DWORD PTR [rbp-20]
 780 0423 BA000000 		mov	edx, 0
 780      00
 781 0428 F7F1     		div	ecx
 782 042a 89D0     		mov	eax, edx
 783              		.loc 4 66 10
 784 042c 48836DF8 		sub	QWORD PTR [rbp-8], 1
 784      01
 785              		.loc 4 66 28
 786 0431 89C0     		mov	eax, eax
 787 0433 0FB69000 		movzx	edx, BYTE PTR _ZZN6FastOS5uitoaEjiE5decim[rax]
 787      000000
 788              		.loc 4 66 10
 789 043a 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 790 043e 8810     		mov	BYTE PTR [rax], dl
  67:../src/fastlib/stdlib.h **** 		num /= base;
 791              		.loc 4 67 10
 792 0440 8B75E8   		mov	esi, DWORD PTR [rbp-24]
 793              		.loc 4 67 7
 794 0443 8B45EC   		mov	eax, DWORD PTR [rbp-20]
 795 0446 BA000000 		mov	edx, 0
 795      00
 796 044b F7F6     		div	esi
 797 044d 8945EC   		mov	DWORD PTR [rbp-20], eax
  68:../src/fastlib/stdlib.h **** 	} while (num != 0);
 798              		.loc 4 68 15
 799 0450 837DEC00 		cmp	DWORD PTR [rbp-20], 0
 800 0454 7402     		je	.L56
  64:../src/fastlib/stdlib.h **** 	{
 801              		.loc 4 64 2
 802 0456 EBC5     		jmp	.L57
 803              	.L56:
  69:../src/fastlib/stdlib.h **** 
  70:../src/fastlib/stdlib.h **** 	return(ptr);
 804              		.loc 4 70 12
 805 0458 488B45F8 		mov	rax, QWORD PTR [rbp-8]
  71:../src/fastlib/stdlib.h **** }
 806              		.loc 4 71 1
 807 045c 5D       		pop	rbp
 808              		.cfi_def_cfa 7, 8
 809 045d C3       		ret
 810              		.cfi_endproc
 811              	.LFE15:
 813              		.section	.text._ZN6FastOS17FastVGATextBufferC2EPtyy,"axG",@progbits,_ZN6FastOS17FastVGATextBufferC
 814              		.align 2
 815              		.weak	_ZN6FastOS17FastVGATextBufferC2EPtyy
 817              	_ZN6FastOS17FastVGATextBufferC2EPtyy:
 818              	.LFB19:
 819              		.file 5 "../src/kernel/memory/../graphics/FastVGATextBuffer.h"
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
 820              		.loc 5 20 2
 821              		.cfi_startproc
 822 0000 55       		push	rbp
 823              		.cfi_def_cfa_offset 16
 824              		.cfi_offset 6, -16
 825 0001 4889E5   		mov	rbp, rsp
 826              		.cfi_def_cfa_register 6
 827 0004 4883EC20 		sub	rsp, 32
 828 0008 48897DF8 		mov	QWORD PTR [rbp-8], rdi
 829 000c 488975F0 		mov	QWORD PTR [rbp-16], rsi
 830 0010 488955E8 		mov	QWORD PTR [rbp-24], rdx
 831 0014 48894DE0 		mov	QWORD PTR [rbp-32], rcx
 832              	.LBB5:
  21:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 		: m_VGA{ vga }, m_SizeX{ sizeX }, m_SizeY{ sizeY },
  22:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 		m_VirtualVGA{ (uint16_t*)(vga - sizeof(uint16_t)*(m_SizeX * (m_SizeY - 1))) },
  23:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 		m_IndexY{ 0 }, m_ColorBackground{ vga_utils::VGA_COLOR_BLACK },
  24:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 		m_ColorForeground{ vga_utils::VGA_COLOR_LIGHT_GREY },
  25:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 		m_ColorGeneral{ vga_utils::entryColor(m_ColorForeground, m_ColorBackground) } {
 833              		.loc 5 25 79
 834 0018 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 835 001c 488B55E8 		mov	rdx, QWORD PTR [rbp-24]
 836 0020 488910   		mov	QWORD PTR [rax], rdx
 837 0023 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 838 0027 488B55E0 		mov	rdx, QWORD PTR [rbp-32]
 839 002b 48895008 		mov	QWORD PTR [rax+8], rdx
 840 002f 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 841 0033 488B55F0 		mov	rdx, QWORD PTR [rbp-16]
 842 0037 48895010 		mov	QWORD PTR [rax+16], rdx
  22:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 		m_IndexY{ 0 }, m_ColorBackground{ vga_utils::VGA_COLOR_BLACK },
 843              		.loc 5 22 53
 844 003b 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 845 003f 488B10   		mov	rdx, QWORD PTR [rax]
  22:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 		m_IndexY{ 0 }, m_ColorBackground{ vga_utils::VGA_COLOR_BLACK },
 846              		.loc 5 22 64
 847 0042 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 848 0046 488B4008 		mov	rax, QWORD PTR [rax+8]
  22:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 		m_IndexY{ 0 }, m_ColorBackground{ vga_utils::VGA_COLOR_BLACK },
 849              		.loc 5 22 33
 850 004a 48C1E002 		sal	rax, 2
 851 004e 4883E804 		sub	rax, 4
 852 0052 480FAFC2 		imul	rax, rdx
 853 0056 48F7D8   		neg	rax
 854 0059 4889C2   		mov	rdx, rax
 855 005c 488B45F0 		mov	rax, QWORD PTR [rbp-16]
 856 0060 4801C2   		add	rdx, rax
 857              		.loc 5 25 79
 858 0063 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 859 0067 48895018 		mov	QWORD PTR [rax+24], rdx
 860 006b 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 861 006f 48C74020 		mov	QWORD PTR [rax+32], 0
 861      00000000 
 862 0077 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 863 007b C7402800 		mov	DWORD PTR [rax+40], 0
 863      000000
 864 0082 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 865 0086 C7402C07 		mov	DWORD PTR [rax+44], 7
 865      000000
 866              		.loc 5 25 40
 867 008d 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 868 0091 8B5028   		mov	edx, DWORD PTR [rax+40]
 869 0094 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 870 0098 8B402C   		mov	eax, DWORD PTR [rax+44]
 871 009b 89D6     		mov	esi, edx
 872 009d 89C7     		mov	edi, eax
 873 009f E8000000 		call	_ZN6FastOS9vga_utils10entryColorENS0_9vga_colorES1_
 873      00
 874              		.loc 5 25 79
 875 00a4 488B55F8 		mov	rdx, QWORD PTR [rbp-8]
 876 00a8 884230   		mov	BYTE PTR [rdx+48], al
 877              	.LBE5:
  26:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 
  27:../src/kernel/memory/../graphics/FastVGATextBuffer.h **** 	}
 878              		.loc 5 27 2
 879 00ab 90       		nop
 880 00ac C9       		leave
 881              		.cfi_def_cfa 7, 8
 882 00ad C3       		ret
 883              		.cfi_endproc
 884              	.LFE19:
 886              		.weak	_ZN6FastOS17FastVGATextBufferC1EPtyy
 887              		.set	_ZN6FastOS17FastVGATextBufferC1EPtyy,_ZN6FastOS17FastVGATextBufferC2EPtyy
 888              		.section	.rodata
 889              		.align 4
 892              	_ZN6FastOSL12INT_BIOS_MEME:
 893 0084 15000000 		.long	21
 894              		.align 4
 897              	_ZN6FastOSL11INT_A20_OFFE:
 898 0088 00240000 		.long	9216
 899              		.align 4
 902              	_ZN6FastOSL10INT_A20_ONE:
 903 008c 01240000 		.long	9217
 904              		.align 4
 907              	_ZN6FastOSL14INT_A20_STATUSE:
 908 0090 02240000 		.long	9218
 909              		.align 4
 912              	_ZN6FastOSL15INT_A20_SUPPORTE:
 913 0094 03240000 		.long	9219
 914              		.align 4
 917              	_ZN6FastOSL14INT_MEMORY_MAPE:
 918 0098 20E80000 		.long	59424
 919              		.align 4
 922              	_ZN6FastOSL20INT_MEMORY_MAP_MAGICE:
 923 009c 50414D53 		.long	1397571920
 924              		.align 4
 927              	_ZN6FastOSL17REG_FLAGS_MASK_CFE:
 928 00a0 01000000 		.long	1
 929              		.align 4
 932              	_ZN6FastOSL17REG_FLAGS_MASK_PFE:
 933 00a4 04000000 		.long	4
 934              		.align 4
 937              	_ZN6FastOSL17REG_FLAGS_MASK_AFE:
 938 00a8 10000000 		.long	16
 939              		.align 4
 942              	_ZN6FastOSL17REG_FLAGS_MASK_ZFE:
 943 00ac 40000000 		.long	64
 944              		.align 4
 947              	_ZN6FastOSL17REG_FLAGS_MASK_SFE:
 948 00b0 80000000 		.long	128
 949              		.align 4
 952              	_ZN6FastOSL17REG_FLAGS_MASK_TFE:
 953 00b4 00010000 		.long	256
 954              		.align 4
 957              	_ZN6FastOSL17REG_FLAGS_MASK_IFE:
 958 00b8 00020000 		.long	512
 959              		.align 4
 962              	_ZN6FastOSL17REG_FLAGS_MASK_DFE:
 963 00bc 00040000 		.long	1024
 964              		.align 4
 967              	_ZN6FastOSL17REG_FLAGS_MASK_OFE:
 968 00c0 00080000 		.long	2048
 969              		.align 4
 972              	_ZN6FastOSL18REG_EFLAGS_MASK_RFE:
 973 00c4 00000100 		.long	65536
 974              		.align 4
 977              	_ZN6FastOSL18REG_EFLAGS_MASK_VME:
 978 00c8 00000200 		.long	131072
 979              		.align 4
 982              	_ZN6FastOSL18REG_EFLAGS_MASK_ACE:
 983 00cc 00000400 		.long	262144
 984              		.align 4
 987              	_ZN6FastOSL19REG_EFLAGS_MASK_VIFE:
 988 00d0 00000800 		.long	524288
 989              		.align 4
 992              	_ZN6FastOSL19REG_EFLAGS_MASK_VIPE:
 993 00d4 00001000 		.long	1048576
 994              		.align 4
 997              	_ZN6FastOSL18REG_EFLAGS_MASK_IDE:
 998 00d8 00002000 		.long	2097152
 999              		.text
 1000              		.globl	_ZN6FastOS8initregsEPNS_8regs32_tE
 1002              	_ZN6FastOS8initregsEPNS_8regs32_tE:
 1003              	.LFB38:
 1004              		.file 6 "../src/fastlib/FastAsm.h"
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
  90:../src/fastlib/FastAsm.h ****     extern void int32(unsigned char intnum, regs16_t* regs);
  91:../src/fastlib/FastAsm.h ****     extern void intcall(uint8_t int_no, const regs32_t* ireg, regs32_t* oreg);
  92:../src/fastlib/FastAsm.h ****     extern void get_mmap(int seg, int off);
  93:../src/fastlib/FastAsm.h ****     extern reg16_t get_ds();
  94:../src/fastlib/FastAsm.h ****     extern reg16_t get_fs();
  95:../src/fastlib/FastAsm.h ****     extern reg16_t get_gs();
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
 1005              		.loc 6 146 1
 1006              		.cfi_startproc
 1007 045e 55       		push	rbp
 1008              		.cfi_def_cfa_offset 16
 1009              		.cfi_offset 6, -16
 1010 045f 4889E5   		mov	rbp, rsp
 1011              		.cfi_def_cfa_register 6
 1012 0462 4883EC10 		sub	rsp, 16
 1013 0466 48897DF8 		mov	QWORD PTR [rbp-8], rdi
 147:../src/fastlib/FastAsm.h ****     memset(reg, 0, sizeof(*reg));
 1014              		.loc 6 147 5
 1015 046a 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1016 046e 48C70000 		mov	QWORD PTR [rax], 0
 1016      000000
 1017 0475 48C74008 		mov	QWORD PTR [rax+8], 0
 1017      00000000 
 1018 047d 48C74010 		mov	QWORD PTR [rax+16], 0
 1018      00000000 
 1019 0485 48C74018 		mov	QWORD PTR [rax+24], 0
 1019      00000000 
 1020 048d 48C74020 		mov	QWORD PTR [rax+32], 0
 1020      00000000 
 1021 0495 C7402800 		mov	DWORD PTR [rax+40], 0
 1021      000000
 148:../src/fastlib/FastAsm.h ****     reg->eflags |= X86_EFLAGS_CF;
 1022              		.loc 6 148 17
 1023 049c 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1024 04a0 8B4028   		mov	eax, DWORD PTR [rax+40]
 1025 04a3 83C801   		or	eax, 1
 1026 04a6 89C2     		mov	edx, eax
 1027 04a8 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1028 04ac 895028   		mov	DWORD PTR [rax+40], edx
 149:../src/fastlib/FastAsm.h ****     reg->ds = get_ds();
 1029              		.loc 6 149 21
 1030 04af E8000000 		call	get_ds
 1030      00
 1031              		.loc 6 149 13
 1032 04b4 488B55F8 		mov	rdx, QWORD PTR [rbp-8]
 1033 04b8 66894226 		mov	WORD PTR [rdx+38], ax
 150:../src/fastlib/FastAsm.h ****     reg->es = get_ds();
 1034              		.loc 6 150 21
 1035 04bc E8000000 		call	get_ds
 1035      00
 1036              		.loc 6 150 13
 1037 04c1 488B55F8 		mov	rdx, QWORD PTR [rbp-8]
 1038 04c5 66894224 		mov	WORD PTR [rdx+36], ax
 151:../src/fastlib/FastAsm.h ****     reg->fs = get_fs();
 1039              		.loc 6 151 21
 1040 04c9 E8000000 		call	get_fs
 1040      00
 1041              		.loc 6 151 13
 1042 04ce 488B55F8 		mov	rdx, QWORD PTR [rbp-8]
 1043 04d2 66894222 		mov	WORD PTR [rdx+34], ax
 152:../src/fastlib/FastAsm.h ****     reg->gs = get_gs();
 1044              		.loc 6 152 21
 1045 04d6 E8000000 		call	get_gs
 1045      00
 1046              		.loc 6 152 13
 1047 04db 488B55F8 		mov	rdx, QWORD PTR [rbp-8]
 1048 04df 66894220 		mov	WORD PTR [rdx+32], ax
 153:../src/fastlib/FastAsm.h **** }
 1049              		.loc 6 153 1
 1050 04e3 90       		nop
 1051 04e4 C9       		leave
 1052              		.cfi_def_cfa 7, 8
 1053 04e5 C3       		ret
 1054              		.cfi_endproc
 1055              	.LFE38:
 1057              		.section	.text._ZN6FastOS12FastTerminalC2Ev,"axG",@progbits,_ZN6FastOS12FastTerminalC5Ev,comdat
 1058              		.align 2
 1059              		.weak	_ZN6FastOS12FastTerminalC2Ev
 1061              	_ZN6FastOS12FastTerminalC2Ev:
 1062              	.LFB49:
 1063              		.file 7 "../src/kernel/memory/../FastTerminal.h"
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
 1064              		.loc 7 25 2
 1065              		.cfi_startproc
 1066 0000 55       		push	rbp
 1067              		.cfi_def_cfa_offset 16
 1068              		.cfi_offset 6, -16
 1069 0001 4889E5   		mov	rbp, rsp
 1070              		.cfi_def_cfa_register 6
 1071 0004 4883EC10 		sub	rsp, 16
 1072 0008 48897DF8 		mov	QWORD PTR [rbp-8], rdi
 1073              	.LBB6:
 1074              		.loc 7 25 109
 1075 000c 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1076 0010 4883C020 		add	rax, 32
 1077 0014 B9000400 		mov	ecx, 1024
 1077      00
 1078 0019 BA500000 		mov	edx, 80
 1078      00
 1079 001e BE00800B 		mov	esi, 753664
 1079      00
 1080 0023 4889C7   		mov	rdi, rax
 1081 0026 E8000000 		call	_ZN6FastOS17FastVGATextBufferC1EPtyy
 1081      00
 1082 002b 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1083 002f 48C74058 		mov	QWORD PTR [rax+88], 0
 1083      00000000 
 1084              	.LBE6:
 1085              		.loc 7 25 112
 1086 0037 90       		nop
 1087 0038 C9       		leave
 1088              		.cfi_def_cfa 7, 8
 1089 0039 C3       		ret
 1090              		.cfi_endproc
 1091              	.LFE49:
 1093              		.weak	_ZN6FastOS12FastTerminalC1Ev
 1094              		.set	_ZN6FastOS12FastTerminalC1Ev,_ZN6FastOS12FastTerminalC2Ev
 1095              		.weak	_ZZN6FastOS12FastTerminal6cprintEPKcE1x
 1096              		.section	.bss._ZZN6FastOS12FastTerminal6cprintEPKcE1x,"awG",@nobits,_ZZN6FastOS12FastTerminal6cpri
 1097              		.align 8
 1100              	_ZZN6FastOS12FastTerminal6cprintEPKcE1x:
 1101 0000 00000000 		.zero	8
 1101      00000000 
 1102              		.section	.text._ZN6FastOS12FastTerminal6cprintEPKc,"axG",@progbits,_ZN6FastOS12FastTerminal6cprint
 1103              		.align 2
 1104              		.weak	_ZN6FastOS12FastTerminal6cprintEPKc
 1106              	_ZN6FastOS12FastTerminal6cprintEPKc:
 1107              	.LFB52:
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
 1108              		.loc 7 37 7
 1109              		.cfi_startproc
 1110 0000 55       		push	rbp
 1111              		.cfi_def_cfa_offset 16
 1112              		.cfi_offset 6, -16
 1113 0001 4889E5   		mov	rbp, rsp
 1114              		.cfi_def_cfa_register 6
 1115 0004 53       		push	rbx
 1116 0005 4883EC28 		sub	rsp, 40
 1117              		.cfi_offset 3, -24
 1118 0009 48897DD8 		mov	QWORD PTR [rbp-40], rdi
 1119 000d 488975D0 		mov	QWORD PTR [rbp-48], rsi
  38:../src/kernel/memory/../FastTerminal.h **** 		size_t index(0);
 1120              		.loc 7 38 10
 1121 0011 48C745E8 		mov	QWORD PTR [rbp-24], 0
 1121      00000000 
 1122              	.L66:
  39:../src/kernel/memory/../FastTerminal.h **** 		static size_t x(0);
  40:../src/kernel/memory/../FastTerminal.h **** 		do  {
  41:../src/kernel/memory/../FastTerminal.h **** 			if (ch[index] == '\n') {
 1123              		.loc 7 41 16
 1124 0019 488B55D0 		mov	rdx, QWORD PTR [rbp-48]
 1125 001d 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 1126 0021 4801D0   		add	rax, rdx
 1127 0024 0FB600   		movzx	eax, BYTE PTR [rax]
 1128              		.loc 7 41 4
 1129 0027 3C0A     		cmp	al, 10
 1130 0029 7521     		jne	.L63
  42:../src/kernel/memory/../FastTerminal.h **** 				cprintIndex++;
 1131              		.loc 7 42 5
 1132 002b 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1133 002f 488B4058 		mov	rax, QWORD PTR [rax+88]
 1134              		.loc 7 42 16
 1135 0033 488D5001 		lea	rdx, [rax+1]
 1136 0037 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1137 003b 48895058 		mov	QWORD PTR [rax+88], rdx
  43:../src/kernel/memory/../FastTerminal.h **** 				x = 0;
 1138              		.loc 7 43 7
 1139 003f 48C70500 		mov	QWORD PTR _ZZN6FastOS12FastTerminal6cprintEPKcE1x[rip], 0
 1139      00000000 
 1139      000000
 1140 004a EB58     		jmp	.L64
 1141              	.L63:
  44:../src/kernel/memory/../FastTerminal.h **** 			}
  45:../src/kernel/memory/../FastTerminal.h **** 			else
  46:../src/kernel/memory/../FastTerminal.h **** 				m_VGABuffer[cprintIndex * FASTOS_TERMINAL_VSB_SIZE_X + x] = vga_utils::entry(ch[index], m_Color
 1142              		.loc 7 46 93
 1143 004c 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1144 0050 0FB64018 		movzx	eax, BYTE PTR [rax+24]
 1145              		.loc 7 46 81
 1146 0054 0FB6F0   		movzx	esi, al
 1147              		.loc 7 46 90
 1148 0057 488B55D0 		mov	rdx, QWORD PTR [rbp-48]
 1149 005b 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 1150 005f 4801D0   		add	rax, rdx
 1151 0062 0FB600   		movzx	eax, BYTE PTR [rax]
 1152              		.loc 7 46 81
 1153 0065 0FB6C8   		movzx	ecx, al
 1154              		.loc 7 46 5
 1155 0068 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1156 006c 488B7808 		mov	rdi, QWORD PTR [rax+8]
 1157              		.loc 7 46 17
 1158 0070 488B45D8 		mov	rax, QWORD PTR [rbp-40]
 1159 0074 488B5058 		mov	rdx, QWORD PTR [rax+88]
 1160              		.loc 7 46 29
 1161 0078 4889D0   		mov	rax, rdx
 1162 007b 48C1E002 		sal	rax, 2
 1163 007f 4801D0   		add	rax, rdx
 1164 0082 48C1E004 		sal	rax, 4
 1165 0086 4889C2   		mov	rdx, rax
 1166              		.loc 7 46 58
 1167 0089 488B0500 		mov	rax, QWORD PTR _ZZN6FastOS12FastTerminal6cprintEPKcE1x[rip]
 1167      000000
 1168 0090 4801D0   		add	rax, rdx
 1169              		.loc 7 46 61
 1170 0093 4801C0   		add	rax, rax
 1171 0096 488D1C07 		lea	rbx, [rdi+rax]
 1172              		.loc 7 46 81
 1173 009a 89CF     		mov	edi, ecx
 1174 009c E8000000 		call	_ZN6FastOS9vga_utils5entryEhh
 1174      00
 1175              		.loc 7 46 63
 1176 00a1 668903   		mov	WORD PTR [rbx], ax
 1177              	.L64:
  47:../src/kernel/memory/../FastTerminal.h **** 			++x;
 1178              		.loc 7 47 4
 1179 00a4 488B0500 		mov	rax, QWORD PTR _ZZN6FastOS12FastTerminal6cprintEPKcE1x[rip]
 1179      000000
 1180 00ab 4883C001 		add	rax, 1
 1181 00af 48890500 		mov	QWORD PTR _ZZN6FastOS12FastTerminal6cprintEPKcE1x[rip], rax
 1181      000000
  48:../src/kernel/memory/../FastTerminal.h **** 		} while(ch[++index]);
 1182              		.loc 7 48 21
 1183 00b6 488345E8 		add	QWORD PTR [rbp-24], 1
 1183      01
 1184 00bb 488B55D0 		mov	rdx, QWORD PTR [rbp-48]
 1185 00bf 488B45E8 		mov	rax, QWORD PTR [rbp-24]
 1186 00c3 4801D0   		add	rax, rdx
 1187 00c6 0FB600   		movzx	eax, BYTE PTR [rax]
 1188 00c9 84C0     		test	al, al
 1189 00cb 0F95C0   		setne	al
 1190 00ce 84C0     		test	al, al
 1191 00d0 7405     		je	.L67
  40:../src/kernel/memory/../FastTerminal.h **** 			if (ch[index] == '\n') {
 1192              		.loc 7 40 3
 1193 00d2 E942FFFF 		jmp	.L66
 1193      FF
 1194              	.L67:
  49:../src/kernel/memory/../FastTerminal.h **** 	}
 1195              		.loc 7 49 2
 1196 00d7 90       		nop
 1197 00d8 4883C428 		add	rsp, 40
 1198 00dc 5B       		pop	rbx
 1199 00dd 5D       		pop	rbp
 1200              		.cfi_def_cfa 7, 8
 1201 00de C3       		ret
 1202              		.cfi_endproc
 1203              	.LFE52:
 1205              		.section	.text._ZN6FastOS12FastTerminal6cprintEji,"axG",@progbits,_ZN6FastOS12FastTerminal6cprintE
 1206              		.align 2
 1207              		.weak	_ZN6FastOS12FastTerminal6cprintEji
 1209              	_ZN6FastOS12FastTerminal6cprintEji:
 1210              	.LFB53:
  50:../src/kernel/memory/../FastTerminal.h **** 
  51:../src/kernel/memory/../FastTerminal.h **** 	void cprint(uint32_t in, int base=10) {
 1211              		.loc 7 51 7
 1212              		.cfi_startproc
 1213 0000 55       		push	rbp
 1214              		.cfi_def_cfa_offset 16
 1215              		.cfi_offset 6, -16
 1216 0001 4889E5   		mov	rbp, rsp
 1217              		.cfi_def_cfa_register 6
 1218 0004 4883EC10 		sub	rsp, 16
 1219 0008 48897DF8 		mov	QWORD PTR [rbp-8], rdi
 1220 000c 8975F4   		mov	DWORD PTR [rbp-12], esi
 1221 000f 8955F0   		mov	DWORD PTR [rbp-16], edx
  52:../src/kernel/memory/../FastTerminal.h **** 		cprint(uitoa(in, base));
 1222              		.loc 7 52 15
 1223 0012 8B55F0   		mov	edx, DWORD PTR [rbp-16]
 1224 0015 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 1225 0018 89D6     		mov	esi, edx
 1226 001a 89C7     		mov	edi, eax
 1227 001c E8000000 		call	_ZN6FastOS5uitoaEji
 1227      00
 1228 0021 4889C2   		mov	rdx, rax
 1229              		.loc 7 52 9
 1230 0024 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1231 0028 4889D6   		mov	rsi, rdx
 1232 002b 4889C7   		mov	rdi, rax
 1233 002e E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1233      00
  53:../src/kernel/memory/../FastTerminal.h **** 	}
 1234              		.loc 7 53 2
 1235 0033 90       		nop
 1236 0034 C9       		leave
 1237              		.cfi_def_cfa 7, 8
 1238 0035 C3       		ret
 1239              		.cfi_endproc
 1240              	.LFE53:
 1242              		.section	.text._ZN6FastOS12FastTerminal10initializeEv,"axG",@progbits,_ZN6FastOS12FastTerminal10in
 1243              		.align 2
 1244              		.weak	_ZN6FastOS12FastTerminal10initializeEv
 1246              	_ZN6FastOS12FastTerminal10initializeEv:
 1247              	.LFB55:
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
 1248              		.loc 7 63 7
 1249              		.cfi_startproc
 1250 0000 55       		push	rbp
 1251              		.cfi_def_cfa_offset 16
 1252              		.cfi_offset 6, -16
 1253 0001 4889E5   		mov	rbp, rsp
 1254              		.cfi_def_cfa_register 6
 1255 0004 4883EC10 		sub	rsp, 16
 1256 0008 48897DF8 		mov	QWORD PTR [rbp-8], rdi
  64:../src/kernel/memory/../FastTerminal.h **** 		m_VGABuffer = (uint16_t*)VGA_ADDR;
 1257              		.loc 7 64 15
 1258 000c 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1259 0010 48C74008 		mov	QWORD PTR [rax+8], 753664
 1259      00800B00 
  65:../src/kernel/memory/../FastTerminal.h **** 
  66:../src/kernel/memory/../FastTerminal.h **** 		m_Width = vga_utils::VGA_WIDTH;
 1260              		.loc 7 66 11
 1261 0018 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1262 001c C7005000 		mov	DWORD PTR [rax], 80
 1262      0000
  67:../src/kernel/memory/../FastTerminal.h **** 		m_Height = vga_utils::VGA_HEIGHT;
 1263              		.loc 7 67 12
 1264 0022 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1265 0026 C7400419 		mov	DWORD PTR [rax+4], 25
 1265      000000
  68:../src/kernel/memory/../FastTerminal.h **** 
  69:../src/kernel/memory/../FastTerminal.h **** 		m_ColorBackground = vga_utils::VGA_COLOR_BLACK;
 1266              		.loc 7 69 21
 1267 002d 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1268 0031 C7401000 		mov	DWORD PTR [rax+16], 0
 1268      000000
  70:../src/kernel/memory/../FastTerminal.h **** 		m_ColorForeground = vga_utils::VGA_COLOR_LIGHT_GREY;
 1269              		.loc 7 70 21
 1270 0038 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1271 003c C7401407 		mov	DWORD PTR [rax+20], 7
 1271      000000
  71:../src/kernel/memory/../FastTerminal.h **** 		m_ColorGeneral = vga_utils::entryColor(m_ColorForeground, m_ColorBackground);
 1272              		.loc 7 71 41
 1273 0043 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1274 0047 8B5010   		mov	edx, DWORD PTR [rax+16]
 1275 004a 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1276 004e 8B4014   		mov	eax, DWORD PTR [rax+20]
 1277 0051 89D6     		mov	esi, edx
 1278 0053 89C7     		mov	edi, eax
 1279 0055 E8000000 		call	_ZN6FastOS9vga_utils10entryColorENS0_9vga_colorES1_
 1279      00
 1280              		.loc 7 71 18
 1281 005a 488B55F8 		mov	rdx, QWORD PTR [rbp-8]
 1282 005e 884218   		mov	BYTE PTR [rdx+24], al
  72:../src/kernel/memory/../FastTerminal.h **** 
  73:../src/kernel/memory/../FastTerminal.h **** 
  74:../src/kernel/memory/../FastTerminal.h **** 		/*for (uint32_t y(0u); y < m_Height; ++y) {
  75:../src/kernel/memory/../FastTerminal.h **** 			for (uint32_t x(0u); x < m_Width; ++x) {
  76:../src/kernel/memory/../FastTerminal.h **** 				const uint32_t i = y * m_Width + x;
  77:../src/kernel/memory/../FastTerminal.h **** 				m_VGABuffer[i] = vga_utils::entry(' ', m_ColorGeneral);
  78:../src/kernel/memory/../FastTerminal.h **** 			}
  79:../src/kernel/memory/../FastTerminal.h **** 		}*/
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
 1283              		.loc 7 112 2
 1284 0061 90       		nop
 1285 0062 C9       		leave
 1286              		.cfi_def_cfa 7, 8
 1287 0063 C3       		ret
 1288              		.cfi_endproc
 1289              	.LFE55:
 1291              		.local	_ZN6FastOSL4termE
 1292              		.comm	_ZN6FastOSL4termE,96,32
 1293              		.text
 1294              		.globl	kprint
 1296              	kprint:
 1297              	.LFB66:
 1298              		.file 8 "../src/kernel/FastOS.h"
   1:../src/kernel/FastOS.h **** #pragma once
   2:../src/kernel/FastOS.h **** 
   3:../src/kernel/FastOS.h **** //#include "memory/FastLowMemoryAllocator.h"
   4:../src/kernel/FastOS.h **** 
   5:../src/kernel/FastOS.h **** #include "memory/FastPtr.h"
   6:../src/kernel/FastOS.h **** #include <FastAsm.h>
   7:../src/kernel/FastOS.h **** //#include "FastTerminal.h"
   8:../src/kernel/FastOS.h **** //#include "graphics/FastVBE.h"
   9:../src/kernel/FastOS.h **** 
  10:../src/kernel/FastOS.h **** FASTOS_NAMESPACE_BEGIN
  11:../src/kernel/FastOS.h **** 
  12:../src/kernel/FastOS.h **** struct VBEInfo_t {
  13:../src/kernel/FastOS.h **** 	char VbeSignature[4];             // == "VESA"
  14:../src/kernel/FastOS.h **** 	uint16_t VbeVersion;                 // == 0x0300 for VBE 3.0
  15:../src/kernel/FastOS.h **** 	uint16_t OemStringPtr[2];            // isa vbeFarPtr
  16:../src/kernel/FastOS.h **** 	uint8_t Capabilities[4];
  17:../src/kernel/FastOS.h **** 	uint16_t VideoModePtr[2];         // isa vbeFarPtr
  18:../src/kernel/FastOS.h **** 	uint16_t TotalMemory;             // as # of 64KB blocks
  19:../src/kernel/FastOS.h **** } __attribute__((packed));
  20:../src/kernel/FastOS.h **** 
  21:../src/kernel/FastOS.h **** struct VBEModeInfo_t {
  22:../src/kernel/FastOS.h **** 	uint16_t attributes;
  23:../src/kernel/FastOS.h **** 	uint8_t winA, winB;
  24:../src/kernel/FastOS.h **** 	uint16_t granularity;
  25:../src/kernel/FastOS.h **** 	uint16_t winsize;
  26:../src/kernel/FastOS.h **** 	uint16_t segmentA, segmentB;
  27:../src/kernel/FastOS.h **** 	uint32_t* realFctPtr;
  28:../src/kernel/FastOS.h **** 	uint16_t pitch; // bytes per scanline
  29:../src/kernel/FastOS.h **** 
  30:../src/kernel/FastOS.h **** 	uint16_t Xres, Yres;
  31:../src/kernel/FastOS.h **** 	uint8_t Wchar, Ychar, planes, bpp, banks;
  32:../src/kernel/FastOS.h **** 	uint8_t memory_model, bank_size, image_pages;
  33:../src/kernel/FastOS.h **** 	uint8_t reserved0;
  34:../src/kernel/FastOS.h **** 
  35:../src/kernel/FastOS.h **** 	uint8_t red_mask, red_position;
  36:../src/kernel/FastOS.h **** 	uint8_t green_mask, green_position;
  37:../src/kernel/FastOS.h **** 	uint8_t blue_mask, blue_position;
  38:../src/kernel/FastOS.h **** 	uint8_t rsv_mask, rsv_position;
  39:../src/kernel/FastOS.h **** 	uint8_t directcolor_attributes;
  40:../src/kernel/FastOS.h **** 
  41:../src/kernel/FastOS.h **** 	uint32_t physbase;  // The Linear framebuffer addr
  42:../src/kernel/FastOS.h **** 	uint32_t reserved1;
  43:../src/kernel/FastOS.h **** 	uint16_t reserved2;
  44:../src/kernel/FastOS.h **** } __attribute__((packed));
  45:../src/kernel/FastOS.h **** 
  46:../src/kernel/FastOS.h **** extern "C" {
  47:../src/kernel/FastOS.h **** 	void kprint(uint32_t nb) {
 1299              		.loc 8 47 27
 1300              		.cfi_startproc
 1301 04e6 55       		push	rbp
 1302              		.cfi_def_cfa_offset 16
 1303              		.cfi_offset 6, -16
 1304 04e7 4889E5   		mov	rbp, rsp
 1305              		.cfi_def_cfa_register 6
 1306 04ea 4883EC10 		sub	rsp, 16
 1307 04ee 897DFC   		mov	DWORD PTR [rbp-4], edi
  48:../src/kernel/FastOS.h **** 		term.cprint(nb);
 1308              		.loc 8 48 14
 1309 04f1 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 1310 04f4 BA0A0000 		mov	edx, 10
 1310      00
 1311 04f9 89C6     		mov	esi, eax
 1312 04fb BF000000 		mov	edi, OFFSET FLAT:_ZN6FastOSL4termE
 1312      00
 1313 0500 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEji
 1313      00
  49:../src/kernel/FastOS.h **** 	}
 1314              		.loc 8 49 2
 1315 0505 90       		nop
 1316 0506 C9       		leave
 1317              		.cfi_def_cfa 7, 8
 1318 0507 C3       		ret
 1319              		.cfi_endproc
 1320              	.LFE66:
 1322              		.globl	kprintstr
 1324              	kprintstr:
 1325              	.LFB67:
  50:../src/kernel/FastOS.h **** 
  51:../src/kernel/FastOS.h **** 	void kprintstr(const char* ch) {
 1326              		.loc 8 51 33
 1327              		.cfi_startproc
 1328 0508 55       		push	rbp
 1329              		.cfi_def_cfa_offset 16
 1330              		.cfi_offset 6, -16
 1331 0509 4889E5   		mov	rbp, rsp
 1332              		.cfi_def_cfa_register 6
 1333 050c 4883EC10 		sub	rsp, 16
 1334 0510 48897DF8 		mov	QWORD PTR [rbp-8], rdi
  52:../src/kernel/FastOS.h **** 		term.cprint(ch);
 1335              		.loc 8 52 14
 1336 0514 488B45F8 		mov	rax, QWORD PTR [rbp-8]
 1337 0518 4889C6   		mov	rsi, rax
 1338 051b BF000000 		mov	edi, OFFSET FLAT:_ZN6FastOSL4termE
 1338      00
 1339 0520 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1339      00
  53:../src/kernel/FastOS.h **** 	}
 1340              		.loc 8 53 2
 1341 0525 90       		nop
 1342 0526 C9       		leave
 1343              		.cfi_def_cfa 7, 8
 1344 0527 C3       		ret
 1345              		.cfi_endproc
 1346              	.LFE67:
 1348              		.section	.rodata
 1349              	.LC0:
 1350 00dc 52656773 		.string	"RegsDump: a="
 1350      44756D70 
 1350      3A20613D 
 1350      00
 1351              	.LC1:
 1352 00e9 20623D00 		.string	" b="
 1353              	.LC2:
 1354 00ed 20633D00 		.string	" c="
 1355              	.LC3:
 1356 00f1 20643D00 		.string	" d="
 1357              	.LC4:
 1358 00f5 0A00     		.string	"\n"
 1359              		.text
 1360              		.globl	dump_regs
 1362              	dump_regs:
 1363              	.LFB68:
  54:../src/kernel/FastOS.h **** 
  55:../src/kernel/FastOS.h **** 	void dump_regs(uint32_t eax, uint32_t ebx, uint32_t ecx, uint32_t edx) {
 1364              		.loc 8 55 73
 1365              		.cfi_startproc
 1366 0528 55       		push	rbp
 1367              		.cfi_def_cfa_offset 16
 1368              		.cfi_offset 6, -16
 1369 0529 4889E5   		mov	rbp, rsp
 1370              		.cfi_def_cfa_register 6
 1371 052c 4883EC10 		sub	rsp, 16
 1372 0530 897DFC   		mov	DWORD PTR [rbp-4], edi
 1373 0533 8975F8   		mov	DWORD PTR [rbp-8], esi
 1374 0536 8955F4   		mov	DWORD PTR [rbp-12], edx
 1375 0539 894DF0   		mov	DWORD PTR [rbp-16], ecx
  56:../src/kernel/FastOS.h **** 		term.cprint("RegsDump: a=");
 1376              		.loc 8 56 14
 1377 053c BE000000 		mov	esi, OFFSET FLAT:.LC0
 1377      00
 1378 0541 BF000000 		mov	edi, OFFSET FLAT:_ZN6FastOSL4termE
 1378      00
 1379 0546 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1379      00
  57:../src/kernel/FastOS.h **** 		term.cprint(eax, 16);
 1380              		.loc 8 57 14
 1381 054b 8B45FC   		mov	eax, DWORD PTR [rbp-4]
 1382 054e BA100000 		mov	edx, 16
 1382      00
 1383 0553 89C6     		mov	esi, eax
 1384 0555 BF000000 		mov	edi, OFFSET FLAT:_ZN6FastOSL4termE
 1384      00
 1385 055a E8000000 		call	_ZN6FastOS12FastTerminal6cprintEji
 1385      00
  58:../src/kernel/FastOS.h **** 		term.cprint(" b=");
 1386              		.loc 8 58 14
 1387 055f BE000000 		mov	esi, OFFSET FLAT:.LC1
 1387      00
 1388 0564 BF000000 		mov	edi, OFFSET FLAT:_ZN6FastOSL4termE
 1388      00
 1389 0569 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1389      00
  59:../src/kernel/FastOS.h **** 		term.cprint(ebx, 16);
 1390              		.loc 8 59 14
 1391 056e 8B45F8   		mov	eax, DWORD PTR [rbp-8]
 1392 0571 BA100000 		mov	edx, 16
 1392      00
 1393 0576 89C6     		mov	esi, eax
 1394 0578 BF000000 		mov	edi, OFFSET FLAT:_ZN6FastOSL4termE
 1394      00
 1395 057d E8000000 		call	_ZN6FastOS12FastTerminal6cprintEji
 1395      00
  60:../src/kernel/FastOS.h **** 		term.cprint(" c=");
 1396              		.loc 8 60 14
 1397 0582 BE000000 		mov	esi, OFFSET FLAT:.LC2
 1397      00
 1398 0587 BF000000 		mov	edi, OFFSET FLAT:_ZN6FastOSL4termE
 1398      00
 1399 058c E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1399      00
  61:../src/kernel/FastOS.h **** 		term.cprint(ecx, 16);
 1400              		.loc 8 61 14
 1401 0591 8B45F4   		mov	eax, DWORD PTR [rbp-12]
 1402 0594 BA100000 		mov	edx, 16
 1402      00
 1403 0599 89C6     		mov	esi, eax
 1404 059b BF000000 		mov	edi, OFFSET FLAT:_ZN6FastOSL4termE
 1404      00
 1405 05a0 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEji
 1405      00
  62:../src/kernel/FastOS.h **** 		term.cprint(" d=");
 1406              		.loc 8 62 14
 1407 05a5 BE000000 		mov	esi, OFFSET FLAT:.LC3
 1407      00
 1408 05aa BF000000 		mov	edi, OFFSET FLAT:_ZN6FastOSL4termE
 1408      00
 1409 05af E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1409      00
  63:../src/kernel/FastOS.h **** 		term.cprint(edx, 16);
 1410              		.loc 8 63 14
 1411 05b4 8B45F0   		mov	eax, DWORD PTR [rbp-16]
 1412 05b7 BA100000 		mov	edx, 16
 1412      00
 1413 05bc 89C6     		mov	esi, eax
 1414 05be BF000000 		mov	edi, OFFSET FLAT:_ZN6FastOSL4termE
 1414      00
 1415 05c3 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEji
 1415      00
  64:../src/kernel/FastOS.h **** 		term.cprint("\n");
 1416              		.loc 8 64 14
 1417 05c8 BE000000 		mov	esi, OFFSET FLAT:.LC4
 1417      00
 1418 05cd BF000000 		mov	edi, OFFSET FLAT:_ZN6FastOSL4termE
 1418      00
 1419 05d2 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1419      00
  65:../src/kernel/FastOS.h **** 	}
 1420              		.loc 8 65 2
 1421 05d7 90       		nop
 1422 05d8 C9       		leave
 1423              		.cfi_def_cfa 7, 8
 1424 05d9 C3       		ret
 1425              		.cfi_endproc
 1426              	.LFE68:
 1428              		.section	.rodata
 1429              	.LC5:
 1430 00f7 43276573 		.string	"C'est incroyable\n"
 1430      7420696E 
 1430      63726F79 
 1430      61626C65 
 1430      0A00
 1431              		.section	.text._ZN6FastOS6FastOS4mainEv,"axG",@progbits,_ZN6FastOS6FastOS4mainEv,comdat
 1432              		.align 2
 1433              		.weak	_ZN6FastOS6FastOS4mainEv
 1435              	_ZN6FastOS6FastOS4mainEv:
 1436              	.LFB69:
  66:../src/kernel/FastOS.h **** }
  67:../src/kernel/FastOS.h **** 
  68:../src/kernel/FastOS.h **** 	class FastOS {
  69:../src/kernel/FastOS.h **** 	public:
  70:../src/kernel/FastOS.h **** 
  71:../src/kernel/FastOS.h **** 		void main() {
 1437              		.loc 8 71 8
 1438              		.cfi_startproc
 1439 0000 55       		push	rbp
 1440              		.cfi_def_cfa_offset 16
 1441              		.cfi_offset 6, -16
 1442 0001 4889E5   		mov	rbp, rsp
 1443              		.cfi_def_cfa_register 6
 1444 0004 4883EC10 		sub	rsp, 16
 1445 0008 48897DF8 		mov	QWORD PTR [rbp-8], rdi
  72:../src/kernel/FastOS.h **** 			term.initialize();
 1446              		.loc 8 72 19
 1447 000c BF000000 		mov	edi, OFFSET FLAT:_ZN6FastOSL4termE
 1447      00
 1448 0011 E8000000 		call	_ZN6FastOS12FastTerminal10initializeEv
 1448      00
  73:../src/kernel/FastOS.h **** 			//kprint(5);
  74:../src/kernel/FastOS.h **** 			/*term.cprint("enable: ");
  75:../src/kernel/FastOS.h **** 			term.cprint(enable_a20(), 10);
  76:../src/kernel/FastOS.h **** 			term.cprint("\n");
  77:../src/kernel/FastOS.h **** 			term.cprint("check: ");
  78:../src/kernel/FastOS.h **** 			//term.cprint(check_a20(), 10);
  79:../src/kernel/FastOS.h **** 			term.cprint("\n");*/
  80:../src/kernel/FastOS.h **** 			
  81:../src/kernel/FastOS.h **** 			/*if (!ASM::new_set_a20(true)) {
  82:../src/kernel/FastOS.h **** 				term.cprint("ERROR: Could not turn on A20 line\n");
  83:../src/kernel/FastOS.h **** 			}*/
  84:../src/kernel/FastOS.h **** 
  85:../src/kernel/FastOS.h **** 			//TODO: Support ACPI 3 24 bytes entries !
  86:../src/kernel/FastOS.h **** 			struct BIOSMemEntry {
  87:../src/kernel/FastOS.h **** 				uint32_t laddr;
  88:../src/kernel/FastOS.h **** 				uint32_t haddr;
  89:../src/kernel/FastOS.h **** 				uint32_t lreg;
  90:../src/kernel/FastOS.h **** 				uint32_t hreg;
  91:../src/kernel/FastOS.h **** 				uint32_t type;
  92:../src/kernel/FastOS.h **** 			};
  93:../src/kernel/FastOS.h **** 
  94:../src/kernel/FastOS.h **** 			//BIOSMemEntry mem;// [10] ;
  95:../src/kernel/FastOS.h **** 
  96:../src/kernel/FastOS.h **** 			term.cprint("C'est incroyable\n");
 1449              		.loc 8 96 15
 1450 0016 BE000000 		mov	esi, OFFSET FLAT:.LC5
 1450      00
 1451 001b BF000000 		mov	edi, OFFSET FLAT:_ZN6FastOSL4termE
 1451      00
 1452 0020 E8000000 		call	_ZN6FastOS12FastTerminal6cprintEPKc
 1452      00
  97:../src/kernel/FastOS.h **** 
  98:../src/kernel/FastOS.h **** 
  99:../src/kernel/FastOS.h **** 			/*term.cprint("ASM>");
 100:../src/kernel/FastOS.h **** 			get_mmap(PTR_SEG(&mem), PTR_OFF(&mem));
 101:../src/kernel/FastOS.h **** 			term.cprint("<END\n");*/
 102:../src/kernel/FastOS.h **** 
 103:../src/kernel/FastOS.h **** 
 104:../src/kernel/FastOS.h **** 			/*for (int i(0); i < 10; ++i) {
 105:../src/kernel/FastOS.h **** 				term.cprint(i);
 106:../src/kernel/FastOS.h **** 				term.cprint(" ");
 107:../src/kernel/FastOS.h **** 				term.cprint((mem[i].haddr << 32) | mem[i].laddr);
 108:../src/kernel/FastOS.h **** 				term.cprint("\n");
 109:../src/kernel/FastOS.h **** 			}*/
 110:../src/kernel/FastOS.h **** 
 111:../src/kernel/FastOS.h **** 			/*FastMemoryImpl impl;
 112:../src/kernel/FastOS.h **** 
 113:../src/kernel/FastOS.h **** 			impl.init(3, 31, (void*)0x00000600, (void*)0x0007BFF);
 114:../src/kernel/FastOS.h **** 
 115:../src/kernel/FastOS.h **** 			term.cprint("Memory Initialized\n");
 116:../src/kernel/FastOS.h **** 
 117:../src/kernel/FastOS.h **** 			FastPtr<VBEInfo_t> ptr1{ impl };
 118:../src/kernel/FastOS.h **** 			FastPtr<VBEModeInfo_t> ptr2{ impl };
 119:../src/kernel/FastOS.h **** 
 120:../src/kernel/FastOS.h **** 			term.cprint((uint32_t)ptr1.get());
 121:../src/kernel/FastOS.h **** 			term.cprint(" ");
 122:../src/kernel/FastOS.h **** 			term.cprint((uint32_t)ptr2.get());
 123:../src/kernel/FastOS.h **** 			term.cprint("\n");*/
 124:../src/kernel/FastOS.h **** 
 125:../src/kernel/FastOS.h **** 			//term.cprint("FastPtr tested\n");
 126:../src/kernel/FastOS.h **** 			//FastVBE vbe;
 127:../src/kernel/FastOS.h **** 			//vbe.initialize(impl, term);
 128:../src/kernel/FastOS.h **** 			//term.cprint("Initialized\n");
 129:../src/kernel/FastOS.h **** 
 130:../src/kernel/FastOS.h **** 			/*void* ptr1 = impl.malloc<void>(64);
 131:../src/kernel/FastOS.h **** 
 132:../src/kernel/FastOS.h **** 			term.cprint("Ptr1: ");
 133:../src/kernel/FastOS.h **** 			term.cprint((uifast_t)ptr1, 16);
 134:../src/kernel/FastOS.h **** 			term.cprint("\n");
 135:../src/kernel/FastOS.h **** 			impl.free(ptr1, 64);
 136:../src/kernel/FastOS.h **** 
 137:../src/kernel/FastOS.h **** 			void* ptr2 = impl.malloc<void>(64);
 138:../src/kernel/FastOS.h **** 
 139:../src/kernel/FastOS.h **** 			term.cprint("Ptr2: ");
 140:../src/kernel/FastOS.h **** 			term.cprint((uifast_t)ptr2, 16);
 141:../src/kernel/FastOS.h **** 			term.cprint("\n");
 142:../src/kernel/FastOS.h **** 
 143:../src/kernel/FastOS.h **** 			
 144:../src/kernel/FastOS.h **** 			void* ptr3 = impl.malloc<void>(128);
 145:../src/kernel/FastOS.h **** 
 146:../src/kernel/FastOS.h **** 			term.cprint("Ptr3: ");
 147:../src/kernel/FastOS.h **** 			term.cprint((uifast_t)ptr3, 16);
 148:../src/kernel/FastOS.h **** 			term.cprint("\n");
 149:../src/kernel/FastOS.h **** 
 150:../src/kernel/FastOS.h **** 			impl.free(ptr2, 64);
 151:../src/kernel/FastOS.h **** 			impl.free(ptr3, 64);
 152:../src/kernel/FastOS.h **** 
 153:../src/kernel/FastOS.h **** 			void* ptr4 = impl.malloc<void>(128);
 154:../src/kernel/FastOS.h **** 
 155:../src/kernel/FastOS.h **** 			term.cprint("Ptr4: ");
 156:../src/kernel/FastOS.h **** 			term.cprint((uifast_t)ptr4, 16);
 157:../src/kernel/FastOS.h **** 			term.cprint("\n");
 158:../src/kernel/FastOS.h **** 			impl.free(ptr4, 64);*/
 159:../src/kernel/FastOS.h **** 
 160:../src/kernel/FastOS.h **** 			/*FastLowMemoryAllocator alloc{ (void*)0x00000500, 2 };
 161:../src/kernel/FastOS.h **** 			alloc.addPool((void*)0x00000600, (void*)0x0007BFF);
 162:../src/kernel/FastOS.h **** 			term.cprint("Alloc: p");
 163:../src/kernel/FastOS.h **** 			term.cprint((uint32_t)(alloc.m_Pools), 16);
 164:../src/kernel/FastOS.h **** 			term.cprint(" p0: ");
 165:../src/kernel/FastOS.h **** 			term.cprint((uint32_t)*(uint8_t*)((*alloc.m_Pools)[0]), 16);
 166:../src/kernel/FastOS.h **** 			term.cprint("\n");
 167:../src/kernel/FastOS.h **** 
 168:../src/kernel/FastOS.h **** 			void* testptr = alloc.malloc(256);
 169:../src/kernel/FastOS.h **** 
 170:../src/kernel/FastOS.h **** 			term.cprint("\nTestptr: ");
 171:../src/kernel/FastOS.h **** 			term.cprint((uint32_t)testptr);
 172:../src/kernel/FastOS.h **** 
 173:../src/kernel/FastOS.h **** 			alloc.free(testptr, 256);
 174:../src/kernel/FastOS.h **** 
 175:../src/kernel/FastOS.h **** 			//term.cprint("\n");
 176:../src/kernel/FastOS.h **** 			//term.cprint(123456789);*/
 177:../src/kernel/FastOS.h **** 
 178:../src/kernel/FastOS.h **** 
 179:../src/kernel/FastOS.h **** 			/*char b[8192];
 180:../src/kernel/FastOS.h **** 			char* ptr = (char*)0x00000500;
 181:../src/kernel/FastOS.h **** 			for (int i = 0; i < 8192; ++i) {
 182:../src/kernel/FastOS.h **** 				if (ptr[i] == 0) b[i] = '0';
 183:../src/kernel/FastOS.h **** 				else b[i] = ptr[i];
 184:../src/kernel/FastOS.h **** 			}*/
 185:../src/kernel/FastOS.h **** 
 186:../src/kernel/FastOS.h **** 			//term.cprint(b);
 187:../src/kernel/FastOS.h **** 		}
 1453              		.loc 8 187 3
 1454 0025 90       		nop
 1455 0026 C9       		leave
 1456              		.cfi_def_cfa 7, 8
 1457 0027 C3       		ret
 1458              		.cfi_endproc
 1459              	.LFE69:
 1461              		.text
 1462              		.globl	kernel_main
 1464              	kernel_main:
 1465              	.LFB70:
 1466              		.file 9 "../src/kernel/entry.cpp"
   1:../src/kernel/entry.cpp **** #include "FastOS.h"
   2:../src/kernel/entry.cpp **** 
   3:../src/kernel/entry.cpp **** extern "C" {
   4:../src/kernel/entry.cpp **** 	void kernel_main() {
 1467              		.loc 9 4 21
 1468              		.cfi_startproc
 1469 05da 55       		push	rbp
 1470              		.cfi_def_cfa_offset 16
 1471              		.cfi_offset 6, -16
 1472 05db 4889E5   		mov	rbp, rsp
 1473              		.cfi_def_cfa_register 6
 1474 05de 4883EC10 		sub	rsp, 16
   5:../src/kernel/entry.cpp **** 		FastOS::FastOS os;
   6:../src/kernel/entry.cpp **** 		os.main();
 1475              		.loc 9 6 10
 1476 05e2 488D45FF 		lea	rax, [rbp-1]
 1477 05e6 4889C7   		mov	rdi, rax
 1478 05e9 E8000000 		call	_ZN6FastOS6FastOS4mainEv
 1478      00
   7:../src/kernel/entry.cpp **** 		return;
 1479              		.loc 9 7 3
 1480 05ee 90       		nop
   8:../src/kernel/entry.cpp **** 
   9:../src/kernel/entry.cpp **** 	}
 1481              		.loc 9 9 2
 1482 05ef C9       		leave
 1483              		.cfi_def_cfa 7, 8
 1484 05f0 C3       		ret
 1485              		.cfi_endproc
 1486              	.LFE70:
 1489              	_Z41__static_initialization_and_destruction_0ii:
 1490              	.LFB72:
  10:../src/kernel/entry.cpp **** }...
 1491              		.loc 9 10 1
 1492              		.cfi_startproc
 1493 05f1 55       		push	rbp
 1494              		.cfi_def_cfa_offset 16
 1495              		.cfi_offset 6, -16
 1496 05f2 4889E5   		mov	rbp, rsp
 1497              		.cfi_def_cfa_register 6
 1498 05f5 4883EC10 		sub	rsp, 16
 1499 05f9 897DFC   		mov	DWORD PTR [rbp-4], edi
 1500 05fc 8975F8   		mov	DWORD PTR [rbp-8], esi
 1501              		.loc 9 10 1
 1502 05ff 837DFC01 		cmp	DWORD PTR [rbp-4], 1
 1503 0603 7513     		jne	.L78
 1504              		.loc 9 10 1 is_stmt 0 discriminator 1
 1505 0605 817DF8FF 		cmp	DWORD PTR [rbp-8], 65535
 1505      FF0000
 1506 060c 750A     		jne	.L78
 1507              		.file 10 "../src/kernel/memory/FastMemory.h"
   1:../src/kernel/memory/FastMemory.h **** #pragma once
   2:../src/kernel/memory/FastMemory.h **** #include <FastDefines.h>
   3:../src/kernel/memory/FastMemory.h **** #include <maths.h>
   4:../src/kernel/memory/FastMemory.h **** 
   5:../src/kernel/memory/FastMemory.h **** #include "../FastTerminal.h"
   6:../src/kernel/memory/FastMemory.h **** 
   7:../src/kernel/memory/FastMemory.h **** FASTOS_NAMESPACE_BEGIN
   8:../src/kernel/memory/FastMemory.h **** 
   9:../src/kernel/memory/FastMemory.h **** static FastTerminal term;
 1508              		.loc 10 9 21 is_stmt 1
 1509 060e BF000000 		mov	edi, OFFSET FLAT:_ZN6FastOSL4termE
 1509      00
 1510 0613 E8000000 		call	_ZN6FastOS12FastTerminalC1Ev
 1510      00
 1511              	.L78:
 1512              		.loc 9 10 1
 1513 0618 90       		nop
 1514 0619 C9       		leave
 1515              		.cfi_def_cfa 7, 8
 1516 061a C3       		ret
 1517              		.cfi_endproc
 1518              	.LFE72:
 1521              	_GLOBAL__sub_I__ZN6FastOS9bwlower32Ej:
 1522              	.LFB73:
 1523              		.loc 9 10 1
 1524              		.cfi_startproc
 1525 061b 55       		push	rbp
 1526              		.cfi_def_cfa_offset 16
 1527              		.cfi_offset 6, -16
 1528 061c 4889E5   		mov	rbp, rsp
 1529              		.cfi_def_cfa_register 6
 1530              		.loc 9 10 1
 1531 061f BEFFFF00 		mov	esi, 65535
 1531      00
 1532 0624 BF010000 		mov	edi, 1
 1532      00
 1533 0629 E8C3FFFF 		call	_Z41__static_initialization_and_destruction_0ii
 1533      FF
 1534 062e 5D       		pop	rbp
 1535              		.cfi_def_cfa 7, 8
 1536 062f C3       		ret
 1537              		.cfi_endproc
 1538              	.LFE73:
 1540              		.section	.ctors,"aw",@progbits
 1541              		.align 8
 1542 0000 00000000 		.quad	_GLOBAL__sub_I__ZN6FastOS9bwlower32Ej
 1542      00000000 
 1543              		.text
 1544              	.Letext0:
 1545              		.file 11 "../src/fastlib/FastDefines.h"
 1546              		.file 12 "../src/fastlib/FastConstants.h"
