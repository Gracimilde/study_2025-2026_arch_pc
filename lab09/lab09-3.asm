SECTION .text
global _start
_start:
pop ecx
print_args:
pop ebx
cmp ecx, 0
jz exit
mov edi, ebx
call strlen
mov edx, eax
mov ecx, ebx
mov ebx, 1
mov eax, 4
int 0x80
mov ecx, newline
mov edx, 1
mov ebx, 1
mov eax, 4
int 0x80
pop ecx
dec ecx
jmp print_args
exit:
mov eax, 1
mov ebx, 0
int 0x80
strlen:
push ebx
mov ebx, edi
xor eax, eax
.loop:
cmp byte [ebx+eax], 0
je .done
inc eax
jmp .loop
.done:
pop ebx
ret
SECTION .data
newline db 0xa
