global _start
section .data
	
section .text
_start:
	jmp func1
	hello_world: db 'hello world',0xa
func1:
	mov al,4
	xor ebx,ebx
	add ebx,1
	lea ecx, [rel hello_world]
	xor edx,edx	
	add edx, 12
	int 0x80
	
	xor eax,eax
	add eax,1
	xor ebx,ebx
	add ebx, 1
	int 0x80