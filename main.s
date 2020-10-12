   1              		.file	"hello-world.c"
   2              		.text
   3              	.Ltext0:
   4              		.section	.rodata
   5              	.LC0:
   6 0000 48656C6C 		.string	"Hello World!"
   6      6F20576F 
   6      726C6421 
   6      00
   7              		.text
   8              		.globl	main
  10              	main:
  11              	.LFB0:
  12              		.file 1 "hello-world.c"
   1:hello-world.c **** #include <stdio.h>
   2:hello-world.c **** 
   3:hello-world.c **** int main () {
  13              		.loc 1 3 13
  14              		.cfi_startproc
  15 0000 F30F1EFA 		endbr64
  16 0004 55       		pushq	%rbp
  17              		.cfi_def_cfa_offset 16
  18              		.cfi_offset 6, -16
  19 0005 4889E5   		movq	%rsp, %rbp
  20              		.cfi_def_cfa_register 6
   4:hello-world.c **** 
   5:hello-world.c ****             printf ("Hello World!");
  21              		.loc 1 5 13
  22 0008 488D3D00 		leaq	.LC0(%rip), %rdi
  22      000000
  23 000f B8000000 		movl	$0, %eax
  23      00
  24 0014 E8000000 		call	printf@PLT
  24      00
   6:hello-world.c **** 
   7:hello-world.c ****             return 0;
  25              		.loc 1 7 20
  26 0019 B8000000 		movl	$0, %eax
  26      00
   8:hello-world.c **** 
   9:hello-world.c **** }...
  27              		.loc 1 9 1
  28 001e 5D       		popq	%rbp
  29              		.cfi_def_cfa 7, 8
  30 001f C3       		ret
  31              		.cfi_endproc
  32              	.LFE0:
  34              	.Letext0:
  35              		.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
  36              		.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
  37              		.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
  38              		.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
  39              		.file 6 "/usr/include/stdio.h"
  40              		.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
 761              		.section	.note.gnu.property,"a"
 762              		.align 8
 763 0000 04000000 		.long	 1f - 0f
 764 0004 10000000 		.long	 4f - 1f
 765 0008 05000000 		.long	 5
 766              	0:
 767 000c 474E5500 		.string	 "GNU"
 768              	1:
 769              		.align 8
 770 0010 020000C0 		.long	 0xc0000002
 771 0014 04000000 		.long	 3f - 2f
 772              	2:
 773 0018 03000000 		.long	 0x3
 774              	3:
 775 001c 00000000 		.align 8
 776              	4:
