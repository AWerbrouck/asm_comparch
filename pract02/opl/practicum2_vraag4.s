narayana:
.LFB6:
	endbr32
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	$1, %eax
	movl    8(%ebp), %edi
	cmpl	$3, %edi
	jl	.L3
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
    addl    $16, %esp
    addl    -8(%ebp), %eax
.L3:
	leave
	ret