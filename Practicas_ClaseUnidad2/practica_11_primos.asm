TITLE numero primo
; Autore(s) :
;      Catedratico:   Dr. Alejandro Garcia
				;Alumno  Gustavo Antonio
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICIÓN

	INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
txtmensaje  db "Igresa el numero: ",0
esprimo db "es un numero primo ",0
noesprimo db "no es un numero primo ",0    

.code
main12 PROC
;Lógica del Programa

    mov edx, offset txtmensaje
	call writestring
	call readint
    call crlf
   
    cmp eax, 1 ; a comparar

  ;  jnz si ; Salta si no es cero
    ; si:
        mov edx, offset esprimo
	    call writestring

    ;jz no ; salta si es cero
    ;no:
        mov edx, offset noesprimo
	    call writestring

exit 
           
main12 ENDP 
END main12