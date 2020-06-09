#pragma once
#include <FastDefines.h>
#include <maths.h>

#include "../FastTerminal.h"

FASTOS_NAMESPACE_BEGIN

static FastTerminal term;

#pragma pack(1)
template<typename bitsize>class FastLowMemoryPool {
public:
	virtual void* malloc(bitsize size) = 0;
	virtual void free(void* ptr, bitsize size) = 0;
};

//#define FASTOS_LOW_MEMORY_POOL_MEMBERS volatile uint32_t sizeofThis = sizeof(decltype(*this))

template<typename bitsize>struct FastLowMemoryPoolBlk {
	bitsize vaddr;
	bitsize nxt;
};

template<typename bitsize>class FastLowMemoryPoolPerformance : public FastLowMemoryPool<bitsize> {
public:
	const uint8_t thissize = sizeof(bitsize);
	bitsize end;
	bitsize masterHeap;
	uint32_t addrOffset;
	FastLowMemoryPoolBlk<bitsize>** heaps;
	bitsize heapsCurrent;

	inline void* toAddr(bitsize virtualAddr) {
		return (void*)(addrOffset + virtualAddr);
	}

	inline bitsize toVirtual(void* addr) {
		return (bitsize)(addrOffset - (uint32_t)(addr));                                  
	}

	virtual void* malloc(bitsize size) override final {
		if (size < 1) return nullptr;
		const bitsize rsize{ rtpt_32(size) };
		const uint8_t index{ log2_32(rsize) - 1 };
		FastLowMemoryPoolBlk<bitsize>* blk{ heaps[index] };
		if (blk->nxt == 0) {
			blk->nxt = heapsCurrent;
			heaps[index] = (FastLowMemoryPoolBlk<bitsize>*)toAddr(heapsCurrent);
			--heapsCurrent;
			blk->vaddr = masterHeap;
			masterHeap += rsize;
			return toAddr(blk->vaddr);
		}
		heaps[index] = (FastLowMemoryPoolBlk<bitsize>*)toAddr(blk->nxt);
		return toAddr(blk->vaddr);
		/*
		if (blk->vaddr == 0) {
			blk->vaddr = masterHeap;
			masterHeap += rsize;
			--heaps[index];
			blk->nxt = toVirtual(heaps[index]);
			return toAddr(blk->vaddr);
		}
		else {
			heaps[index] = (FastLowMemoryPoolBlk<bitsize>*)toAddr(blk->nxt);
			return toAddr(blk->vaddr);
		}*/
	}


	virtual void free(void* ptr, bitsize size) override final {
		if (!ptr) return;
		const bitsize vptr{ toVirtual(ptr) };
		const uint8_t index{ log2_32(rtpt_32(size)) - 1 };
		FastLowMemoryPoolBlk<bitsize>* buf{(FastLowMemoryPoolBlk<bitsize> * )end-index*sizeof(FastLowMemoryPoolBlk<bitsize>)-1};
		while (buf->vaddr != vptr && buf->nxt > 0) {
			buf = (FastLowMemoryPoolBlk<bitsize> * )toAddr(buf->nxt);
		}
		if (buf->vaddr == vptr) {
			buf->nxt = toVirtual(heaps[index]);
			heaps[index] = buf;
		}
	}

};
#pragma pack()

class FastLowMemoryAllocator {
public: //for debug only
	uint8_t m_PoolCount, m_PoolIndex;
	void*** m_Pools;
public:
	//Mem usage: poolCount*sizeoof(void*)
	FastLowMemoryAllocator(void* thisAddr, uint8_t poolCount) 
		: m_PoolCount{ poolCount }, m_PoolIndex{ 0 }, m_Pools{ (void***)thisAddr } {
	}

	template<typename _ty>void* _internalMalloc(void* pool, size_t size) {
		term.cprint(" s ");
		term.cprint(size);
		return ((FastLowMemoryPoolPerformance<_ty>*)pool)->malloc((_ty)size);
	}

	void* malloc(size_t size) {
		uint8_t lsize = sizeLog2(size);
		term.cprint("ls ");
		term.cprint(lsize);
		void* ret{ nullptr }; //nrvo
		for (uint8_t i{ 0 }; i < m_PoolIndex; ++i) {
			term.cprint(" ps ");
			term.cprint(*((uint8_t*)*(m_Pools[i])));
			if (lsize <= *((uint8_t*)*(m_Pools[i]))) {
				switch (lsize) {
					case sizeof(uint8_t)  : ret = _internalMalloc<uint8_t>(*m_Pools[i], size);
						break;
					case sizeof(uint16_t) : ret = _internalMalloc<uint16_t>(*m_Pools[i], size);
						break;
					case sizeof(uint32_t) : ret = _internalMalloc<uint32_t>(*m_Pools[i], size);
						break;
					default: return nullptr; //Should never be called
				}
			}
			term.cprint(" ret ");
			term.cprint((uint32_t)ret, 16);
			if (ret != nullptr) 
				break;
		}
		return ret;
	}

