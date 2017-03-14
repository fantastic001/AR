
.section .data 

b: .quad 0x5
a: .quad 0x999999999

res: .quad 0 

.section .text 

.globl main 

main:
	movl a,%eax 
	movl a+4,%ebx
	addl %eax,res
	adcl %ebx,res+4
	sub $1,b
	sbb $0,b+4
	cmpl $0,b
	je cond1
	jmp main
cond1:
	cmpl $0,b+4
	je end
	jmp main
end:
	movl $1,%eax
	movl $0,%ebx
	int $0x80
