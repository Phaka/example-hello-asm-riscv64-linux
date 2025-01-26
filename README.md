# Hello World in RISC-V 64-bit Assembly (Linux)

A simple Hello World implementation in RISC-V assembly language for Linux systems. This implementation demonstrates the straightforward nature of the RISC-V instruction set architecture.

## Installation

For systems running Linux on RISC-V hardware, you'll need the standard GNU toolchain:

```bash
sudo apt-get update
sudo apt-get install binutils gcc
```

## Running

Assemble and link:
```bash
as -o main.o main.s
ld -o hello main.o
./hello
```

## Code Explanation

The implementation uses standard Linux system calls on RISC-V. The program structure follows standard assembly conventions with a data section containing our message string and a text section containing the program code.

System calls on RISC-V Linux use the following registers:
- a0-a2: Function arguments and system call parameters
- a7: System call number

The implementation uses two system calls:
1. write (64): Outputs our message to stdout
2. exit (93): Terminates the program

RISC-V instructions used:
- li (Load Immediate): Loads immediate values into registers
- la (Load Address): Loads an address into a register
- ecall: Makes a system call
