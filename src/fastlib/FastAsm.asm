[bits 32]



; //TODO: uint32_t -> uint16_t
; void get_mmap(uint32_t bufseg, uint32_t bufoff);
;
;

global get_mmap, _get_mmap
extern kprint, kprintstr, dump_regs
global get_ds, get_fs, get_gs

section .data
%define GET_MMAP_MAGIC	0x534D4150
%define GET_MMAP_EAX	0xE820

str_get_mmap_e_int1		db		'#1 int15 failed ',0
str_get_mmap_e_int2		db		'#2 int15 failed ',0

section .text
	get_ds:
	xor		ax,ax
	mov		ax,ds
	ret

	get_fs:
	xor		ax,ax
	mov		ax,fs
	ret

	get_gs:
	xor		ax,ax
	mov		ax,gs
	ret

	_kdump: use32
	push	edx
	push	ecx
	push	ebx
	push	eax
	call	dump_regs
	pop		eax
	pop		ebx
	pop		ecx
	pop		edx
	ret

	get_mmap:
	_get_mmap: use32
	mov		es, [esp+4]
	mov		di, [esp+8]
	xor		ebx,ebx
	mov		edx,GET_MMAP_MAGIC
	xor		eax,eax					;Optional ?
	mov		eax,GET_MMAP_EAX
	mov		ecx,20
	call	_kdump
	int		0x15
ret
	jb		__get_mmap_intfailed1
	cmp		eax,GET_MMAP_MAGIC
	jnz		__get_mmap_intfailed2
	;cmp	cl,20 ;TODO: cl must be equals to 20 but we can assume this
	;jnz	somewhere
	
	_get_mmap_it:
	cmp		ebx,0
	jz		_get_mmap_it_end
	add		di,20
	mov		eax,GET_MMAP_EAX
	mov		ecx,20
	_get_mmap_it_end:
	ret
	
	__get_mmap_intfailed1:
	push str_get_mmap_e_int1
	jmp _get_mmap_error	

	__get_mmap_intfailed2:
	push str_get_mmap_e_int2
	jmp _get_mmap_error	

	;Need a message pushed in stack !
	_get_mmap_error: 
	call	kprintstr
	add		esp,4
	call	_kdump
	ret

