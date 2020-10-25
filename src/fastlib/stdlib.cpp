#include "stdlib.h"

FASTOS_NAMESPACE_BEGIN

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

char* uitoa(uint64_t num, int base) {
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

void* memset(void* ptr, int value, size_t count) {
    int* cptr = (int*)ptr;
    for (; count; --count)
        *cptr++ = value;
    return ptr;
}

FASTOS_NAMESPACE_END