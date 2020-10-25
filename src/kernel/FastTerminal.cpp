#include "FastTerminal.h"
#include <fastlib/stdlib.h>

FASTOS_NAMESPACE_BEGIN

void FastTerminal::print(const char ch[], int y) {
	size_t index(0);
	do {
		m_VGABuffer[y * FASTOS_TERMINAL_VSB_SIZE_X + index] = vga_utils::entry(ch[index], m_ColorGeneral);
	} while (ch[++index]);

}

void FastTerminal::cprint(const char ch[]) {
	size_t index(0);
	static size_t x(0);
	do {
		if (ch[index] == '\n') {
			cprintIndex++;
			x = 0;
		}
		else
			m_VGABuffer[cprintIndex * FASTOS_TERMINAL_VSB_SIZE_X + x] = vga_utils::entry(ch[index], m_ColorGeneral);
		++x;
	} while (ch[++index]);
}

void FastTerminal::cprint(uint64_t in, int base) {
	cprint("0x");
	cprint(uitoa(in, base));
}

uint16_t* FastTerminal::tt(const char* buf, size_t N, uint8_t c) {
	static uint16_t rbuf[128];
	for (auto i(0); i < N; ++i) {
		rbuf[i] = vga_utils::entry(buf[i], c);
	}
	return rbuf;
}

void FastTerminal::initialize() {
	m_VGABuffer = (uint16_t*)VGA_ADDR;

	m_Width = vga_utils::VGA_WIDTH;
	m_Height = vga_utils::VGA_HEIGHT;

	m_ColorBackground = vga_utils::VGA_COLOR_BLACK;
	m_ColorForeground = vga_utils::VGA_COLOR_LIGHT_GREY;
	m_ColorGeneral = vga_utils::entryColor(m_ColorForeground, m_ColorBackground);


	for (uint32_t y(0u); y < m_Height; ++y) {
		for (uint32_t x(0u); x < m_Width; ++x) {
			const uint32_t i = y * m_Width + x;
			m_VGABuffer[i] = vga_utils::entry(' ', m_ColorGeneral);
		}
	}
	//print("Ce noyau d'OS fonctionne ");
	//print(uitoa(8456, 10));

	//uint32_t buf;
	//uint32_t buf2;

	//FastASM::cpuid(0, &buf, &buf2);

	//print((char*)&buf);

	/*FastVBE::VBEInfo_t* infos{ (FastVBE::VBEInfo_t*)0x80000 };
	regs16_t regs;
	regs.ax = 0x4f00;
	regs.es = 0x8000;
	regs.di = 0x0000;
	int32(0x10, &regs);
	*/
	/*print(uitoa(regs.ax, 16));
	print(infos->signature, 1);
	print(uitoa(infos->version, 16), 2);
	print(uitoa(infos->video_memory, 10), 3);
	print(infos->oem_data, 4);*/

	//print(infos.signature, 0);
	//print(uitoa(addrinfos, 16), 1);
	//print(uitoa(bwhigher32(addrinfos), 16), 2);
	//print(uitoa(bwlower32(addrinfos), 16), 3);
	//print(uitoa(fast_vbe_get_controller_info(bwlower32(addrinfos), bwhigher32(addrinfos)), 10), 1);
	//print(uitoa(fast_vbe_get_controller_info(bwhigher32(addrinfos), bwlower32(addrinfos)), 10), 1);
	//const char* stcbuf = "Ceci est un test";
	//auto* stbuf = tt(stcbuf, strlen(stcbuf), m_ColorGeneral);
	//(*(uint16_t**)VGA_ADDR) = stbuf;
}

FASTOS_NAMESPACE_END