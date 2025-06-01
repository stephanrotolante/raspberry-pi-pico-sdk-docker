.PHONY: build clean

BOARD ?= pico2 # pico_w

build:
	mkdir -p build && \
	cd build && \
	cmake -DPICO_BOARD=$(BOARD) .. && \
	make

clean:
	rm -rf build