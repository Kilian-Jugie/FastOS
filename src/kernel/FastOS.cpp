#include "FastOS.h"
#include <fastlib/stdio.h>

FASTOS_NAMESPACE_BEGIN

FastTerminal* FastOS::terminal = nullptr;
FastTerminal FastOS::_terminalImpl;

void FastOS::main(unsigned long magic, unsigned long mbi) {
	terminal = &_terminalImpl;
	terminal->initialize();
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
	/*struct BIOSMemEntry {
	uint32_t laddr;
	uint32_t haddr;
	uint32_t lreg;
	uint32_t hreg;
	uint32_t type;
	};

	//BIOSMemEntry mem;// [10] ;*/

	printf("%s %s %p !\n", "Hello", "World", terminal);

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

void kprint(uint32_t nb) {
	//term.cprint(nb);
}

void kprintstr(const char* ch) {
	//term.cprint(ch);
}

void dump_regs(uint32_t eax, uint32_t ebx, uint32_t ecx, uint32_t edx) {
	/*term.cprint("RegsDump: a=");
	term.cprint(eax, 16);
	term.cprint(" b=");
	term.cprint(ebx, 16);
	term.cprint(" c=");
	term.cprint(ecx, 16);
	term.cprint(" d=");
	term.cprint(edx, 16);
	term.cprint("\n");*/
}

FASTOS_NAMESPACE_END
