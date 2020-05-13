.model tiny 
.data
dat1 db 10h,11h,12h,13h,14h
dat2 db 10h,11h,12h,13h,14h
.code
.startup
	lea si,dat1
	lea di,dat2
	mov ax,0000h
	mov bl,00h
	mov cl,5h

x1: mov al,[si]
	adc al,[di]
	mov [di+20],al
	inc si
	inc di
	dec cl
	jnz x1
	jnc x2
	inc bl
x2: mov [di+20],bl

.exit
end
	


