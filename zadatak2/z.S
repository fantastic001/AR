
.section .data 

.section .text 

.globl main 

main:
	movl $5,%eax
	movl $3,%ebx
	# resenje ce biti u ecx 

	movl $0,%ecx 

	cmpl %ebx,%eax
	jg zameni 
	jmp loop 
zameni:
	xchgl %eax,%ebx

loop:
	addl %ebx,%ecx 
	subl $1,%eax 
	cmp $0,%eax 
	jg loop


	movl $1,%eax
	movl $0,%ebx
	int $0x80
