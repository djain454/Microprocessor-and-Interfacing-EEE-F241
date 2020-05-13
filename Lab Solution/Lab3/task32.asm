.model tiny 
.386
.data
array1 db 10h,11h,12h,13h,14h,15h,16h,17h,18h,19h,10h,11h
	   db  12h,13h,14h,15h,16h,17h,18h,19h,10h,11h,12h,13h
	   db  14h,15h,16h,17h,18h,19h,10h,11h,12h,13h,14h,15h
		db  16h,17h,18h,19h,10h,11h,12h,13h,14h,15h,16h,17h
		db   18h,19h
garbage db 10 dup(?)
array2 db 50 dup(?)
.code
.startup
	lea si,array1
	lea di,array2
	mov ax,0000h
	mov cx,32h
	
x1: mov al,[si]
	mov [di],al
	inc si
	inc di
	dec cx
	jnz x1
	
.exit
end
	


