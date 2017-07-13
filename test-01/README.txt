Osx nasm example

thanks to:
http://cs.lmu.edu/~ray/notes/x86assembly/

nasm: v2.x installed from brew

to compile:
nasm -fmacho64 hello.asm && gcc hello.o -o hello.out && ./hello.out

or simply run './make'