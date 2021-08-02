.data               # data section


.text               # text section

.globl main
main:
    jmp exit


exit:
    mov $1, %eax    # sys_exit
    mov $0, %ebx    # status code
    int $0x80       # interruption call
