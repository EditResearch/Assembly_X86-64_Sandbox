CC=nasm
LINK=ld

TARGET=win_platform


build: main.asm
	$(CC) main.asm -fwin64 -o $(TARGET).o


link: $(TARGET).o
	$(LINK) ./$(TARGET).o -e _start -o $(TARGET) -lkernel32 -lmsvcrt 


exec: build link
	./$(TARGET)


clean:
	rm -vf ./$(TARGET)
	rm -vf ./$(TARGET).o


