
.section .data 

a: .ascii "Milica carica.\0"

.section .text

.globl main 

main:

	movl $0, %eax 
loop:
	movb a(, %eax, 1), %bl
	cmpb $0, %bl
	je kraj
	incl %eax 
	jmp loop
kraj: 
	movl $1, %eax 
	movl $0, %ebx 
	int $0x80
