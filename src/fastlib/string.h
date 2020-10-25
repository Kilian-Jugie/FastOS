#pragma once
#include <fastlib/FastDefines.h>

FASTOS_NAMESPACE_BEGIN

size_t strlen(const char* str);

char* strcpy(char* dest, const char* from, size_t size);

int strcmp(const char* f, const char* s, size_t len);

FASTOS_NAMESPACE_END