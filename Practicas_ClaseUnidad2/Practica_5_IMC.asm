TITLE IMC

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

; Fórmula: peso (kg) / [estatura (m)]2

txpeso db "Ingrese el peso (Kg):",0
txaltura db "ingrece la altura (cm): ",0
r db "Tu imc es: ",0
Peso dword ?
estatura dword ?

.code

    main6 PROC    
        ;Lógica del Programa

        mov edx, offset txpeso
        call writestring
        call readint

        mov Peso,eax ; almacena el peso e68
        mov ecx, 1000 ; almacena 1000 para div la estatura


       mov edx, offset txaltura ; mensaje  estatura
       call writestring
       call readint

       mov estatura,eax             ; almacena el valor de la estatura
       mul estatura ; eax = eax*eax ; multiplica al cuadrado el valor
       div ecx                      ; divide entre 1000
       mov ecx,estatura             ; almacena la altura
       mov estatura,eax    

       mov eax, 0
       mov eax,peso
       mov edx, 0 ; para evitar tener conflicto al momento de calcular el residuo
       div estatura
        
        mov edx, offset r
        call writestring
        call writeint

      
		exit		
	main6 ENDP
	END main6