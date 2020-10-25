#pragma once
#include <fastlib/FastDefines.h>
#include "vgautils.h"

FASTOS_NAMESPACE_BEGIN

/*TODO: this with dynamic alloc to screen size*/
#define FASTOS_TERMINAL_VSB_SIZE_Y 1024
#define FASTOS_TERMINAL_VSB_SIZE_X 80

class FastTerminal {
	uint32_t m_Width, m_Height;
	uint16_t* m_VGABuffer;
	vga_utils::vga_color m_ColorBackground, m_ColorForeground;
	uint8_t m_ColorGeneral;

	//FastVGATextBuffer m_TextBuffer;
	size_t cprintIndex = 0;
public:

	FastTerminal() /* : m_TextBuffer{(uint16_t*)VGA_ADDR, FASTOS_TERMINAL_VSB_SIZE_X , FASTOS_TERMINAL_VSB_SIZE_Y }*/ {}

	void print(const char ch[], int y = 0);
	void cprint(const char ch[]);
	void cprint(uint64_t in, int base = 10);

	uint16_t* tt(const char* buf, size_t N, uint8_t c);

	void initialize();
};

FASTOS_NAMESPACE_END