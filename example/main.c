#include <stdio.h>

#include "hardware/uart.h"
#include "pico/stdlib.h"

#define UART_ID uart0
#define BAUD_RATE 115200
#define DATA_BITS 8
#define STOP_BITS 1
#define PARITY UART_PARITY_NONE



int main() {

    stdio_init_all();
    sleep_ms(1000);

    uart_set_format(UART_ID, DATA_BITS, STOP_BITS, PARITY);

    printf("Starting up...\n");

    while (1) {
        tight_loop_contents();

        printf("hello there\n");
        sleep_ms(1000);
    }
}