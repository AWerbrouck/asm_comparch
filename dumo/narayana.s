	.file	"narayana.c"
	.text
	.globl	narayana
	.type	narayana, @function
narayana:
.LFB6:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$1, %eax
	cmpl	$3, 8(%ebp)
	jl	.L3
.L2:
	movl	8(%ebp), %eax
	subl	$1, %eax
	subl	$12, %esp
	pushl	%eax
	call	narayana
	addl	$16, %esp
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	subl	$3, %eax
	subl	$12, %esp
	pushl	%eax
	call	narayana
	addl	$16, %esp
	addl	-8(%ebp), %eax
.L3:
	leave
	ret
.LFE6:
	.size	narayana, .-narayana
	.section	.rodata
.LC0:
	.string	"Narayana(%d) = %d \n"
	.align 4
.LC1:
	.string	"Formaat: %s waarde aantal_iteraties\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$16, %esp
	movl	%ecx, %ebx
	cmpl	$3, (%ebx)
	jne	.L6
	movl	4(%ebx), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	atoi
	addl	$16, %esp
	movl	%eax, -16(%ebp)
	movl	4(%ebx), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	atoi
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L7
.L8:
	subl	$12, %esp
	pushl	-16(%ebp)
	call	narayana
	addl	$16, %esp
	movl	%eax, -20(%ebp)
	addl	$1, -24(%ebp)
.L7:
	movl	-24(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	.L8
	subl	$4, %esp
	pushl	-20(%ebp)
	pushl	-16(%ebp)
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	movl	$0, %eax
	jmp	.L9
.L6:
	movl	4(%ebx), %eax
	movl	(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$.LC1
	call	printf
	addl	$16, %esp
	movl	$1, %eax
.L9:
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (GNU) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
