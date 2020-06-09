#pragma once
#include <FastDefines.h>

FASTOS_NAMESPACE_BEGIN

constexpr auto INT_BIOS_MEM = 0x15;

constexpr auto INT_A20_OFF = 0x2400;
constexpr auto INT_A20_ON = 0x2401;
constexpr auto INT_A20_STATUS = 0x2402;
constexpr auto INT_A20_SUPPORT = 0x2403;

constexpr auto INT_MEMORY_MAP = 0xE820;
constexpr auto INT_MEMORY_MAP_MAGIC = 0x534D4150;


constexpr auto REG_FLAGS_MASK_CF = 1 << 0;
constexpr auto REG_FLAGS_MASK_PF = 1 << 2;
constexpr auto REG_FLAGS_MASK_AF = 1 << 4;
constexpr auto REG_FLAGS_MASK_ZF = 1 << 6;
constexpr auto REG_FLAGS_MASK_SF = 1 << 7;
constexpr auto REG_FLAGS_MASK_TF = 1 << 8;
constexpr auto REG_FLAGS_MASK_IF = 1 << 9;
constexpr auto REG_FLAGS_MASK_DF = 1 << 10;
constexpr auto REG_FLAGS_MASK_OF = 1 << 11;

constexpr auto REG_EFLAGS_MASK_RF = 1 << 16;
constexpr auto REG_EFLAGS_MASK_VM = 1 << 17;
constexpr auto REG_EFLAGS_MASK_AC = 1 << 18;
constexpr auto REG_EFLAGS_MASK_VIF = 1 << 19;
constexpr auto REG_EFLAGS_MASK_VIP = 1 << 20;
constexpr auto REG_EFLAGS_MASK_ID = 1 << 21;

FASTOS_NAMESPACE_END