#pragma once
#include <FastDefines.h>
#include <maths.h>
#include <stdlib.h>
#include <FastAsm.h>
#include "../memory/FastPtr.h"
#include "../FastTerminal.h"

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

    FastStatus initialize(/*FastMemoryImpl& mem, FastTerminal& term*/) {
        /*FastPtr<VBEInfo_t> vib_tmp{ mem };
        term.cprint("Preparing int 10h 4f00 : ");
        regs16_t regs;
        regs.ax = 0x4f00; //GetControllerInfo
        regs.es = SEG(vib_tmp.get());
        regs.di = OFF(vib_tmp.get());
        
        int32(0x10, &regs);
        term.cprint("Interrupted !\n");

        m_VBEInfos = *vib_tmp;

        FastPtr<VBEModeInfo_t> vmi_tmp{ mem };
        uint16_t* modes = (uint16_t*)REAL_PTR(m_VBEInfos.VideoModePtr);
        uint16_t mode = 0;

        term.cprint((rtpt_32(sizeof(VBEModeInfo_t))));
        term.cprint(" ");

        size_t i{ 0 };
        
        while (modes[i] != 0xFFFF && mode==0) {
            term.cprint((uint32_t)vmi_tmp.get(), 16);
            term.cprint(" ");
            term.cprint("Preparing int 10h 4f01 : ");
            regs.ax = 0x4f01; //GetModeInfo
            regs.cx = modes[i];
            regs.es = SEG(vmi_tmp.get());
            regs.di = OFF(vmi_tmp.get());
            term.cprint(regs.ax, 16);
            term.cprint(" ");
            term.cprint(regs.cx);
            term.cprint(" ");
            term.cprint(regs.es, 16);
            term.cprint(" ");
            term.cprint(regs.di, 16);
            term.cprint(" ");
            int32(0x10, &regs);
            term.cprint("Interrupted !\n");
            if (vmi_tmp->Xres == 1280 && vmi_tmp->Yres == 720 && vmi_tmp->bpp == 32) {
                term.cprint("Mode found\n");
                m_ModeInfos = *vmi_tmp;
                mode = modes[i];
            }
            ++i;
        }

        if (mode==0) return FastStatus::VBE_MODE_NOT_FOUND;

        term.cprint("Preparing int 10h 4f02 : ");
        regs.ax = 0x4f02; //SetVideoMode
        regs.bx = mode | 0x4000; //Linear Frame Buffer Bit
        regs.di = 0;
        regs.es = 0;
        int32(0x10, &regs);
        term.cprint("Interrupted !\n");
        */
        return FastStatus::SUCCESS;
    }



private:
	VBEInfo_t m_VBEInfos;
    VBEModeInfo_t m_ModeInfos;
};

FASTOS_NAMESPACE_END