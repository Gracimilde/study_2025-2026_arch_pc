%include 'in_out.asm'

SECTION .data
msg_func db 'Функция: f(x) = 10(x - 1)', 0h
msg_res  db 'Результат: ', 0h

SECTION .text
global _start

_start:
    ; Показываем функцию
    mov eax, msg_func
    call sprintLF

    pop ecx          ; Извлекаем количество аргументов
    pop eax          ; Извлекаем имя программы
    sub ecx, 1       ; Убираем имя программы из количества
    
    mov ebx, 0       ; Сумма начинается с 0

process_loop:
    pop eax          ; Извлекаем x_i
    call atoi        ; Преобразуем в число
    
    ; === f(x) = 10(x - 1) ===
    sub eax, 1       ; x - 1
    mov edx, eax     ; Сохраняем (x-1) в EDX
    add eax, eax     ; 2(x-1)
    add eax, eax     ; 4(x-1) 
    add eax, eax     ; 8(x-1)
    add eax, edx     ; 8(x-1) + (x-1) = 9(x-1)
    add eax, edx     ; 9(x-1) + (x-1) = 10(x-1)
    
    add ebx, eax     ; Добавляем f(x) к общей сумме
    loop process_loop

    ; Показываем результат
    mov eax, msg_res
    call sprint
    mov eax, ebx
    call iprintLF
    
    call quit
