	.file	"narayana.c"
	.text
	.globl	narayana
	.type	narayana, @function
narayana:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -12(%rbp)
	cmpl	$2, -20(%rbp)
	jg	.L2
	movl	$1, -12(%rbp)
	jmp	.L3
.L2:
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	narayana
	movl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	subl	$3, %eax
	movl	%eax, %edi
	call	narayana
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
.L3:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	narayana, .-narayana
	.section	.rodata
.LC0:
	.string	"Narayana(%d) = %d \n"
	.align 8
.LC1:
	.string	"Formaat: %s waarde aantal_iteraties\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	cmpl	$3, -20(%rbp)
	jne	.L6
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -4(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L7
.L8:
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	narayana
	movl	%eax, -12(%rbp)
	addl	$1, -16(%rbp)
.L7:
	movl	-16(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L8
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	jmp	.L9
.L6:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (GNU) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
