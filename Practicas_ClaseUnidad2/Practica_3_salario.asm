TITLE salario de empleados

; DESCRPICIÓN
; Objetivo: Realice un programa para determinar el sueldo semanal de un trabajador con base 
; en las horas trabajadas y el pago por hora, 
; considerando que después de las 40 horas cada hora se considera horas extras
;
; Autore(s) :
;      Catedratico:   Dr. Alejandro Garcia
				;Alumno  Gustavo Antonio
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICIÓN

	INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
trabajo db "Cuantas horas trabajo?: ",0
horas db "Cuanto es el pago x hora?: ", 0
pago db "En total pagaras $",0

.code
	main4 PROC
	; Lógica del Programa

mov edx, offset trabajo
call writestring
call readint
call crlf
mov ebx, eax

mov edx, offset horas 
call writestring
call readint
call crlf


cmp ebx, 41 ; se almacena 
jl print


mov ecx, 2
mul ecx


print:
mul ebx

mov edx, offset pago
call writestring
call writedec


exit

main4 ENDP

END main4