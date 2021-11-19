TITLE suma de cifra

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
;      Catedratico:   Dr. Alejandro Garcia
				;Alumno  Gustavo Antonio
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICIÓN

	INCLUDE Irvine32.inc


.data
; Área de Declaración de Variables
ms db "ingresa una cifra: ",0
res db "la suma es: ",0

.code

	main5 PROC	
	;Lógica del Programa
		
	mov edx,offset ms  ; almacena la variable en el registro edx
        call writestring
        call readint        ; leer un valor entero
        mov ebx,0       ; guarda en ebx 
        mov ecx,10   ; almacena el valor de 10

       mov edx, 0   ; se almacena el valor 
       div ecx      ; se divide entre %10
       add ebx, edx ; se agrega a edx
       ; el proceso de genera cuatro veces y se almacena la suma en edx

       mov edx, 0
       div ecx
       add ebx, edx

       mov edx, 0
       div ecx
       add ebx, edx

       mov edx, 0
       div ecx
       add ebx, edx


        mov edx,offset res ; txt 
        call writestring
        mov eax,ebx ; se muestra al usuario la cantidd sumada
        call writeint

      
		exit		
	main5 ENDP
	END main5