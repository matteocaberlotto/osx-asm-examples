hello: hello.asm
	nasm -f macho hello.asm
	ld -o hello -e mystart hello.o

debug: hello.asm
	nasm -g -f macho -o hello_dbg.o hello.asm
	ld -o hello_dbg -e mystart hello_dbg.o

clean:
	rm hello.o hello hello_dbg.o hello_dbg