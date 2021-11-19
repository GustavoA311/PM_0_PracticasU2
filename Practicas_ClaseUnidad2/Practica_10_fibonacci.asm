TITLE fibonnaci
; Autore(s) :
;      Catedratico:   Dr. Alejandro Garcia
				;Alumno  Gustavo Antonio
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICIÓN

	INCLUDE Irvine32.inc

.data
mensaje1 db "ingrese el valor de N:",0
mensaje2 db "Los números en la secuencia de Fibonacci son los siguientes",0    
    N dword 10
    valorInicial dword 0,1

.code
main11 PROC


    mov edx, offset mensaje1 ; mensaje  
       call writestring
       call readint
       mov eax,N           ; almacena el valor 



    mov edx,offset mensaje2
    call WriteString            ; mensaje2
    call Crlf                   ; espacio 

    mov eax,0
    mov ebx, [valorInicial]
    mov ecx, [valorInicial + 2]
ciclo: ; inicia ciclo
    mov edx,0       ;estableciendo edx en 0 cada vez
    add edx,ebx       ;agregar bx a dx
    add edx,ecx       ;agregar cx a dx
    call WriteDec   

    call Crlf       ;imprime dx
    mov ebx,ecx       ; ahora cx va a bx
    mov ecx,edx       ;dx va a  cx 
    inc eax         ;incrementa a  eax(contador)
    cmp eax,N       ;compara a variable n
    jne ciclo   ;si eax = N bucle de salida

    exit
main11 ENDP
END main11