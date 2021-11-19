TITLE matriz
; DESCRPICIÓN
;
; Autore(s) :
;       Catedratico:   Dr. Alejandro Garcia
;       Alumno  Gustavo Antonio
; Semestre: 8vo Semestre ISC

INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables
txtin db "Ingrese un dato: ",0
res db "el resultado es : ", 0
.code
    main8 PROC    
        ;Lógica del Programa
		 call writestring
         mov ecx, 4

     ciclo:
       mov edx, offset txtin ; ingresa el valor 
       call writestring
       call readint
       push eax ; recorre el apuntador
       dec ecx ; decrementa ecx
       jnz ciclo ;salta cuando finalice 0
        
       pop edx   ;[1, 1] ; elimina el valor edx de de la pila y lo ubica en memoria
       pop ecx    ;[1, 0] ; elimina el valor ecx de de la pila y lo ubica en memoria
       pop ebx    ;[0, 1] ; elimina el valor ebx de de la pila y lo ubica en memoria
       pop eax    ;[0, 0]; elimina el valor eax de de la pila y lo ubica en memoria
       mul edx ; multiplica edx
       push eax ; recoore a eax

       mov eax, ebx ; mueve de eax en ebx
       mul ecx ; lo multiplica
       mov ebx, eax 
       pop eax
       sub eax, ebx

       mov edx, offset res
       call writestring
       call writeint
        
        exit    
    main8 ENDP
    END main8