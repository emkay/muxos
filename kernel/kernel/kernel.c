#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>
 
#include <kernel/tty.h>
 
void kernel_early(void)
{
    terminal_initialize();
}
 
void kernel_main(void)
{
    printf("Michael Keaton is the best rapper alive!!!\n");
}
