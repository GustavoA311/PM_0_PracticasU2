TITLE Area y perimetro de un rectangulo

;.Obtención del área y el perímetro
;de un rectángulo ingresando su base y altura.

;DESCRPICIÓN
;
; Autore(s):
;      Catedratico:   Dr. Alejandro Garcia
;	   Alumno :       Gustavo Antonio RIvera 

; Semestre: 8vo Semestre ISC
;FIN DESCRPICIÓN
INCLUDE Irvine32.inc
.data
; Área de Declaración de Variables

altura dword 0
base dword 0
basei db "Ingrese base: ",0
alturai db "ingrese la altura : ", 0
perimetro db "el perimetro es : ", 0
area db "el area es : ", 0

.code


main1 PROC

;Lógica del Programa
mov edx, offset basei ;            
call writestring ;                 
call readint ;                     Captura el dato del usuario
mov base,eax ;                     Guarda la variable en un auxiliar

push eax ;							guarda el dato anterior en una pila

mov edx, offset alturai ;				
call writestring ;					
call readint ;						
mov altura,eax ;					guarda la varible


pop ebx ;							
mul ebx ;							multiplica eax por ebx

mov edx, offset area ;				 
call writestring ;					
call writedec ;						imprime lo que hay en ebx (la multiplicación)

call crlf ;                        
mov eax, base ;                    base
mov ebx, altura ;                  altura
add eax, ebx ;                     eax y se realiza la suma
mov ebx, 2 ;                      
mul ebx ;                          El resultado se guardará en eax
mov edx, offset perimetro ;           
call writestring ;                
call writedec ;                   imprime lo que hay en la multiplicación


exit

main1 ENDP

END main1