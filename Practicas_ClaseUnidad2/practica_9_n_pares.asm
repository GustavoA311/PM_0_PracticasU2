TITLE numeros pares


; Autore(s) :
;      Catedratico:   Dr. Alejandro Garcia
				;Alumno  Gustavo Antonio
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICI�N

	INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
msj_prac9 db "ingresa un numero: ",0


.code
	
	main10 PROC	
		;L�gica del Programa

	
		; PARTIENDO DE MANERA DECRECIENTE. Donde N >= 0

		mov edx, offset msj_prac9
		call writestring

		call readint

		call crlf
		call crlf 

		
		;eax dividendo 
		mov ebx, 2 ; divisor
		mov ecx, eax  ; respaldo de eax para no perder su valor cuando se haga la division

		mov edx, 0   

		div ebx

		cmp edx, 0 ; edx contiene el residuo
		jz ciclo
			;si no es cero ...
			dec ecx ;<- le restamos uno a ecx para que se convierta en par

		ciclo:
			mov eax, ecx
			call writedec
			call crlf

			dec ecx  ;decremento adicional para que en acumulativo sea como
					 ; si a ecx se le decrematar� de 2 en 2 por cada iteracion
			loop ciclo

		exit	
	main10 ENDP
	END main10