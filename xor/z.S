
.section .data 

str1: .fill 1024,1,0
str2: .fill 1024,1,0
rez: .fill 1024,1,0

.section .text 

.globl main 

# input 
main:
	movl $3, %eax 
	movl $0, %ebx
	movl $str1, %ecx
	movl $1024, %edx
	int $0x80


	movl $3, %eax 
	movl $0, %ebx
	movl $str2, %ecx
	movl $1024, %edx
	int $0x80

	movl $0, %eax 
loop:
	cmpb $10, str1(, %eax, 1)
	je do_xor
	movb str1(, %eax, 1), %bl 
	movb %bl, rez(, %eax, 1)
	incl %eax
	jmp loop
do_xor:
	movb str2(, %eax, 1), %bl
	xorb %bl, rez(, %eax, 1)
	cmpl $0, %eax 
	je str_print
	decl %eax 
	jmp do_xor

str_print:
	movl $4, %eax 
	movl $1, %ebx 
	movl $rez, %ecx
	movl $1024, %edx
	int $0x80
kraj:
	movl $1, %eax
	movl $0, %ebx 
	int $0x80
