#pragma once
#include <FastDefines.h>
#include "FastMemory.h"

FASTOS_NAMESPACE_BEGIN

template<typename _Ty>class FastPtr {
	_Ty* m_Ptr;
	FastMemoryImpl& m_Mem;
public:
	FastPtr(FastMemoryImpl& mem): m_Mem{mem}, m_Ptr{m_Mem.malloc<_Ty>(rtpt_32(sizeof(_Ty)))} {}

	_Ty* operator->() { return m_Ptr; }
	_Ty** operator&() { return &m_Ptr; }
	_Ty operator*() { return *m_Ptr; }

	_Ty operator=(const _Ty& lv) { *m_Ptr = lv; return *m_Ptr; }
	_Ty* operator=(_Ty*) = delete;

	_Ty* get() { return m_Ptr; }

	~FastPtr() {
		m_Mem.free(m_Ptr, rtpt_32(sizeof(_Ty)));
	}
};

FASTOS_NAMESPACE_END