https://cs61.seas.harvard.edu/site/2018/Asm2/
https://cs.brown.edu/courses/cs033/docs/guides/x64_cheatsheet.pdf



# Basic x86-64 Assembler Guide

This document provides an introduction to basic instructions and registers used in low-level programming with x86-64 assembler. It covers the most common registers and essential instructions to manipulate data and control program flow.

## Main Registers

In the x86-64 architecture, registers are used to store temporary values, addresses, and results of operations. Here are the most commonly used registers:

- **RAX**: Accumulator, used for arithmetic operations and to store return values from functions.
- **RBX**: Base register, often used for storing addresses.
- **RCX**: Counter, commonly used for loops and shift operations.
- **RDI**: Destination register, used for the first argument in function calls.
- **RSI**: Source register, used for the second argument in function calls.
- **RDX**: Data register, used for arithmetic operations and as the third argument in function calls.
- **RSP**: Stack pointer, points to the top of the stack.
- **RBP**: Base pointer, used to access local variables and function parameters on the stack.
- **R8-R15**: General-purpose additional registers, used for temporary data storage or function arguments.

## Basic Instructions

Below are some of the most common instructions used in assembler code.
### `mov`
Moves data from one location to another. This instruction does not perform arithmetic operations; it simply copies the value from one operand to a register or memory location.
### `cmp`
Compares two values. This instruction does not modify the registers directly but instead sets the processor's **flags** (status flags) based on the result of the comparison.

### Conditional Jumps

After a comparison with `cmp`, you can use conditional jump instructions to make decisions based on the result of the comparison. Common conditional jump instructions include:

- **`je`**: Jump if equal (if zero flag is set).
- **`jne`**: Jump if not equal (if zero flag is clear).
- **`jl`**: Jump if less than (signed comparison).
- **`jle`**: Jump if less than or equal (signed comparison).
- **`jg`**: Jump if greater than (signed comparison).
- **`jge`**: Jump if greater than or equal (signed comparison).

### `jmp`
Performs an unconditional jump to a label in the code. It is useful for creating loops or jumping to specific parts of the code.

### `inc` and `dec`
The `inc` and `dec` instructions are used to increment or decrement the value of a register by 1.

- **`inc`**: Increments the value of the register by 1.
- **`dec`**: Decrements the value of the register by 1.

### `ret`
Returns control to the calling function. It is generally used at the end of a function, and the return address is retrieved from the stack.

## Program Flow Control

Program flow in assembler is mainly controlled through conditional and unconditional jump instructions. These instructions allow your program to make decisions based on conditions that can be checked during execution.

## Here is a basic structure for an x86-64 assembler program:

```asm
section .text
global _function  ; Entry point

_function: ; Your code goes here
```

### global _function
This declares the _start label as the entry point of the program. The operating system looks for this label when the program is executed.

### _function
This is the entry point of the program where execution begins. Your code will be placed after the _function label.



