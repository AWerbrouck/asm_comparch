
narayana:
.LFB6:
	endbr32
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$0, -12(%ebp)
	cmpl	$2, 8(%ebp)
	jg	.L2
	movl	$1, -12(%ebp)
	jmp	.L3
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
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %edx
	movl	-4(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
.L3:
	movl	-12(%ebp), %eax
	leave
	ret