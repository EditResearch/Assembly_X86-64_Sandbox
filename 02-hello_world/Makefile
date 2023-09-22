
#win:
#	nasm -o win-nasm-64.o -fwin64 win_main.s && gcc -m64 win-nasm-64.o -o win-nasm-64.exe
#	./win-nasm-64.exe

win:
	nasm -o win.o -fwin64 win_main.s && gcc ./win.o -o win_main.exe &&./win_main.exe # ld ./win.o -lc -lmsys-2.0 -o win_main.exe	&& ./win_main.exe 


lin:
	nasm -o lin.o -felf64 lin_main.s && ld ./lin.o -o lin_main &&./lin_main


