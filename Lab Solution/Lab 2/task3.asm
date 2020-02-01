.model	tiny
.486
.data
array1	db		12h,11h,10h,09h,08h,07h,06h,0ah,05h,03h	; initializing data

.code
.startup
		lea		si,array1   ;copying data path to register.
		mov		bl,'E'		; byte to replace
		mov		cx,10		; my counter
		mov		al,0ah		; lowebit search 0ah
x1:		cmp		[si],al		; compare al and si
		jne		x2			;jump not equal
		mov		[si],bl		; move final
x2:		inc		si			; increment si
		loop	x1			; loop till counter
		
.exit
end		