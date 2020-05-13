.model tiny
.486
.data
dat1 db 'math', 'have', '    ', 'bury', 'mine', 'dine', '    ' , 'hell', 'deep', 'tree' ; declaring data 
cnt1 db 10
.code
.startup
    lea di,dat1  ; load effective address of dat 1 to di
    movzx cx,cnt1 ; move with zero extend to cx
    mov eax,'    ' ; mov blank string to eax
	repne scasd			; Repeat string operation that is Compare EAX with doubleword at ES:(E)DI and set status flags

    mov si,di		;mov di to si
x1: lodsd 			; Load doubleword at address DS:(E)SI into EAX
    cmp eax,'    '  ; compare eax with the instruction
    jz x2  ; exit if 0 flag is set 
    bswap eax ; bitwise swap
    stosd     ; store address to di
    loop x1	; loop to x1 till cx becomes 0
	
x2:
.exit
end