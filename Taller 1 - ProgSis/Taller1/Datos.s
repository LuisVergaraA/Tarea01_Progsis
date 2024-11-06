	.file	"Datos.c"
	.text
	.section	.rodata
.LC0:
	.string	"Escoja una opci\303\263n del men\303\272:"
	.align 8
.LC1:
	.string	"1. Calcular Area/Perimetro Triangulo"
	.align 8
.LC2:
	.string	"2. Calcular Area/Perimetro Paralelogramo"
	.align 8
.LC3:
	.string	"3. Calcular Area/Perimetro Cuadrado"
	.align 8
.LC4:
	.string	"4. Calcular Area/Perimetro Rectangulo"
	.align 8
.LC5:
	.string	"5. Calcular Area/Perimetro Rombo"
	.align 8
.LC6:
	.string	"6. Calcular Area/Perimetro Trapecio"
	.align 8
.LC7:
	.string	"7. Calcular Area/Perimetro Circulo"
	.align 8
.LC8:
	.string	"8. Calcular Area/Perimetro Poligono Regular"
.LC9:
	.string	"9. Salir"
	.text
	.globl	imprimirMenu2D
	.type	imprimirMenu2D, @function
imprimirMenu2D:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
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
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	imprimirMenu2D, .-imprimirMenu2D
	.section	.rodata
	.align 8
.LC10:
	.string	"1. Calcular Superficie/Volumen Cubo"
	.align 8
.LC11:
	.string	"2. Calcular Superficie/Volumen Cuboide"
	.align 8
.LC12:
	.string	"3. Calcular Superficie/Volumen Cilindro recto"
	.align 8
.LC13:
	.string	"4. Calcular Superficie/Volumen Esfera"
	.align 8
.LC14:
	.string	"5. Calcular Superficie/Volumen Cono Circular recto"
.LC15:
	.string	"6. Salir"
	.text
	.globl	imprimirMenu3D
	.type	imprimirMenu3D, @function
imprimirMenu3D:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	imprimirMenu3D, .-imprimirMenu3D
	.section	.rodata
.LC16:
	.string	"%d"
.LC17:
	.string	"Has elegido la opci\303\263n 1."
	.align 8
.LC18:
	.string	"\n Si desea realizar el analisis de otra figura o salir:\n "
.LC19:
	.string	"Has elegido la opci\303\263n 2."
.LC20:
	.string	"Has elegido la opci\303\263n 3."
.LC21:
	.string	"Has elegido la opci\303\263n 4."
.LC22:
	.string	"Has elegido la opci\303\263n 5."
	.align 8
.LC23:
	.string	"Saliendo de calculadora 3D... "
	.align 8
.LC24:
	.string	"Opci\303\263n no v\303\241lida. Por favor ingrese una opcion"
	.text
	.globl	calcular3D
	.type	calcular3D, @function
calcular3D:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.L13:
	movl	$0, %eax
	call	imprimirMenu3D
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-24(%rbp), %eax
	cmpl	$6, %eax
	ja	.L4
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L6(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L6(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L6:
	.long	.L4-.L6
	.long	.L11-.L6
	.long	.L10-.L6
	.long	.L9-.L6
	.long	.L8-.L6
	.long	.L7-.L6
	.long	.L5-.L6
	.text
.L11:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	calcularCubo@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L12
.L10:
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	calcularCuboide@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L12
.L9:
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	calcularCilindroRecto@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L12
.L8:
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	calcularEsfera@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L12
.L7:
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	calcularConoCircularRecto@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L12
.L5:
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L12
.L4:
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L12:
	movl	-24(%rbp), %eax
	cmpl	$6, %eax
	jne	.L13
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	calcular3D, .-calcular3D
	.section	.rodata
.LC25:
	.string	"Has elegido la opci\303\263n 6."
.LC26:
	.string	"Has elegido la opci\303\263n 7."
.LC27:
	.string	"Has elegido la opci\303\263n 8."
	.align 8
.LC28:
	.string	"Saliendo de calculadora 2D... "
	.text
	.globl	calcular2D
	.type	calcular2D, @function
calcular2D:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.L28:
	movl	$0, %eax
	call	imprimirMenu2D
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-24(%rbp), %eax
	cmpl	$9, %eax
	ja	.L16
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L18(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L18(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L18:
	.long	.L16-.L18
	.long	.L26-.L18
	.long	.L25-.L18
	.long	.L24-.L18
	.long	.L23-.L18
	.long	.L22-.L18
	.long	.L21-.L18
	.long	.L20-.L18
	.long	.L19-.L18
	.long	.L17-.L18
	.text
.L26:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	calcularTrianguloA@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L27
.L25:
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	calcularParalelogramo@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L27
.L24:
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	calcularCuadrado@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L27
.L23:
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	calcularRectangulo@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L27
.L22:
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	calcularombo@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L27
.L21:
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	calcularTrapecio@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L27
.L20:
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	calcularCirculo@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L27
.L19:
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	calcularPR@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L27
.L17:
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L27
.L16:
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L27:
	movl	-24(%rbp), %eax
	cmpl	$9, %eax
	jne	.L28
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	calcular2D, .-calcular2D
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
