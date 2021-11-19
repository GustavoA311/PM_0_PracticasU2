TITLE numero negativo
; DESCRPICIÓN
;
; Autore(s) :
;       Catedratico:   Dr. Alejandro Garcia
;       Alumno  Gustavo Antonio
; Semestre: 8vo Semestre ISC

INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables

txn db "escriba el numero: ",0
r db "Ingresaste n negativo fin ",0

.code

    main16 PROC    
        ;Lógica del Programa

        ciclo:
            mov edx, offset txn ; ingrese N segun la cantidad de repeticiones 
            call writestring
            call readint
            ; compara
            cmp eax,0 ; compara con el valor 0
            jle fin ; si es menor o igual 0
            jmp ciclo
        fin:
             mov edx, offset r ; mensaje fin 
            call writestring
            call crlf
		exit		
	main16 ENDP
	END main16