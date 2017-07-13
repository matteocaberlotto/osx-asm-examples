Hello world example for OSX:

thanks to:
http://peter.michaux.ca/articles/assembly-hello-world-for-os-x

this one uses mach-o file type

to compile:
nasm -f macho hello.asm && ld -o hello -e mystart hello.o