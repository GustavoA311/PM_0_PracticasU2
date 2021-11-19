
TITLE velocidad

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
;formula ; v=d/t

txdistancia db "Ingrese la distancia (km)):",0
txtiempo db "ingrece el tiempo en (Hrs): ",0
r db "Tu imc es: ",0
distancia dword ?
tiempo dword ?

.code

    main9 PROC    
       ;Lógica del Programa

       mov edx, offset txdistancia
       call writestring
       call readint
       mov distancia ,eax ; almacena el peso e68


       mov edx, offset txtiempo ; mensaje  estatura
       call writestring
       call readint
       mov tiempo,eax           ; almacena el valor de tiempo
      
        mov eax,distancia
        mov edx, 0
        div tiempo
        
        mov edx, offset r
        call writestring
        call writeint

      
		exit		
	main9 ENDP
	END main9