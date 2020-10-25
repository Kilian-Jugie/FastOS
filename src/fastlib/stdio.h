#pragma once
#include <fastlib/FastDefines.h>

FASTOS_NAMESPACE_BEGIN

/*
	Increase this might increase printf performance in some 
	cases but printf is designed to function before memory 
	managment is up so buffer is allocated on stack so be 
	carefull while increasing this value !
*/
#define PRINTF_STATIC_BUFFER 64

void printf(const char* frmt, ...);

FASTOS_NAMESPACE_END