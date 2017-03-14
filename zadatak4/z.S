
.section .data 

stefan: .bytes "milica"

.section .text 

.globl main 

main:

	movl $0,%eax
	movb $stefan,%al

	movl $1,%eax
	movl $0,%ebx 
	int $0x80
