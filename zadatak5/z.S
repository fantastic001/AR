
.section .data 

.section .text

.globl main 

main: 

	movl $12,%eax
	movl $5,%ebx
	movl $0,%ecx
loop:
	addl $1,%ecx
	subl %ebx,%eax
	cmpl %ebx,%eax
	jge loop 

	movl $1,%eax
	movl $0,%ebx
	int $0x80
