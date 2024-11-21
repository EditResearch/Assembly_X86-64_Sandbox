CC=nasm
LINK=ld.exe

TARGET=win_platform


build: main.asm
	$(CC) main.asm -fwin64 -o $(TARGET).o


link: build $(TARGET).o
	$(LINK) ./$(TARGET).o -e _start -o $(TARGET) -lkernel32 -lmsvcrt 


exec: link
	./$(TARGET)


clean:
	rm -vf ./$(TARGET)
	rm -vf ./$(TARGET).o


