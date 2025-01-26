cmake_minimum_required(VERSION 3.13...3.27)

include($ENV{PICO_SDK_PATH}/pico_sdk_init.cmake)

project(example_project)

pico_sdk_init()

add_executable(example_project main.c)

# pull in common dependencies
target_link_libraries(example_project pico_stdlib hardware_uart)

pico_enable_stdio_usb(example_project 1) # log to usb
pico_enable_stdio_uart(example_project 0) # log to uart

# create map/bin/hex file etc.
pico_add_extra_outputs(example_project)