TITLE binario
; DESCRPICIÓN
;
; Autore(s) :
;       Catedratico:   Dr. Alejandro Garcia
;       Alumno  Gustavo Antonio
; Semestre: 8vo Semestre ISC

INCLUDE Irvine32.inc
.data

nbinario byte 33 DUP(?)   ; 32 caracteres para binario de 32 bits
nlongitud dword 0
base DWORD 2    ;  Base del número binario
ndecimal dword ?
contador DWORD 0
txtbinario byte " Ingrese un numero binario : ",0   ; cadena terminada en nulo
txtdecimal byte " Decimal = ",0
txthexadecimal byte " Hexadecimal = ",0
txtnobinario byte " El binario no válido solo puede contener 0 y 1",0

.code
	main21 PROC                       

		mov edx, OFFSET txtbinario
		call WriteString

		mov edx,OFFSET nbinario
		mov ecx,SIZEOF nbinario  ; longitud de numero binario
		call ReadString              ; lee la cadena
		mov nlongitud,eax  ; lee el numero de caracteres

		; busqueda de numero decimal

		mov eax,0
		mov esi,0            ; ESI  inicia en 0
		mov ecx, nlongitud   ; ECX  inicializa la log del numero
		cmp ecx,0            ; compara ecx y 0
		je displayNumbers    ; salta si es 0
		mov contador,ecx         

	ifPart:

		cmp nbinario[esi],'0'  ; compara el numero binario[esi] y 0
		je IncEsi              ; salta si es igual ==

       ;Multiplicando por cero, igual a cero. no hagas nada en este caso

	elseIfPart:
		cmp nbinario[esi],'1' ; Compara el numero binario[esi] y '1'
		jne elsePart ;si no es igual, entonces no es válido. en otras palabras, no es ni 0 ni 1

	   ;calcula pow(base, tamaño numero -ESI-1) y agrega a eax

		mov ecx, nlongitud
		sub ecx,esi
		dec ecx
		; Calcula la potencial
		mov eax,1 ; EAX inicia  en  1

	whilePart2:
		cmp ecx,0   ; Compara ECX y 0
		je stop     ; salta si es  ==

		; Multiplica EAX y EBX y guarda el resultado en EAX
		mov ebx,base
		mul ebx
		dec ecx
		jmp whilePart2
		; Calcula potencia final
	stop:
		add ndecimal,eax
		jmp IncEsi

	elsePart:
		mov edx, OFFSET txtnobinario  ; " Número binario no válido, el número binario solo contiene ceros o unos"
		call WriteString
		call Crlf       
		call WaitMsg    ; Muestra un mensaje y espera a que se presione una tecla
		exit            ; sale del programa

	IncEsi:
		inc esi
		mov ecx,contador 
		dec ecx
;		jmp WhilePart

	displayNumbers:
		mov edx, OFFSET txtdecimal
		call WriteString

		mov edx, 0
		mov eax, ndecimal
		call WriteDec              

		call Crlf                            
														   
		mov edx, OFFSET txthexadecimal
		call WriteString

		mov edx, 0
		mov eax, ndecimal
		call WriteHex

	call Crlf
	call WaitMsg    

	exit            
	main21 ENDP  
	END main21     