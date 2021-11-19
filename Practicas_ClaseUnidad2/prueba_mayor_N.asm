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

  var1 dword ?
   var2 dword ?
   msg1 db  "mayor que ",0
   msg2 db "menor que",0
   msg3 db 'iguales",0
   msg4 db "primer valor",0
   msg5 db "segundo valor",0



.code

    prueba PROC    
        ;Lógica del Programa

 mov ah,00h
   mov al,03h


   mov ah,02h
   mov dx,0510h
   mov bh,0
  

   mov ah,09h
   lea dx,msg4
   

   mov ah,07h
   
   mov ah, 02h
   mov dl,al
   mov  var1,al

   mov ah,09h
   lea dx,msg5

   mov ah,07h

   mov ah,02h
   mov dl,al
   mov var2,al


  cmp var1,al
  ja mayor
  jb menor
  je igual

mayor:  

   mov ah,09h
   lea dx,msg1
   jmp salir

menor:

   mov ah,09h
   lea dx,msg2
   jmp salir

igual:

   mov ah,09h
   lea dx,msg3
   jmp salir


salir:


   
		exit		
	prueba ENDP
	END prueba