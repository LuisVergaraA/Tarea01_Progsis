	.file	"Main.c"
	.text
	.section	.rodata
.LC0:
	.string	"Escoja una opci\303\263n del men\303\272:"
	.align 8
.LC1:
	.string	"1. Calcular geometria de Dos dimensiones"
	.align 8
.LC2:
	.string	"2. Calcular geometria de Tres dimensiones"
.LC3:
	.string	"3. Terminar programa"
.LC4:
	.string	"%d"
.LC5:
	.string	"Has elegido la opci\303\263n 1."
.LC6:
	.string	"Has elegido la opci\303\263n 2."
.LC7:
	.string	"Programa Terminado, gracias."
	.align 8
.LC8:
	.string	"Opci\303\263n no v\303\241lida. Por favor ingrese una opcion"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.L7:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-24(%rbp), %eax
	cmpl	$3, %eax
	je	.L2
	cmpl	$3, %eax
	jg	.L3
	cmpl	$1, %eax
	je	.L4
	cmpl	$2, %eax
	je	.L5
	jmp	.L3
.L4:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	calcular2D@PLT
	jmp	.L6
.L5:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	calcular3D@PLT
	jmp	.L6
.L2:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L6
.L3:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L6:
	movl	-24(%rbp), %eax
	cmpl	$3, %eax
	jne	.L7
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
