
max = 3

.section .data 

a: .long 1,2,3, 0

.section .text 

.globl main 

main:
	movl $0,%eax
loop:
	movl a(, %eax, 4), %ebx
	addl $1,%eax
	cmpl $max, %eax
	jl loop
	jmp kraj

kraj:
	movl $1, %eax
	movl $0,%ebx
	int $0x80
