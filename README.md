# LibASM
Libft functions but in ASM

## Overview

This project requires the implementation of several standard C library functions in assembly language (64-bit) and packaging them into a static library called `libasm.a`. The project also involves creating a test program to validate the implementation and using a Makefile to automate the build process.

## Mandatory Part

You are required to implement the following functions in assembly:

1. **ft_strlen**: Equivalent to the C function `strlen`.
2. **ft_strcpy**: Equivalent to the C function `strcpy`.
3. **ft_strcmp**: Equivalent to the C function `strcmp`.
4. **ft_write**: Equivalent to the system call `write`.
5. **ft_read**: Equivalent to the system call `read`.
6. **ft_strdup**: Equivalent to the C function `strdup`, can use `malloc`.

These functions must be written in assembly and compiled with the `nasm` assembler using the Intel syntax.

- **Assembly**: Your code must be written in 64-bit assembly language, following the "calling convention" for x86-64 architecture.

- **Error Handling**: Make sure to check for errors in system calls (e.g., `read`, `write`) and set the `errno` variable properly. You are allowed to call the `___error` or `errno_location` functions to handle this.

- **Test Program**: A main program should be provided to test the implemented functions. This will compile with your library to verify that the functions are working correctly.

- **No Inline Assembly**: The assembly code must be placed in separate `.s` files. Inline assembly is not allowed.

- **Compilation**: You must compile the assembly code with the `nasm` assembler. Do not use the `-no-pie` flag.

- **Library Name**: The static library must be named `libasm.a`.




