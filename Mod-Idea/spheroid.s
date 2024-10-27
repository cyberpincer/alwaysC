	.file	"spheroid.c"
	.text
	.section	.rodata
.LC0:
	.string	"spheroid.c"
.LC1:
	.string	"len > 0"
	.text
	.globl	getmean
	.type	getmean, @function
getmean:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L2
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$10, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L2:
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L3
.L4:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
.L3:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L4
	movl	-4(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	getmean, .-getmean
	.section	.rodata
.LC2:
	.string	"Type a number: "
.LC3:
	.string	"%i,"
.LC4:
	.string	"] - mean = %i\n"
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
	subq	$80, %rsp
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -32(%rbp)
	movd	%xmm0, -16(%rbp)
	movl	$0, -4(%rbp)
.L10:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdin(%rip), %rdx
	leaq	-80(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, -32(%rbp,%rdx,4)
	addl	$1, -4(%rbp)
	cmpl	$4, -4(%rbp)
	jle	.L7
	movl	$0, -4(%rbp)
.L7:
	movl	$91, %edi
	call	putchar@PLT
	movl	$0, -8(%rbp)
	jmp	.L8
.L9:
	movl	-8(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -8(%rbp)
.L8:
	cmpl	$4, -8(%rbp)
	jle	.L9
	leaq	-32(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	getmean
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L10
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 8
__PRETTY_FUNCTION__.0:
	.string	"getmean"
	.ident	"GCC: (Debian 14.2.0-3) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
