#pragma once
#include <fastlib/FastDefines.h>
#include <fastlib/maths.h>
#include <fastlib/stdlib.h>
#include <fastlib/FastAsm.h>

#include <kernel/memory/FastPtr.h>
#include <kernel/FastTerminal.h>

FASTOS_NAMESPACE_BEGIN

class FastVBE {
public:
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

    FastStatus initialize(/*FastMemoryImpl& mem, FastTerminal& term*/);

private:
	VBEInfo_t m_VBEInfos;
    VBEModeInfo_t m_ModeInfos;
};

FASTOS_NAMESPACE_END