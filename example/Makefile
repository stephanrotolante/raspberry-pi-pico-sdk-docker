.PHONY: build clean format

BOARD ?= pico2 # pico_w

build:
	mkdir -p build && \
	cd build && \
	cmake -DPICO_BOARD=$(BOARD) .. && \
	make

format:
	find . -type d -name build -prune -o \( -iname "*.c" -o -iname "*.cpp" -o -iname "*.h" -o -iname "*.hpp" \) -print | xargs clang-format -i

clean:
	rm -r build