	template<typename _ty>bool _internalFree(FastLowMemoryPoolPerformance<_ty>* pool, void* ptr, size_t size) {
		if ((uint32_t)ptr - pool->addrOffset < pool->end) {
			pool->free(ptr, size);
			return true;
		}
		return false;
	}

	void free(void* ptr, size_t size) {
		uint8_t lsize = sizeLog2(size);
		bool stop = false;
		uint8_t i{ 0 };
		do {
			if (lsize <= *((uint8_t*)*(m_Pools[i]))) {
				switch (lsize) {
				case sizeof(uint8_t) : stop = _internalFree((FastLowMemoryPoolPerformance<uint8_t>*)*m_Pools[i], ptr, size);
				break;
				case sizeof(uint16_t) : stop = _internalFree((FastLowMemoryPoolPerformance<uint16_t>*) * m_Pools[i], ptr, size);
				break;
				case sizeof(uint32_t) : stop = _internalFree((FastLowMemoryPoolPerformance<uint32_t>*) * m_Pools[i], ptr, size);
				break;
				}
			}
		} while (i < m_PoolIndex&&++i&&!stop);
	}

	static void clearArea(uint32_t* from, uint32_t* to) {
		//term.cprint("Clearing zone: ");
		//term.cprint((uint32_t)from, 16);
		//term.cprint(" -> ");
		//term.cprint((uint32_t)to, 16);
		//term.cprint("\n");
		do *from = 0; while (++from < to);
	}

	template<typename sizebit>void* _buildPool(void* begin, void* end) {
		sizebit size{ (sizebit)((uint32_t)end - (uint32_t)begin) };

		/*term.cprint(" begin ");
		term.cprint((uint32_t)begin, 16);
		term.cprint(" end ");
		term.cprint((uint32_t)end, 16);

		term.cprint(" size ");
		term.cprint(size, 16);*/

		uint8_t logSize{ log2_32(rtpt_32(size)) };

		//term.cprint(" logsize ");
		//term.cprint(logSize);

		sizebit heapSize{ (logSize - 1) * sizeof(void*) };

		//term.cprint(" heapsize ");
		//term.cprint(heapSize);

		uint32_t pbegin{ ( (uint32_t)end - (uint32_t)sizeof(FastLowMemoryPoolPerformance<sizebit>)) };
		
		//term.cprint(" pbeg ");
		//term.cprint(pbegin);

		(*m_Pools)[m_PoolIndex] = (void*)(pbegin);
		FastLowMemoryPoolPerformance<sizebit>* pool = (FastLowMemoryPoolPerformance<sizebit> * )(*m_Pools)[m_PoolIndex];

		//term.cprint(" pool ");
		//term.cprint((uint32_t)pool, 16);

		pool->end = size;
		pool->masterHeap = 0;
		pool->addrOffset = (uint32_t)begin;
		pool->heaps = (FastLowMemoryPoolBlk<sizebit>**)(pbegin-heapSize);
		pool->heapsCurrent = (sizebit)(pbegin - heapSize);
		--pool->heapsCurrent;
		for (uint8_t h(0); h < (logSize - 1); ++h)
			pool->heaps[h] = (FastLowMemoryPoolBlk<sizebit> * )pool->toAddr(pool->heapsCurrent--);

		term.cprint("a ");
		term.cprint((uint32_t)(void*)(pbegin - heapSize), 16);
		term.cprint(" ");
		term.cprint(size, 16);
		term.cprint(" ");
		term.cprint((uint32_t)begin, 16);
		term.cprint("\n");

		++m_PoolIndex;
		return pool;
	}

	/*Usable space: end-begin-sizeof(FastLowMemoryPoolPerformance<bitsize>)-
	log2(size)*sizeof(ptr)-nbAllocations*sizeof(FastLowMemoryPoolBlk) */
	void* addPool(void* begin, void* end) {
		//We NEED memory to be on 0 to recognize new list parts
		//clearArea((uint32_t*)begin, (uint32_t*)end);
		uint32_t size = (uint32_t)end - (uint32_t)begin;
		size = sizeLog2(size);
		term.cprint("Adding pool ");
		term.cprint((uint32_t)begin, 16);
		term.cprint(" -> ");
		term.cprint((uint32_t)end, 16);
		term.cprint(" (");
		term.cprint(size);
		term.cprint(")\n");
		switch (size) {
		case 8:  return _buildPool<uint8_t> (begin, end);
		case 16: return _buildPool<uint16_t>(begin, end);
		default: return _buildPool<uint32_t>(begin, end);
		}
		
	}

};

FASTOS_NAMESPACE_END