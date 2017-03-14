.section .data 

a: .long 12 
b: .long 8
rez: .long 0

.section .text 

.globl main 

main:

loop:
	movl a,%eax 
	movl b,%ebx 
	cmp %ebx,%eax
	jg vece 
	subl %eax,%ebx
continue:
	movl %eax,a
	movl %ebx,b
	cmp %eax,%ebx

	jne loop
	jmp exit

vece:
	subl %ebx,%eax
	jmp continue
exit:
	movl %eax,rez
	movl $1,%eax
	movl $0,%ebx
	int $0x80
