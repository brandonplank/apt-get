	.file	"apt-get.m"
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"Failed to run command"
.LC2:
	.string	"%s"
	.text
	.globl	cmdV
	.type	cmdV, @function
cmdV:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1088, %rsp
	movq	%rdi, -1080(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-1080(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	popen@PLT
	cltq
	movq	%rax, -1064(%rbp)
	cmpq	$0, -1064(%rbp)
	jne	.L3
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L4:
	leaq	-1056(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L3:
	movq	-1064(%rbp), %rdx
	leaq	-1056(%rbp), %rax
	movl	$1035, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L4
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	pclose@PLT
	movl	$1, %eax
	movq	-8(%rbp), %rcx
	subq	%fs:40, %rcx
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	cmdV, .-cmdV
	.section	.rodata
.LC3:
	.string	"usage: "
	.align 8
.LC4:
	.string	"apt-get <install|remove> package"
	.text
	.globl	help
	.type	help, @function
help:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	$0, %edi
	call	exit@PLT
	.cfi_endproc
.LFE1:
	.size	help, .-help
	.section	.rodata
.LC5:
	.string	"APT wrapper by Brandon Plank"
.LC6:
	.string	"install"
.LC7:
	.string	"remove"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$10048, %rsp
	movl	%edi, -10036(%rbp)
	movq	%rsi, -10048(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movq	-10048(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -10024(%rbp)
	cmpl	$2, -10036(%rbp)
	jg	.L9
	movl	$0, %eax
	call	help
.L9:
	movq	-10024(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L10
	leaq	-10016(%rbp), %rax
	movabsq	$3251720295687610736, %rcx
	movq	%rcx, (%rax)
	movw	$8275, 8(%rax)
	movb	$0, 10(%rax)
	movl	$0, -10032(%rbp)
	jmp	.L11
.L13:
	movl	-10032(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-10048(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-10048(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L12
	movl	-10032(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-10048(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	leaq	-10016(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	leaq	-10016(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	leaq	-10016(%rbp), %rax
	addq	%rdx, %rax
	movw	$32, (%rax)
.L12:
	addl	$1, -10032(%rbp)
.L11:
	movl	-10032(%rbp), %eax
	cmpl	-10036(%rbp), %eax
	jl	.L13
	jmp	.L14
.L10:
	movq	-10024(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L15
	leaq	-10016(%rbp), %rax
	movabsq	$3251720295687610736, %rcx
	movq	%rcx, (%rax)
	movl	$2126674, 8(%rax)
	movl	$0, -10028(%rbp)
	jmp	.L16
.L18:
	movl	-10028(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-10048(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-10048(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L17
	movl	-10028(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-10048(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	leaq	-10016(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	leaq	-10016(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	leaq	-10016(%rbp), %rax
	addq	%rdx, %rax
	movw	$32, (%rax)
.L17:
	addl	$1, -10028(%rbp)
.L16:
	movl	-10028(%rbp), %eax
	cmpl	-10036(%rbp), %eax
	jl	.L18
	jmp	.L14
.L15:
	movl	$0, %eax
	call	help
.L14:
	leaq	-10016(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	leaq	-10016(%rbp), %rax
	addq	%rdx, %rax
	movabsq	$7957688396827929888, %rcx
	movq	%rcx, (%rax)
	movl	$1836214630, 8(%rax)
	movb	$0, 12(%rax)
	leaq	-10016(%rbp), %rax
	movq	%rax, %rdi
	call	cmdV
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	subq	%fs:40, %rsi
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (GNU) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
