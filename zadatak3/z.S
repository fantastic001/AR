
.section .data 

.section .text 

.globl main 

main:
	movl $5,%eax 

	movl $0,%ebx 

loop:
	addl %eax,%ebx
	subl $1,%eax 
	cmp $0,%eax 
	je exit 
	jg loop
exit:
	movl $1,%eax
	movl $0,%ebx
	int $0x80 
