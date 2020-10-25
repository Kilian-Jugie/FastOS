#pragma once
#include <fastlib/FastDefines.h>
#include <fastlib/string.h>
#include <fastlib/stdlib.h>

FASTOS_NAMESPACE_BEGIN



class FastVGATextBuffer {
	size_t m_SizeX;
	size_t m_SizeY;
	uint16_t* m_VGA;
	uint16_t* m_VirtualVGA;
	size_t m_IndexY;

	vga_utils::vga_color m_ColorBackground, m_ColorForeground;
	uint8_t m_ColorGeneral;
public:
	FastVGATextBuffer(uint16_t* vga, size_t sizeX, size_t sizeY)
		: m_VGA{ vga }, m_SizeX{ sizeX }, m_SizeY{ sizeY },
		m_VirtualVGA{ (uint16_t*)(vga - sizeof(uint16_t)*(m_SizeX * (m_SizeY - 1))) },
		m_IndexY{ 0 }, m_ColorBackground{ vga_utils::VGA_COLOR_BLACK },
		m_ColorForeground{ vga_utils::VGA_COLOR_LIGHT_GREY },
		m_ColorGeneral{ vga_utils::entryColor(m_ColorForeground, m_ColorBackground) } {

	}

	//This MUST not excess FASTOS_TERMINAL_VSB_SIZE_X chars
	void writeLine(const uint16_t* ch, size_t size) {
		arrayCopy(&m_VirtualVGA[m_SizeY * m_IndexY--], ch, size);
	}

	uint16_t& operator()(int x, int y) {
		return m_VGA[y * m_SizeY + x];
	}

	void forward(size_t offset) {
		m_VirtualVGA -= m_SizeX;
	}

};

FASTOS_NAMESPACE_END