
.section .data 

.section .text
.globl main 

main:
	movl $27,%eax 
	movl $52,%ebx

	cmpl %ebx,%eax
	jg vece
	jle manje

vece:
	movl %ebx,%ecx
	jmp exit
manje:
	movl %eax,%ecx
	jmp exit
exit:
	movl $1,%eax
	movl $0,%ebx
	int $0x80
