#pragma once
#include <FastDefines.h>
#include "FastMemory.h"

FASTOS_NAMESPACE_BEGIN

template<typename _Ty>class FastArray {
	_Ty* m_Data;
	FastMemoryImpl& m_Mem;
	size_t m_Size;
public:
	FastArray(FastMemoryImpl& mem, size_t size) : m_Size{ rtpt_32(size) }, m_Mem{ mem }, m_Data{ m_Mem.malloc<_Ty>(m_Size) } {

	}

	_Ty& operator[](size_t i) {
		return m_Data[i];
	}

	size_t size() const {
		return m_Size;
	}

	void desallocate() {
		m_Mem.free(m_Data, m_Size);
	}

	void reallocate() {
		reallocate(m_Size);
	}

	void reallocate(size_t newsize) {
		if (m_Data) desallocate();
		m_Size = rtpt_32(newsize);
		m_Data = m_Mem.malloc<_Ty>(m_Size);
	}

	~FastArray() {
		if (m_Data) desallocate();
	}
};

FASTOS_NAMESPACE_END