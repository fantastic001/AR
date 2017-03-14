
.section .data 

n: .long 4
fib: .long 0

.section .text 

.globl main 

main: 

	cmpl $2,n
	jle base 
	
	movl $1,%eax
	movl $1,%ebx
loop:
	movl $0,%ecx
	addl %eax,%ecx
	addl %ebx,%ecx
	movl %ebx,%eax
	movl %ecx,%ebx
	subl $1,n
	cmpl $2,n
	jle exit
	jmp loop
base: 
	movl $1,fib
	jmp end
exit:
	movl %ecx,fib
end:
	movl $1,%eax
	movl $0,%ebx
	int $0x80
