#pragma once

//#include "memory/FastLowMemoryAllocator.h"

#include "memory/FastPtr.h"
#include <FastAsm.h>
//#include "FastTerminal.h"
//#include "graphics/FastVBE.h"

FASTOS_NAMESPACE_BEGIN

struct VBEInfo_t {
	char VbeSignature[4];             // == "VESA"
	uint16_t VbeVersion;                 // == 0x0300 for VBE 3.0
	uint16_t OemStringPtr[2];            // isa vbeFarPtr
	uint8_t Capabilities[4];
	uint16_t VideoModePtr[2];         // isa vbeFarPtr
	uint16_t TotalMemory;             // as # of 64KB blocks
} __attribute__((packed));

struct VBEModeInfo_t {
	uint16_t attributes;
	uint8_t winA, winB;
	uint16_t granularity;
	uint16_t winsize;
	uint16_t segmentA, segmentB;
	uint32_t* realFctPtr;
	uint16_t pitch; // bytes per scanline

	uint16_t Xres, Yres;
	uint8_t Wchar, Ychar, planes, bpp, banks;
	uint8_t memory_model, bank_size, image_pages;
	uint8_t reserved0;

	uint8_t red_mask, red_position;
	uint8_t green_mask, green_position;
	uint8_t blue_mask, blue_position;
	uint8_t rsv_mask, rsv_position;
	uint8_t directcolor_attributes;

	uint32_t physbase;  // The Linear framebuffer addr
	uint32_t reserved1;
	uint16_t reserved2;
} __attribute__((packed));

extern "C" {
	void kprint(uint32_t nb) {
		term.cprint(nb);
	}

	void kprintstr(const char* ch) {
		term.cprint(ch);
	}

	void dump_regs(uint32_t eax, uint32_t ebx, uint32_t ecx, uint32_t edx) {
		term.cprint("RegsDump: a=");
		term.cprint(eax, 16);
		term.cprint(" b=");
		term.cprint(ebx, 16);
		term.cprint(" c=");
		term.cprint(ecx, 16);
		term.cprint(" d=");
		term.cprint(edx, 16);
		term.cprint("\n");
	}
}

	class FastOS {
	public:

		void main() {
			term.initialize();
			//kprint(5);
			/*term.cprint("enable: ");
			term.cprint(enable_a20(), 10);
			term.cprint("\n");
			term.cprint("check: ");
			//term.cprint(check_a20(), 10);
			term.cprint("\n");*/
			
			/*if (!ASM::new_set_a20(true)) {
				term.cprint("ERROR: Could not turn on A20 line\n");
			}*/

			//TODO: Support ACPI 3 24 bytes entries !
			struct BIOSMemEntry {
				uint32_t laddr;
				uint32_t haddr;
				uint32_t lreg;
				uint32_t hreg;
				uint32_t type;
			};

			//BIOSMemEntry mem;// [10] ;

			term.cprint("C'est incroyable\n");


			/*term.cprint("ASM>");
			get_mmap(PTR_SEG(&mem), PTR_OFF(&mem));
			term.cprint("<END\n");*/


			/*for (int i(0); i < 10; ++i) {
				term.cprint(i);
				term.cprint(" ");
				term.cprint((mem[i].haddr << 32) | mem[i].laddr);
				term.cprint("\n");
			}*/

			/*FastMemoryImpl impl;

			impl.init(3, 31, (void*)0x00000600, (void*)0x0007BFF);

			term.cprint("Memory Initialized\n");

			FastPtr<VBEInfo_t> ptr1{ impl };
			FastPtr<VBEModeInfo_t> ptr2{ impl };

			term.cprint((uint32_t)ptr1.get());
			term.cprint(" ");
			term.cprint((uint32_t)ptr2.get());
			term.cprint("\n");*/

			//term.cprint("FastPtr tested\n");
			//FastVBE vbe;
			//vbe.initialize(impl, term);
			//term.cprint("Initialized\n");

			/*void* ptr1 = impl.malloc<void>(64);

			term.cprint("Ptr1: ");
			term.cprint((uifast_t)ptr1, 16);
			term.cprint("\n");
			impl.free(ptr1, 64);

			void* ptr2 = impl.malloc<void>(64);

			term.cprint("Ptr2: ");
			term.cprint((uifast_t)ptr2, 16);
			term.cprint("\n");

			
			void* ptr3 = impl.malloc<void>(128);

			term.cprint("Ptr3: ");
			term.cprint((uifast_t)ptr3, 16);
			term.cprint("\n");

			impl.free(ptr2, 64);
			impl.free(ptr3, 64);

			void* ptr4 = impl.malloc<void>(128);

			term.cprint("Ptr4: ");
			term.cprint((uifast_t)ptr4, 16);
			term.cprint("\n");
			impl.free(ptr4, 64);*/

			/*FastLowMemoryAllocator alloc{ (void*)0x00000500, 2 };
			alloc.addPool((void*)0x00000600, (void*)0x0007BFF);
			term.cprint("Alloc: p");
			term.cprint((uint32_t)(alloc.m_Pools), 16);
			term.cprint(" p0: ");
			term.cprint((uint32_t)*(uint8_t*)((*alloc.m_Pools)[0]), 16);
			term.cprint("\n");

			void* testptr = alloc.malloc(256);

			term.cprint("\nTestptr: ");
			term.cprint((uint32_t)testptr);

			alloc.free(testptr, 256);

			//term.cprint("\n");
			//term.cprint(123456789);*/


			/*char b[8192];
			char* ptr = (char*)0x00000500;
			for (int i = 0; i < 8192; ++i) {
				if (ptr[i] == 0) b[i] = '0';
				else b[i] = ptr[i];
			}*/

			//term.cprint(b);
		}
	};

	

FASTOS_NAMESPACE_END