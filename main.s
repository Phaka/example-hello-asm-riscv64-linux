# RISC-V assembly for Linux
# System calls for RISC-V Linux:
# 64 for write
# 93 for exit

.global _start

.section .data
    message: .ascii "Hello, World!\n"
    message_len = . - message

.section .text
_start:
    # Write system call
    li a7, 64           # write system call number
    li a0, 1            # file descriptor 1 is stdout
    la a1, message      # address of message
    li a2, 14           # length of message
    ecall               # make system call

    # Exit system call
    li a7, 93           # exit system call number
    li a0, 0            # return code 0
    ecall               # make system call
