global _start
section .data
	str1: db "Called func1",0xa
	len1: equ $-str1
	str2: db "Jumped to func2",0xa
	len2: equ $-str2

section .text
func1:
	mov rax,1
	mov rdi,1
	mov rsi,str1
	mov rdx,len1
	syscall
	jmp func2
func2:
	mov rax,1
	mov rdi,1
	mov rsi,str2
	mov rdx,len2
	syscall
	
	mov rax,60
	mov rdi,1
	syscall
_start:
	call func1
