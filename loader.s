/* This section defines assembler variables, which will not make it to the link file but can be used when creating the object file
This is the magic number that GRUB looks for when searching for bootable kernels */
.set MAGIC, 0x1badb002
.set FLAGS, (1<<0 | 1<<1)
.set CHECKSUM -(MAGIC + FLAGS)

/* This creates the actual multiboot data segment from the above variables and, since it's set before everything else, tells GRUB where the very beginning of the kernel program is */
.section .multiboot
  .long MAGIC
  .long FLAGS
  .long CHECKSUM

/* This declares the following section as code rather than data or bss (variables) */
.section .text
/* This calls the C++ function, which will only work when this is linked with the C++ script */
.extern kernelMain
/* In WYOOS, he calls the main function "loader" rather than "_start," but I'm going to use the more expected syntax here */ 
.global _start
/* He does not do this in WYOOS, either, but this will be much less of a headache for me since I'm getting used to this format for Assembly */
.intel_syntax noprefix

_start:
/* This part is in reverse from how he coded it, because I'm moving the kernel_stack into esp so it has to be done in this order, according to this format */
  mov esp, kernel_stack
/* Makes space for the multiboot structure created by the bootloader (different from above multiboot section); accumulator stores the location of the multiboot structure */
  push eax
/* Bootloader's multiboot structure stores the magic number in the ebx register, so push that, too */
  push ebx
/* This calls kernelMain from the C++ function, which was defined above with .extern */
  call kernelMain

/* This is in case kernelMain is breached somehow; it allows the kernel to continue working */
_stop:
/* Clears the interrupt flag, which rejects hardware inputs in order to prevent race conditions; this is very common in kernel code apparently */
  cli
/* Halts the system, which waits for an interrupt before continuing, which allows for inputs to continue functioning */
  hlt
/* Returns to _stop, creating an infinite loop to prevent the kernel from unloading from RAM */
  jmp _stop

/* This declares the following section as storage for variables. I think bss stands for "base (of the) stack segment" */
.section .bss
/* This helps define the size of the stack to 2 megabytes */
.space 2*1024*1024

kernel_stack:
