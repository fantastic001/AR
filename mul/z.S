
.section .data 

a: .long 2
b: .long 5

.section .text 

.globl main 

main:

	movl a, %eax
	mull b
kraj: 
	movl $0, %eax 
	movl $1, %ebx
	int $0x80
