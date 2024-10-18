	.file	"open.c"
	.text
	.section	.rodata
.LC0:
	.string	"File-1.txt"
.LC1:
	.string	"Output-2.txt"
.LC2:
	.string	"One file wouldn't open!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -4(%rbp)
	movl	$384, %edx
	movl	$65, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -8(%rbp)
	cmpl	$-1, -4(%rbp)
	je	.L2
	cmpl	$-1, -8(%rbp)
	jne	.L5
.L2:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L4
.L7:
	movzbl	-13(%rbp), %eax
	cmpb	$46, %al
	jne	.L6
	movb	$33, -13(%rbp)
.L6:
	leaq	-13(%rbp), %rcx
	movl	-8(%rbp), %eax
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
.L5:
	leaq	-13(%rbp), %rcx
	movl	-4(%rbp), %eax
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L7
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-3) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
