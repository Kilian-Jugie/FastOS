#pragma once
#include <FastDefines.h>

FASTOS_NAMESPACE_BEGIN

size_t strlen(const char* str) {
	int r = 0;
	while (str[r++]) {}
	return r;
}

char* strcpy(char* dest, const char* from, size_t size) {
	do dest[size] = from[size]; while (size--);
	return dest;
}

//From: http://mgronhol.github.io/fast-strcmp/
int strcmp(const char* f, const char* s, size_t len) {
    int fast = len / sizeof(size_t) + 1;
    int offset = (fast - 1) * sizeof(size_t);
    int current_block = 0;

    if (len <= sizeof(size_t)) { fast = 0; }


    size_t* lptr0 = (size_t*)f;
    size_t* lptr1 = (size_t*)s;

    while (current_block < fast) {
        if ((lptr0[current_block] ^ lptr1[current_block])) {
            size_t pos;
            for (pos = current_block * sizeof(size_t); pos < len; ++pos) {
                if ((f[pos] ^ s[pos]) || (f[pos] == 0) || (s[pos] == 0)) {
                    return  (int)((unsigned char)f[pos] - (unsigned char)s[pos]);
                }
            }
        }

        ++current_block;
    }
    while (len > offset) {
        if ((f[offset] ^ s[offset])) {
            return (int)((unsigned char)f[offset] - (unsigned char)s[offset]);
        }
        ++offset;
    }
    return 0;
}

FASTOS_NAMESPACE_END