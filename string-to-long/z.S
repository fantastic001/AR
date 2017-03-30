
.section .data 

string: .fill 1024,1,0

.section .text 

.globl main 

main:
	
	movl $3, %eax 
	movl $0, %ebx 
	movl $string, %ecx
	movl $10,%edx
	int $0x80

	movl $0, %eax 

	# indeks mi je ebx a trenutna cifra ecx 
	movl $0, %ebx 

loop:
	movl $0, %ecx
	movb string(, %ebx, 1), %cl
	cmpb $10, %cl 
	je izadji
	subb $48, %cl 
	movl $10, %edx
	mull %edx
	addl %ecx, %eax
	addl $1, %ebx
	jmp loop
	
izadji:
	movl $1, %eax
	movl $0, %ebx 
	int $0x80
