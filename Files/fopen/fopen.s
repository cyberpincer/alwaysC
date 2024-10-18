	.file	"fopen.c"
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"File-1.txt"
.LC2:
	.string	"w"
.LC3:
	.string	"Output-2.txt"
.LC4:
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
	subq	$32, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L2
	cmpq	$0, -24(%rbp)
	jne	.L5
.L2:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$-1, %eax
	jmp	.L4
.L7:
	cmpb	$46, -1(%rbp)
	jne	.L6
	movb	$33, -1(%rbp)
.L6:
	movsbl	-1(%rbp), %eax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc@PLT
.L5:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc@PLT
	movb	%al, -1(%rbp)
	cmpb	$-1, -1(%rbp)
	jne	.L7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
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
