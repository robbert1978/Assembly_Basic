global _start
section .data
	hello_world: db 'Hello world!',0xa
	len: equ $-hello_world
section .text
_start:
	mov rax,1 ;write function
	mov rdi,1
	mov rsi,hello_world
	mov rdx,len
	syscall
	mov rax,60 ;exit function
	mov rdi,1
	syscall