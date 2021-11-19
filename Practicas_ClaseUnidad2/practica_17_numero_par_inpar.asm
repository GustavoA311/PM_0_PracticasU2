TITLE numeros pares e inpares
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
msj_p18 db "lista de 0 a : ",0
txtpar db "son pares: ",0
txtinpar db "son inpares: ",0
par dword 0
impar dword 0
.code
	
	main18 PROC	
		;Lógica del Programa

		mov edx, offset msj_p18 ; mensaje 
		call writestring 
		call readint		; determinar asta n
		call crlf
		
		;eax dividendo 
		mov ebx, 2 ; divisor
		mov ecx, eax  ; respaldo de eax para no perder su valor cuando se haga la division
		mov edx, 0   ; para evitar el overflow
		div ebx

		cmp edx, 0 ; edx contiene el residuo
		jz ciclo
		;si no es cero ...
		dec ecx ;<- le restamos uno a ecx para que se convierta en par

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	ciclo:
		mov eax, ecx
		call writedec
		call crlf
		dec ecx  ;decremento adicional para que en acumulativo sea como
		cmp edx, 0 ; compara a 0
		;je npar ; salta si es igual
;		inc inpar
		jmp siguiente

		npar:
		inc par
		siguiente:		 
		loop ciclo
			mov edx, offset txtpar
			call writestring
			mov eax, par
			call writedec
			call crlf

			mov edx, offset txtinpar
			call writestring
			mov eax, par
;			sub eax, inpar
			call writedec
			call crlf

		exit	
	main18 ENDP
	END main18