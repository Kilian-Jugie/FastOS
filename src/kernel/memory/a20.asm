[bits 32]

global enable_a20, _enable_a20
global check_a20, _check_a20

section .text
	enable_a20: 
	_enable_a20: use16
	mov     ax,2403h                ;--- A20-Gate Support ---
	int     15h
	jb      a20_ns                  ;INT 15h is not supported
	cmp     ah,0
	jnz     a20_ns                  ;INT 15h is not supported
 
	mov     ax,2402h                ;--- A20-Gate Status ---
	int     15h
	jb      a20_failed              ;couldn't get status
	cmp     ah,0
	jnz     a20_failed              ;couldn't get status
 
	cmp     al,1
	jz      a20_activated           ;A20 is already activated
 
	mov     ax,2401h                ;--- A20-Gate Activate ---
	int     15h
	jb      a20_failed              ;couldn't activate the gate
	cmp     ah,0
	jnz     a20_failed              ;couldn't activate the gate
	jmp		a20_success
	
	a20_success: use32
	mov		eax,0h
	ret
 
	a20_activated: use32
	mov		eax,1h
	ret

	a20_ns: use32
	in al, 0x92						;read a20
	test al, 2						;test to avoid writing if already writed
	jnz a20_success
	or al, 2
	and al, 0xFE
	out 0x92, al					;set
	jmp a20_success					;todo: check if enabled

	a20_failed: use32
	mov		eax,3h
	ret


    ;==========

    _check_a20:
	check_a20: use16
    pushf
    push ds
    push es
    push di
    push si
 
    cli
 
    xor ax, ax ; ax = 0
    mov es, ax
 
    not ax ; ax = 0xFFFF
    mov ds, ax
 
    mov di, 0x0500
    mov si, 0x0510
 
    mov al, byte [es:di]
    push ax
 
    mov al, byte [ds:si]
    push ax
 
    mov byte [es:di], 0x00
    mov byte [ds:si], 0xFF
 
    cmp byte [es:di], 0xFF
 
    pop ax
    mov byte [ds:si], al
 
    pop ax
    mov byte [es:di], al
 
    mov ax, 0
    je check_a20__exit
    mov ax, 1
 
check_a20__exit: use16
    pop si
    pop di
    pop es
    pop ds
    popf
    ret


		
