TITLE obtener el mayor numero

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

txnumero db "cantidad de numeros a ingresar:  ", 0
txn db "escriba el numero: ",0
r6 db "mayor N es:  ",0
mayor dword 1000

.code

    main7 PROC    
        ;Lógica del Programa

        mov edx, offset txnumero ; ingresa el total de repeticiones
        call writestring
        call readint
        mov ecx, EAX ; se almacena el valor el ecx la cantidad
        
        ciclo:
            mov edx, offset txn ; ingrese N segun la cantidad de repeticiones 
            call writestring
            dec ecx             ; decrementa a ecx -n >
            call crlf           ; deja una sencuencia
            cmp ecx, 0          ;compara ecx con 0
            ;
           ; jl salir   ; salta si es menor que el anterior asta que sea menor a la cantidad salir

      compara:
             call readint        ; ingresa el valor n
             cmp eax, mayor      ; compara si N es menor que mayor (1000)
             jg nmayor           ; si es mayor compara la siguiente 

             jmp ciclo          ; salta al siguitente dato
             nmayor:
             mov mayor, eax
             jmp ciclo          ; se compara con el siguiente dato hasta que no haiga mas 

        imprime:
        mov edx, offset r6
        call writestring
        call writeint

		exit		
	main7 ENDP
	END main7