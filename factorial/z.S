
.section .data 

n: .long 5
fact: .long 1


tmp: .long 2
.section .text 

.globl main 

main:

loop_mul:
	movl tmp,%eax
	movl fact,%ebx
mul:
	movl $0,%ecx
loop:
	addl %ebx,%ecx
	subl $1,%eax
	cmp $0,%eax
	je next
	jne loop
next:
	addl $1,tmp
	movl %ecx,fact
	movl tmp,%eax
	cmp n,%eax
	jg exit
	jmp loop_mul

exit:
	movl $1,%eax
	movl $0,%ebx
	int $0x80

