global _start
section .data
	string: db 'Hello',0xa
section .text
_start:
	mov rcx,0x5 ;5 times
loop_do:
	mov rax,1
	mov rdi,1
	mov rsi,string
	mov rdx,6
	syscall
loop loop_do
	mov rax,60
	mov rdi,1
	syscall