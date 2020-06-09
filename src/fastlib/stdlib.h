#pragma once
#include <FastDefines.h>

FASTOS_NAMESPACE_BEGIN



int length(char* ch) {
	int r = 0;
	while(ch[r++]) {}
	return r;
}

template<typename _Ty>_Ty* arrayCopy(_Ty* dest, const _Ty* from, size_t size) {
	do dest[size] = from[size]; while (size--);
	return dest;
}

int itoa(int value, char* sp, int radix)
{
    char tmp[16];// be careful with the length of the buffer
    char* tp = tmp;
    int i;
    unsigned v;

    int sign = (radix == 10 && value < 0);
    if (sign)
        v = -value;
    else
        v = (unsigned)value;

    while (v || tp == tmp)
    {
        i = v % radix;
        v /= radix; // v/=radix uses less CPU clocks than v=v/radix does
        if (i < 10)
            *tp++ = i + '0';
        else
            *tp++ = i + 'a' - 10;
    }

    int len = tp - tmp;

    if (sign)
    {
        *sp++ = '-';
        len++;
    }

    while (tp > tmp)
        *sp++ = *--tp;

    return len;
}

char* uitoa(uint32_t num, int base) {
	static char decim[] = "0123456789ABCDEF";
	static char buffer[34];
	char* ptr;

	ptr = &buffer[33];
	*ptr = '\0';

	do
	{
		*--ptr = decim[num % base];
		num /= base;
	} while (num != 0);

	return(ptr);
}

template <typename T, size_t N>
constexpr size_t arraySize(const T(&)[N]) { return N; }

inline uint8_t sizeLog2(size_t size) {
	return size > 0xFFFF ? 4 : size > 0xFF ? 2 : 1;
}

/*template<size_t s>struct uintByte { static_assert(false, "Incorrect byte count for an unsigned type"); };
template<>struct uintByte<1> { using value_t = uint8_t; };
template<>struct uintByte<4> { using value_t = uint16_t;  };
template<>struct uintByte<8> { using value_t = uint32_t; };
template<>struct uintByte<16> { using value_t = uint64_t; };*/

FASTOS_NAMESPACE_END

