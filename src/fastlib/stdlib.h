#pragma once
#include <fastlib/FastDefines.h>

FASTOS_NAMESPACE_BEGIN

template<typename _Ty>inline _Ty* arrayCopy(_Ty* dest, const _Ty* from, size_t size) {
	do dest[size] = from[size]; while (size--);
	return dest;
}

template <typename T, size_t N>
constexpr size_t arraySize(const T(&)[N]) { return N; }

int itoa(int value, char* sp, int radix);
char* uitoa(uint64_t num, int base);

void* memset(void* ptr, int value, size_t count);

template<typename _Ty>inline _Ty* arraySet(_Ty* _where, _Ty val, size_t count) {
	for (; count; --count)
		*_where++ = val;
}

FASTOS_NAMESPACE_END

