TITLE MASM Maquina de Refrescos

; Description: Proyecto final de la unidad 2

INCLUDE Irvine32.inc
.data

menu1 BYTE "[_______________________________________]" ,0
menu2 BYTE "| 1. JUGO BONIG 18 PESOS                |" ,0
menu3 BYTE "| 2. REFRESCO ESCUIS DE HIERRO 30 PESOS |" ,0 
menu4 BYTE "| 3. FANTA DE FRESA 20 PESOS            |" ,0
menu5 BYTE "| 4. JARRITO TUTIFRUTI 20 PESOS         |" ,0

entregaproducto1 BYTE "Aqui esta tu: JUGUITO DEL BOING DE GUAYABA",0
entregaproducto2 BYTE "Aqui esta tu: REFRESCO DE HIERRO SABOR VAINILLA",0
entregaproducto3 BYTE "Aqui esta tu: REFRESCO DE FRESA DE FANTA",0
entregaproducto4 BYTE "Aqui esta tu: REFRESCO DE JARRITO CON SABOR A FRUTOS ROJOS",0

ingresadinero BYTE "Por favor ingrese su dinero: ",0
diezpesos BYTE "10 Pesos: ",0
veitepesos BYTE "20 Pesos: ",0
cincuentapesos BYTE "50 Pesos: ",0
dinerototalingresado BYTE "Dinero total ingresado: ",0
elegir_bebida BYTE "Por favor elija una bebida: ",0
regresarcambio BYTE "Este es tu cambio: ",0
gracias BYTE "GRACIAS! ", 0
sino BYTE "Quieres comprar otro articulo?? (SI:0 / NO: 1) : ",0
dinero_no_suficiente BYTE "¡¡¡EL DINERO QUE INGRESO NO ES SUFICIENTE !!! INTÉNTALO DE NUEVO !",0
txtpesos BYTE " Pesos",0

sabor DWORD 0
input1 DWORD 0
input2 DWORD 0
input3 DWORD 0

total DWORD 0
cambio DWORD 0
choice DWORD 0

diez DWORD 10
veinte DWORD 20
cincuenta DWORD 50

cost1 DWORD 18
cost2 DWORD 30
cost3 DWORD 20
cost4 DWORD 20

.code 
mainproj PROC 

L1: 
	mov edx, OFFSET menu1
	call WriteString 
	call crlf
	mov edx, OFFSET menu2
	call WriteString 
	call crlf
	mov edx, OFFSET menu3
	call WriteString 
	call crlf
	mov edx, OFFSET menu4
	call WriteString 
	call crlf
	mov edx, OFFSET menu5
	call WriteString 
	call crlf
	mov edx, OFFSET menu1
	call WriteString 
	call crlf
	jmp L2

L2:
	mov edx, OFFSET ingresadinero
	call WriteString 
	call crlf

	mov edx, OFFSET diezpesos
	call WriteString 
	call ReadDec
	mov input1, eax 

	mov eax, input1
	mul diez
	mov total, eax
	call crlf

	mov edx, OFFSET veitepesos
	call WriteString
	call ReadDec
	mov input2, eax

	mov eax,input2
	mul veinte
	add total, eax
	call crlf

	mov edx, OFFSET cincuentapesos 
	call WriteString
	call ReadDec
	mov input3, eax 

	mov eax,input3
	mul cincuenta
	add total, eax
	call crlf

	mov edx, OFFSET dinerototalingresado
	call WriteString
	mov eax, total 
	call WriteDec
	mov edx, OFFSET txtpesos
	call WriteString 
	call crlf
	jmp FLAV

FLAV:
	mov edx, OFFSET elegir_bebida
	call WriteString
	call ReadDec
	mov sabor, eax 

	cmp sabor,1
	jz F1
	cmp sabor,2
	jz F2
	cmp sabor,3
;	jz F3
	cmp sabor,4
	jz F4

	jmp FLAV

F1:
	cmp total, 18
	jge entrega1
	jl noalcanza

entrega1:
	mov edx, OFFSET entregaproducto1
	call WriteString
	call crlf
	mov eax, total
	sub eax, cost1 
	mov cambio, eax

	mov edx, OFFSET regresarcambio
	call WriteString 
	mov eax, cambio
	call WriteDec
	mov edx, OFFSET txtpesos
	call WriteString 
	call crlf
	jmp ASK

F2:
	cmp total, 30
	jge entregados
	jl noalcanza

entregados:
	mov edx, OFFSET entregaproducto2
	call WriteString
	call crlf

	mov eax, total
	sub eax, cost2 
	mov cambio, eax

	mov edx, OFFSET regresarcambio
	call WriteString 
	mov eax, cambio
	call WriteDec
	mov edx, OFFSET txtpesos
	call WriteString 
	call crlf
	jmp ASK
pF3:
	cmp total, 20
	jge entregatres
	jl noalcanza

entregatres:
	mov edx, OFFSET entregaproducto3 
	call WriteString
	call crlf
	mov eax, total
	sub eax, cost3 
	mov cambio, eax

	mov edx, OFFSET regresarcambio
	call WriteString 
	mov eax, cambio
	call WriteDec
	mov edx, OFFSET txtpesos
	call WriteString 
	call crlf

	jmp ASK

F4:
	cmp total, 20
	jge entregacuatro
	jl noalcanza

entregacuatro:
	mov edx, OFFSET entregaproducto4
	call WriteString
	call crlf
	mov eax, total
	sub eax, cost4
	mov cambio, eax

	mov edx, OFFSET regresarcambio
	call WriteString 
	mov eax, cambio
	call WriteDec
	mov edx, OFFSET txtpesos
	call WriteString 
	call crlf

	jmp ASK

ASK: 
	call crlf
	mov edx, OFFSET sino 
	call WriteString
	call ReadDec
	mov choice, eax

	call crlf
	call crlf

	cmp choice,0
	jz Continue
	jmp Stop

Continue:
	jmp L1

noalcanza:
	mov edx, OFFSET dinero_no_suficiente 
	call WriteString 
	call crlf
	call crlf
	JMP L2

Stop:
	mov edx, OFFSET gracias 
	call WriteString 
	call crlf

exit
mainproj ENDP
END mainproj