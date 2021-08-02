.data                                   # data section

string:
    .ascii "Hello, world!\n"            # string to print
    .set string_length, . - string      # string length compile-time calculation

.text                                   # text section

.globl main
main:
    call print                          # function call
    call exit                            


print:
    mov $4, %eax                        # sys_write
    mov $1, %ebx                        # stream index (stdout)
    mov $string, %rcx                   # string address
    mov $string_length, %rdx            # string length
    int $0x80                           # interruption call
    ret                                 # return from function


exit:
    mov $1, %eax                        # sys_exit
    mov $0, %ebx                        # status code
    int $0x80                           # interruption call
