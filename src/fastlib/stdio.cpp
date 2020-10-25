#include "stdio.h"
#include <kernel/FastOS.h>
#include <stdarg.h>
#include <kernel/FastTerminal.h>
#include <fastlib/string.h>

FASTOS_NAMESPACE_BEGIN

void printf(const char* frmt, ...) {
	va_list ap;
	va_start(ap, frmt);

	//TODO: static ?
	char buffer[PRINTF_STATIC_BUFFER];
	unsigned index = 0;

	auto flush = [&buffer, &index]() {
		if (index > 0) {
			FastOS::terminal->cprint(buffer);
			index = 0;
		}
	};

	auto addBuffer = [&buffer, &index, &flush](char ch) {
		if (index == PRINTF_STATIC_BUFFER - 1)
			flush();
		buffer[index++] = ch;
	};

	while (*frmt) {
		if (*frmt == '%') {
			switch (*(++frmt)) {
			case 's': {
				flush();
				FastOS::terminal->cprint(va_arg(ap, const char*));
			}break;
			case 'i': {
				flush();
				FastOS::terminal->cprint(va_arg(ap, int));
			}break;
			case 'p': {
				flush();
				FastOS::terminal->cprint((iptr_t)va_arg(ap, void*), 16);
			}break;
			default:
				addBuffer(*frmt);
				break;
			}
		}
		else addBuffer(*frmt);
		++frmt;
	}
	
	if (index > 0) 
		FastOS::terminal->cprint(buffer);

	va_end(ap);
}

FASTOS_NAMESPACE_END