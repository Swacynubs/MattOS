; boot.asm
mov ax, 0x07c0
mov ds, ax

mov ah, 0x0
mov al, 0x3
int 0x10

mov si, msg
mov ah, 0x0E

print_character_loop:
    lodsb

    or al, al
    jz numbers

    int 0x10

    jmp print_character_loop

msg:
    db 'Hello, World! Poop', 13, 10, 10, 'Welcome to MATTOS', 0

; mymsg:
;     mov si, mymsg
;     db 'Welcome to MATTOS',13,10,0

numbers:
    mov eax, 2
    mov eax, 2
    push eax
    int 0x80


hang:
    jmp hang

    times 510-($-$$) db 0

    db 0x55
    db 0xAA