#pragma once
#include <fastlib/FastDefines.h>

FASTOS_NAMESPACE_BEGIN

uint16_t bwlower32(uint32_t nb);
uint16_t bwhigher32(uint32_t nb);

uint32_t tolittleendian(uint32_t big);

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

uint32_t isqrt_32(uint32_t num);

FASTOS_NAMESPACE_END
