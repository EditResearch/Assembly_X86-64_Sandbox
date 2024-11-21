CC=nasm
LINK=ld

TARGET=lin_platform


build: main.asm
	$(CC) main.asm -felf64 -o main.o

link: build main.o
	$(LINK)  -e _start -s -I/usr/lib64/ld-linux-x86-64.so.2 -lc ./main.o -o $(TARGET)

.PHONY: build link

exec: build link
	./$(TARGET)


clean:
	rm -vf ./$(TARGET)
	rm -vf ./$(TARGET).o


