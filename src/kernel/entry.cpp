#include "FastOS.h"

extern "C" {
	int kmain(unsigned long magic, unsigned long mbi) {
		FastOS::FastOS os;
		os.main(magic, mbi);
		return 0;

	}
}