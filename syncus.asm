[ORG 0x7c00]
start:
  call main
  call BOI ;boot or interruption
main:
    mov ah, 0x0e ; teletype mode
    mov al, 'T' ; the char to displayed
    int 0x10 ; print the char
    mov al, 'e'
    int 0x10
    mov al, 's'
    int 0x10
    mov al, 't'
    int 0x10
BOI:
  jmp $
  times 510-($-$$) db 0
  db 0x55,0xAA
; to compile this use nasm and qemu or other to execute bin file
; the command to use in nasm: nasm syncus.asm -f bin -o syncus.bin
