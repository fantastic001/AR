
.section .data 

str: .ascii "Ja sam car\n\0"

.section .text

.globl main 

main:
	pushl $str
	call f 

kraj:
	movl $1, %eax 
	movl $0, %ebx 
	int $0x80


f:
	# pocetak svake funkcije
	pushl %ebp
	movl %esp, %ebp 

	pushl %ebx # jer ebx ne sme da bude promenjen posle funkcije
	
	movl 8(%ebp), %ecx
loop:
	cmpb $0, (%ecx)
	je zavrsi
	movl $4, %eax
	movl $1, %ebx
	movl $1, %edx
	int $0x80
	incl %ecx
	jmp loop
zavrsi:
	popl %ebx
	
	# kraj funkcije
	movl %ebp, %esp
	popl %ebp 
	ret 
