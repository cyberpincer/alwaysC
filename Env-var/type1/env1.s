	.file	"env1.c"
	.text
	.section	.rodata
.LC0:
	.string	"HOME"
.LC1:
	.string	"HOME= %s\n"
.LC2:
	.string	"USER"
.LC3:
	.string	"USER= %s\n"
.LC4:
	.string	"PATH"
.LC5:
	.string	"PATH= %s\n"
.LC6:
	.string	"SHELL"
.LC7:
	.string	"SHELL= %s\n"
.LC8:
	.string	"PWD"
.LC9:
	.string	"PWD= %s\n"
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
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-3) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
