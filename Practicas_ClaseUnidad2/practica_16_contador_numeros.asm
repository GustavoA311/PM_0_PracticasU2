TITLE promedio calificaciones
;eax Registro de acumulador extendido 
;  Almacenar el valor de retorno de una función y utilizarlo como contenedor para resolver sencillas operaciones matemáticas. 
; varia segun la operacion

; EBX  registro base extendido- Suele utilizarse como apoyo 
;para acelerar el cálculo de operaciones. Es un registro no volátil.

;ECX (registro de contador) – Registro volátil que puede ser utilizado como 
;contador de bucle o contenedor de parámetros que sean pasado a funciones

; EDX (Registro de datos extendido ) – Registro volátil usado mayormente como parámetro para funciones.
;Normalmente se usa también para almacenar variables a corto plazo dentro de una función

; DESCRPICIÓN
;
; Autore(s) :
;       Catedratico:   Dr. Alejandro Garcia
;       Alumno  Gustavo Antonio
; Semestre: 8vo Semestre ISC

INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables

txtx db "Ingresa el numero a contar ",0
txtI db "Dame el total de numeros: ", 0
txtveces db "numero de veces repetida ", 0
contador dword 0

.code

	mai17 PROC
	      mov edx, offset txtx ; ingresa el valor a buscar 
		  call writestring
		  call readint
		  mov ebx, eax

		  mov edx, offset txtI ; ingresa la cantidad
		  call writestring
		  call readdec
		  mov ecx, eax ; almacena el valor ecx en eax
		  inc ecx
	ciclo:
		dec ecx ; decrementa a ecx
		jz sig ; salta si es 0

		mov edx, offset txtx ; ingresa los vsalores 
		call writestring
		call readint

		cmp ebx,eax
		jne ciclo
			  
		inc contador
		jmp ciclo
	sig:
		mov edx, offset txtveces
		call writestring
		mov eax, ebx
		mov eax, contador
		call writedec
			 
			exit
	mai17 ENDP
	END mai17



