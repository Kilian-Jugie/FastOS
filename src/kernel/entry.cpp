#include "FastOS.h"

extern "C" {
	void kernel_main() {
		FastOS::FastOS os;
		os.main();
		return;

	}
}