#include <machine/asm.h>
__FBSDID("$FreeBSD: src/lib/csu/arm/crti.S,v 1.2.22.1.6.1 2010/12/21 17:09:25 kensmith Exp $");

	.section .init,"ax",%progbits
	.align 4
	.globl	_init
	.type	_init,%function
_init:
	mov	ip, sp
	stmdb	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4

	.section .fini,"ax",%progbits
	.align 4
	.globl	_fini
	.type	_fini,%function
_fini:
	mov	ip, sp
	stmdb	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4

