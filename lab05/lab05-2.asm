%include 'in_out.asm'
SECTION .data                   ;секция инициированных данных
msg: DB 'Введите строку :' ,0h  ;сообщение
SECTION .bss                    ;секция не иновациированных данных
buf1: RESB 80                   ;буфер размером 80 байт
SECTION .text                   ;код программы
   GLOBAL _start                ;начало программы
   _start:                      ;точка входа в программу
   mov eax, msg                 ;запись адреса выводимого сообщения в 'EAX'
   call sprint                  ;вызов подпрограамы печати сообщения
   mov ecx, buf1                ;запись адреса переменной в 'EAX'
   mov edx, 80                  ;запись длины вводимого сообщения в 'EBX'
   call sread                   ;вызов подпрограммы ввода сообщения
   call quit                    ;вызов подпрограммы завершения