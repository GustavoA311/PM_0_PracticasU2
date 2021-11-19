TITLE Introduccion texto con consola

;DESCRPICIÓN
;Objetivo: Introducción a la instrucción mul; multiplica a dos operandos
;
; Autore(s):
;      Catedratico:   Dr. Alejandro Garcia
;	   Alumno :       Gustavo Antonio RIvera 

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables

cadena1_p14 db "UNIVERSIDAD AUTONOMA DE TAMAULIPAS ",0
cadena2_p14 db "FACULTAD DE INGENIERIA ARTURO NARRO SILLER", 0
cadena3_p14 db "INGENIERIA EN SISTEMAS COMPUTACIONALES ", 0
cadena4_p14 db "PROGRAMACION DE MICROPROCESADORES",0 
cadena5_p14 db "CATEDRATICO.",0
cadena6_p14 db "Dr. Alejandro Humberto Garcia",0

cadena7_p14 db "Integrantes del equipo:",0
cadena8_p14 db "Gustavo Antonio Rivera ",0


.code

	main2 PROC
		;Lógica del Programa
		; asi aparecen juntos "hola mundo sean bienvenidos"

		mov edx, offset cadena1_p14
		call writeString 
		call crlf ; aplica una vuelta de carro nueva linea 

		mov edx, offset cadena2_p14
		call writeString 
		call crlf ; aplica una vuelta de carro nueva linea 

		mov edx, offset cadena3_p14
		call writeString
		call crlf ; aplica una vuelta de carro nueva linea 


		mov edx, offset cadena4_p14
		call writeString
		call crlf ; aplica una vuelta de carro nueva linea 


		mov edx, offset cadena5_p14
		call writeString
		call crlf ; aplica una vuelta de carro nueva linea 

		mov edx, offset cadena6_p14
		call writeString
		call crlf ; aplica una vuelta de carro nueva linea

		mov edx, offset cadena7_p14
		call writeString
		call crlf ; aplica una vuelta de carro nueva linea

		mov edx, offset cadena8_p14
		call writeString
		call crlf ; aplica una vuelta de carro nueva linea
		; presentacion de equipo
	exit
main2 ENDP
END main2