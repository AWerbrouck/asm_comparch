narayana:
.LFB6:
	endbr32
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$1, -12(%ebp)
	movl    8(%ebp), %edi
	cmpl	$2, %edi
	jg	.L2
	jmp	.L3
.L2:
	subl	$1, %edi
	subl	$12, %esp
	pushl	%edi
	call	narayana
	addl	$16, %esp
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	subl	$3, %eax
	subl	$12, %esp
	pushl	%eax
	call	narayana
	addl	$16, %esp
	movl	-8(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
.L3:
	movl	-12(%ebp), %eax
	leave
	ret