#pragma once
#include <fastlib/FastDefines.h>
#include <fastlib/maths.h>
#include <kernel/FastOS.h>

FASTOS_NAMESPACE_BEGIN

struct FastMemoryIndexer {
	FastMemoryIndexer* nxt;
	void* blk;
};

class FastMemoryImpl {
	void* m_Begin, *m_End;
	FastMemoryIndexer* m_Indexers;
	FastMemoryIndexer* m_FreeIndexers;
	volatile int32_t _padding;
	uifast_t m_MinPow, m_MaxPow, m_MinDecim, m_NbPow;
	FastMemoryIndexer* m_IndexersMasterHeap;

	void* m_MasterBlocksHeap;
public:

	void init(uifast_t minPow, uifast_t maxPow, void* begin, void* end) {
		m_MinPow = minPow;
		m_MaxPow = maxPow;
		m_Begin = begin;
		m_End = end;

		m_NbPow = maxPow - minPow;
		m_MinDecim = 1 << minPow;

		/*term.cprint("Init: ");
		term.cprint(m_MinPow);
		term.cprint(" : ");
		term.cprint(m_MinDecim);
		term.cprint("\n");*/

		m_FreeIndexers = (FastMemoryIndexer*)(m_Begin);
		//Not 100% needed but safer ?
		for (uifast_t i{ 0 }; i < m_NbPow; ++i) {
			m_FreeIndexers[i].blk = nullptr;
			m_FreeIndexers[i].nxt = nullptr;
		}

		m_Indexers = (FastMemoryIndexer*)((uifast_t)(m_Begin) + (sizeof(FastMemoryIndexer) * m_NbPow));
		//Not 100% needed but safer ?
		for (uifast_t i{ 0 }; i < m_NbPow; ++i) {
			m_Indexers[i].blk = nullptr;
			m_Indexers[i].nxt = nullptr;
		}

		m_IndexersMasterHeap = (FastMemoryIndexer*)((uifast_t)(m_Begin) + sizeof(FastMemoryIndexer) * m_NbPow * 2);
		m_MasterBlocksHeap = m_End;
	}

	template<typename _Ty>void free(_Ty* ptr, size_t size) {
		if (size < m_MinDecim) return;
		const uint32_t p{ log2_32(size) };
		if (ptr<m_Begin || ptr>m_End) return;
		if (m_FreeIndexers[p].nxt != nullptr) {
			FastMemoryIndexer* tmpnxt = m_Indexers[p].nxt;
			m_Indexers[p].nxt = m_FreeIndexers[p].nxt;
			m_Indexers[p].nxt->blk = ptr;
			m_Indexers[p].nxt->nxt = tmpnxt;
			m_FreeIndexers[p].nxt = m_FreeIndexers[p].nxt->nxt;
		}
		else {
			m_Indexers[p].nxt = m_IndexersMasterHeap;
			m_IndexersMasterHeap++;
			m_Indexers[p].nxt->blk = ptr;
			m_Indexers[p].nxt->nxt = nullptr;
		}
		//ptr = nullptr;
	}

	template<typename _Ty>_Ty* malloc(size_t size) {
		/*term.cprint("A ");
		//term.cprint(size);
		//term.cprint(" vs >");
		term.cprint((uint32_t)&m_MinPow, 16);
		term.cprint(" = ");
		term.cprint((uint32_t)m_MinPow, 10);
		term.cprint(" / ");
		term.cprint((uint32_t)m_MinPow, 2);
		term.cprint("\n");
		term.cprint((uint32_t)&m_MinDecim, 16);
		term.cprint(" = ");
		term.cprint((uint32_t)m_MinDecim, 10);
		term.cprint(" / ");
		term.cprint((uint32_t)m_MinDecim, 2);
		term.cprint("\n");*/
		if (size < m_MinDecim) return nullptr;
		const uint32_t p{ log2_32(size) };
		if (m_Indexers[p].nxt != nullptr) {
			void* lblk{ m_Indexers[p].nxt->blk };
			m_FreeIndexers[p].nxt = m_Indexers[p].nxt;
			m_Indexers[p].nxt = m_Indexers[p].nxt->nxt;
			return (_Ty*)(lblk);
		}
		m_MasterBlocksHeap -= size;
		return (_Ty*)(m_MasterBlocksHeap);
	}
};

FASTOS_NAMESPACE_END