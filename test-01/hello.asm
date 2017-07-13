; ----------------------------------------------------------------------------------------
; This is an OSX console program that writes "Hello world" on one line and then exits.  It
; uses puts from the C library.  To assemble and run:
;
;     nasm -fmacho64 hello.asm && gcc hello.o -o hello.out && ./hello.out
; ----------------------------------------------------------------------------------------

        global  _main
        extern  _puts
        section .text
        ;default rel
_main:
        push    rbp                             ; Save rbp because changed in puts
        lea     rdi, [rel message]              ; First argument is address of message
        call    _puts                           ; puts(message)
        pop     rbp
        ret
message:
        db      'Hello, world!', 0                ; C strings need a zero byte at the end
