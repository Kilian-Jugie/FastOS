#ifndef _VGAUTILS_H_GUARD
#define _VGAUTILS_H_GUARD

#include <FastDefines.h>

constexpr auto VGA_ADDR = 0xB8000;

FASTOS_NAMESPACE_BEGIN
	class vga_utils {
	public:
		static const unsigned long VGA_WIDTH = 80;
		static const unsigned long VGA_HEIGHT = 25;

		enum vga_color {
			VGA_COLOR_BLACK = 0,
			VGA_COLOR_BLUE = 1,
			VGA_COLOR_GREEN = 2,
			VGA_COLOR_CYAN = 3,
			VGA_COLOR_RED = 4,
			VGA_COLOR_MAGENTA = 5,
			VGA_COLOR_BROWN = 6,
			VGA_COLOR_LIGHT_GREY = 7,
			VGA_COLOR_DARK_GREY = 8,
			VGA_COLOR_LIGHT_BLUE = 9,
			VGA_COLOR_LIGHT_GREEN = 10,
			VGA_COLOR_LIGHT_CYAN = 11,
			VGA_COLOR_LIGHT_RED = 12,
			VGA_COLOR_LIGHT_MAGENTA = 13,
			VGA_COLOR_LIGHT_BROWN = 14,
			VGA_COLOR_WHITE = 15,
		};

		//Convert readable color format to vga-readable format
		static inline unsigned char entryColor(enum vga_color fg, enum vga_color bg)
		{
			return fg | bg << 4;
		}

		//Convert a character to vga-readable format with color support
		static inline unsigned short entry(unsigned char uc, unsigned char color)
		{
			return (unsigned short)uc | (unsigned short)color << 8;
		}


	};
FASTOS_NAMESPACE_END
#endif
