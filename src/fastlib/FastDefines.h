#pragma once

//NOT SUPPORTED
//#define FASTOS_BITS_64 

//#define FASTOS_BITS_32

#define FASTOS_NAMESPACE_BEGIN namespace FastOS {
#define FASTOS_NAMESPACE_END }

FASTOS_NAMESPACE_BEGIN

using int8_t = signed char;
using int16_t = signed short;
using int32_t = signed int;
using int64_t = signed long long;

using uint8_t = unsigned char;
using uint16_t = unsigned short;
using uint32_t = unsigned int;
using uint64_t = unsigned long long;

#ifdef FASTOS_BITS_32
using uifast_t = uint32_t;
using ifast_t = int32_t;
using size_t = uint32_t;
using iptr_t = uint32_t;
#else
using uifast_t = uint64_t;
using ifast_t = int64_t;
using size_t = uint64_t;
using iptr_t = uint64_t;
#endif // FASTOS_BITS_32




enum class FastStatus {
	SUCCESS,
	VBE_MODE_NOT_FOUND

};

FASTOS_NAMESPACE_END