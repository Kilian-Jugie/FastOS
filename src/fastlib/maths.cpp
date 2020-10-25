#include "maths.h"

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