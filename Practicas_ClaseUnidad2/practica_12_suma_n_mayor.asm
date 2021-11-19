TITLE numero mayor a 
;eax Registro de acumulador extendido 
;  Almacenar el valor de retorno de una función y utilizarlo como contenedor para resolver sencillas operaciones matemáticas. 
; varia segun la operacion

; EBX  registro base extendido- Suele utilizarse como apoyo 
;para acelerar el cálculo de operaciones. Es un registro no volátil.

;ECX (registro de contador) – Registro volátil que puede ser utilizado como 
;contador de bucle o contenedor de parámetros que sean pasado a funciones

; EDX (Registro de datos extendido ) – Registro volátil usado mayormente como parámetro para funciones.
;Normalmente se usa también para almacenar variables a corto plazo dentro de una función

; Autore(s) :
;      Catedratico:   Dr. Alejandro Garcia
				;Alumno  Gustavo Antonio
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICIÓN

	INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
txtdato db "ingrese un dato ",0
total db "total es ", 0
esmayo db "es mayor", 0
esmenor db "no es mayor",0

.code

main13 PROC

;Lógica del Programa
   mov ecx, 3

   ciclo:
        mov edx, offset txtdato
        call writestring
        call readint
        push eax

   loop ciclo

        pop ebx
        pop eax
        pop ecx
        add eax, ecx
        call crlf

   mov edx, offset total
   call writestring

   cmp eax, ebx
   ;   ja  mayor
   ;mayor:
      ;mov edx, offset esmayor
   
  ; mov edx, offset esmenor
  ;    jmp ending
   

 

		exit		
	main13 ENDP
	END main13