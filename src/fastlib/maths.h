#pragma once
#include <FastDefines.h>

FASTOS_NAMESPACE_BEGIN

uint16_t bwlower32(uint32_t nb) {
	return (uint16_t)nb;
}

uint16_t bwhigher32(uint32_t nb) {
	return bwlower32(nb >> 16);
}

uint32_t tolittleendian(uint32_t big) {
	return ((big >> 24) & 0xff) |
		((big << 8) & 0xff0000) |
		((big >> 8) & 0xff00) |
		((big << 24) & 0xff000000);
}

inline constexpr uint32_t pow2_32(uint16_t n) {
	return 2 << n;
}

inline constexpr uint32_t rtpt_32(uint32_t x) {
	--x;
	x |= x >> 1;
	x |= x >> 2;
	x |= x >> 4;
	x |= x >> 8;
	x |= x >> 16;
	++x;
	return x;
}

constexpr uint32_t __log2_32_tab32[32] = {
	 0,  9,  1, 10, 13, 21,  2, 29,
	11, 14, 16, 18, 22, 25,  3, 30,
	 8, 12, 20, 28, 15, 17, 24,  7,
	19, 27, 23,  6, 26,  5,  4, 31 };

inline constexpr uint32_t log2_32(uint32_t value)
{
	value |= value >> 1;
	value |= value >> 2;
	value |= value >> 4;
	value |= value >> 8;
	value |= value >> 16;
	return __log2_32_tab32[(uint32_t)(value * 0x07C4ACDD) >> 27];
}

//https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Binary_numeral_system_.28base_2.29
uint32_t isqrt_32(uint32_t num) {
	uint32_t res = 0;
	uint32_t bit = 1 << 14; // The second-to-top bit is set: 1 << 30 for 32 bits

	// "bit" starts at the highest power of four <= the argument.
	while (bit > num)
		bit >>= 2;

	while (bit != 0) {
		if (num >= res + bit) {
			num -= res + bit;
			res = (res >> 1) + bit;
		}
		else
			res >>= 1;
		bit >>= 2;
	}
	return res;
}

FASTOS_NAMESPACE_END
