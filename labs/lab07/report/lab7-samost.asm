%include 'in_out.asm'
SECTION .data
div: DB 'Выражение вида 10+(31*х-5). '
msg: DB 'Введите Х: ',0
rem: DB 'Результат: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:

mov eax, div
call sprint


mov ecx, x
mov edx, 80
call sread

mov eax, x
call atoi 

mov ecx, eax
mov ebx, 31
mul ebx
mov ecx, eax
add ecx, -5
add ecx, 10

mov eax, rem
call sprint
mov eax, ecx
call iprintLF

call quit

