.section .data 

msg: .ascii "Hello world\n\0jkhskfjhjk"
name: .fill 1024,1,0

hello: .ascii "Hello \0"

.section .text 

.globl main 

main:
	movl $4, %eax
	movl $1, %ebx
	movl $msg, %ecx
	movl $12, %edx
	int $0x80

	movl $3,%eax
	movl $0, %ebx
	movl $name, %ecx
	movl $1024, %edx
	int $0x80
	
	movl $4, %eax
	movl $1, %ebx
	movl $hello, %ecx
	movl $1024, %edx
	int $0x80
	
	movl $4, %eax
	movl $1, %ebx
	movl $name, %ecx
	movl $1024, %edx
	int $0x80

end:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
