.model	tiny
.486
.data
dat1	db		12H,13H,14H,15H,16H,17H,18H,19H  ;INITIALIZING DATA 1
dat2  	db		12H,13H,14H,15H,16H,17H,18H,19H	  ;INITIALIZING DATA 1
dat3	dw		8 dup(?)    ; blank double word of 32 bit
carry		db		0
.code
.startup
		lea		esi,dat1		;pointing data1 to si
		lea		edi,dat3		;pointing data3 to di
		lea		ebx,dat2		;pointing data2 to bx
		mov		ecx,8		; initializing counter
		lodsw				;Load doubleword at address DS:(E)SI into EAX
		clc					;clear carry
x1:		adc		eax,[ebx]     ; multibyte addition add with carry 
		stosw				;Store AX at address ES:(E)DI
		add		ebx,4		; increment my pointer to data 2 to 4
		loop	x1			; loop till counte reach 0
		jnc		x2			; jump if not carry to end otherwise carry 
		inc		carry
x2:
.exit
end	