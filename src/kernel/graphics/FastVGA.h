#pragma once
#include <FastDefines.h>

FASTOS_NAMESPACE_BEGIN

class FastVGA {
	char* m_VGA;
	size_t m_SizeX;
	size_t m_SizeY;
public:
	FastVGA(char* vga, size_t sizeX, size_t sizeY) : m_VGA{ vga }, m_SizeX{ sizeX }, m_SizeY{ sizeY } {}

	char& operator[](size_t index) {
		return m_VGA[index];
	}

	const size_t& getSizeX() {
		return m_SizeX;
	}

	const size_t& getSizeY() {
		return m_SizeY;
	}
};


FASTOS_NAMESPACE_END