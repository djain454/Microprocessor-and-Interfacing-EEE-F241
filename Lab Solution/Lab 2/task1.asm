.model	tiny
.486
.data
dat1	dd		12345678H,23456789H,54326781H,45637232H,98535447H
.code
.startup
	lea si,dat1     ;copying data to register.
	mov cx,5 	; initializing counter
	lodsd		;load string

x1:	cmp eax,[si]	;comparing string 
	jae x2		; jump to x2 if above or equal
	mov eax,[si]	; mov content of si 

x2:	add si,4	; increase si
	loop x1		; loop x1 till cx==0
.exit
end		