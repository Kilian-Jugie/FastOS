#include "FastVBE.h"

FASTOS_NAMESPACE_BEGIN

FastStatus FastVBE::initialize() {
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

FASTOS_NAMESPACE_END