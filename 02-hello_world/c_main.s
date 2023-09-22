
./c_main.exe:     file format pei-x86-64


Disassembly of section .text:

0000000100401000 <WinMainCRTStartup>:
   100401000:	48 83 ec 28          	sub    rsp,0x28
   100401004:	48 8d 0d 75 00 00 00 	lea    rcx,[rip+0x75]        # 100401080 <main>
   10040100b:	e8 d0 00 00 00       	call   1004010e0 <msys_crt0>
   100401010:	45 31 c0             	xor    r8d,r8d
   100401013:	31 d2                	xor    edx,edx
   100401015:	31 c9                	xor    ecx,ecx
   100401017:	e8 e4 00 00 00       	call   100401100 <cygwin_premain0>
   10040101c:	45 31 c0             	xor    r8d,r8d
   10040101f:	31 d2                	xor    edx,edx
   100401021:	31 c9                	xor    ecx,ecx
   100401023:	e8 e8 00 00 00       	call   100401110 <cygwin_premain1>
   100401028:	45 31 c0             	xor    r8d,r8d
   10040102b:	31 d2                	xor    edx,edx
   10040102d:	31 c9                	xor    ecx,ecx
   10040102f:	e8 ec 00 00 00       	call   100401120 <cygwin_premain2>
   100401034:	45 31 c0             	xor    r8d,r8d
   100401037:	31 d2                	xor    edx,edx
   100401039:	31 c9                	xor    ecx,ecx
   10040103b:	48 83 c4 28          	add    rsp,0x28
   10040103f:	e9 ec 00 00 00       	jmp    100401130 <cygwin_premain3>
   100401044:	90                   	nop
   100401045:	90                   	nop
   100401046:	90                   	nop
   100401047:	90                   	nop
   100401048:	90                   	nop
   100401049:	90                   	nop
   10040104a:	90                   	nop
   10040104b:	90                   	nop
   10040104c:	90                   	nop
   10040104d:	90                   	nop
   10040104e:	90                   	nop
   10040104f:	90                   	nop

0000000100401050 <__gcc_register_frame>:
   100401050:	4c 8d 05 a9 0f 00 00 	lea    r8,[rip+0xfa9]        # 100402000 <__data_start__>
   100401057:	31 d2                	xor    edx,edx
   100401059:	48 8d 0d 10 00 00 00 	lea    rcx,[rip+0x10]        # 100401070 <__gcc_deregister_frame>
   100401060:	e9 4b 00 00 00       	jmp    1004010b0 <__cxa_atexit>
   100401065:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   10040106c:	00 00 00 00 

0000000100401070 <__gcc_deregister_frame>:
   100401070:	c3                   	ret
   100401071:	90                   	nop
   100401072:	90                   	nop
   100401073:	90                   	nop
   100401074:	90                   	nop
   100401075:	90                   	nop
   100401076:	90                   	nop
   100401077:	90                   	nop
   100401078:	90                   	nop
   100401079:	90                   	nop
   10040107a:	90                   	nop
   10040107b:	90                   	nop
   10040107c:	90                   	nop
   10040107d:	90                   	nop
   10040107e:	90                   	nop
   10040107f:	90                   	nop

0000000100401080 <main>:
   100401080:	55                   	push   rbp
   100401081:	48 89 e5             	mov    rbp,rsp
   100401084:	48 83 ec 20          	sub    rsp,0x20
   100401088:	e8 33 00 00 00       	call   1004010c0 <__main>
   10040108d:	48 8d 05 6c 1f 00 00 	lea    rax,[rip+0x1f6c]        # 100403000 <msg>
   100401094:	48 89 c1             	mov    rcx,rax
   100401097:	e8 34 00 00 00       	call   1004010d0 <printf>
   10040109c:	b8 00 00 00 00       	mov    eax,0x0
   1004010a1:	48 83 c4 20          	add    rsp,0x20
   1004010a5:	5d                   	pop    rbp
   1004010a6:	c3                   	ret
   1004010a7:	90                   	nop
   1004010a8:	90                   	nop
   1004010a9:	90                   	nop
   1004010aa:	90                   	nop
   1004010ab:	90                   	nop
   1004010ac:	90                   	nop
   1004010ad:	90                   	nop
   1004010ae:	90                   	nop
   1004010af:	90                   	nop

00000001004010b0 <__cxa_atexit>:
   1004010b0:	ff 25 0a 70 00 00    	jmp    QWORD PTR [rip+0x700a]        # 1004080c0 <__IAT_start__>
   1004010b6:	90                   	nop
   1004010b7:	90                   	nop
   1004010b8:	90                   	nop
   1004010b9:	90                   	nop
   1004010ba:	90                   	nop
   1004010bb:	90                   	nop
   1004010bc:	90                   	nop
   1004010bd:	90                   	nop
   1004010be:	90                   	nop
   1004010bf:	90                   	nop

00000001004010c0 <__main>:
   1004010c0:	ff 25 02 70 00 00    	jmp    QWORD PTR [rip+0x7002]        # 1004080c8 <__imp___main>
   1004010c6:	90                   	nop
   1004010c7:	90                   	nop
   1004010c8:	90                   	nop
   1004010c9:	90                   	nop
   1004010ca:	90                   	nop
   1004010cb:	90                   	nop
   1004010cc:	90                   	nop
   1004010cd:	90                   	nop
   1004010ce:	90                   	nop
   1004010cf:	90                   	nop

00000001004010d0 <printf>:
   1004010d0:	ff 25 42 70 00 00    	jmp    QWORD PTR [rip+0x7042]        # 100408118 <__imp_printf>
   1004010d6:	90                   	nop
   1004010d7:	90                   	nop
   1004010d8:	90                   	nop
   1004010d9:	90                   	nop
   1004010da:	90                   	nop
   1004010db:	90                   	nop
   1004010dc:	90                   	nop
   1004010dd:	90                   	nop
   1004010de:	90                   	nop
   1004010df:	90                   	nop

00000001004010e0 <msys_crt0>:
   1004010e0:	48 83 ec 28          	sub    rsp,0x28
   1004010e4:	31 d2                	xor    edx,edx
   1004010e6:	e8 55 00 00 00       	call   100401140 <_msys_crt0_common>
   1004010eb:	ff 15 df 6f 00 00    	call   QWORD PTR [rip+0x6fdf]        # 1004080d0 <__imp__dll_crt0>
   1004010f1:	90                   	nop
   1004010f2:	90                   	nop
   1004010f3:	90                   	nop
   1004010f4:	90                   	nop
   1004010f5:	90                   	nop
   1004010f6:	90                   	nop
   1004010f7:	90                   	nop
   1004010f8:	90                   	nop
   1004010f9:	90                   	nop
   1004010fa:	90                   	nop
   1004010fb:	90                   	nop
   1004010fc:	90                   	nop
   1004010fd:	90                   	nop
   1004010fe:	90                   	nop
   1004010ff:	90                   	nop

0000000100401100 <cygwin_premain0>:
   100401100:	c3                   	ret
   100401101:	90                   	nop
   100401102:	90                   	nop
   100401103:	90                   	nop
   100401104:	90                   	nop
   100401105:	90                   	nop
   100401106:	90                   	nop
   100401107:	90                   	nop
   100401108:	90                   	nop
   100401109:	90                   	nop
   10040110a:	90                   	nop
   10040110b:	90                   	nop
   10040110c:	90                   	nop
   10040110d:	90                   	nop
   10040110e:	90                   	nop
   10040110f:	90                   	nop

0000000100401110 <cygwin_premain1>:
   100401110:	c3                   	ret
   100401111:	90                   	nop
   100401112:	90                   	nop
   100401113:	90                   	nop
   100401114:	90                   	nop
   100401115:	90                   	nop
   100401116:	90                   	nop
   100401117:	90                   	nop
   100401118:	90                   	nop
   100401119:	90                   	nop
   10040111a:	90                   	nop
   10040111b:	90                   	nop
   10040111c:	90                   	nop
   10040111d:	90                   	nop
   10040111e:	90                   	nop
   10040111f:	90                   	nop

0000000100401120 <cygwin_premain2>:
   100401120:	c3                   	ret
   100401121:	90                   	nop
   100401122:	90                   	nop
   100401123:	90                   	nop
   100401124:	90                   	nop
   100401125:	90                   	nop
   100401126:	90                   	nop
   100401127:	90                   	nop
   100401128:	90                   	nop
   100401129:	90                   	nop
   10040112a:	90                   	nop
   10040112b:	90                   	nop
   10040112c:	90                   	nop
   10040112d:	90                   	nop
   10040112e:	90                   	nop
   10040112f:	90                   	nop

0000000100401130 <cygwin_premain3>:
   100401130:	c3                   	ret
   100401131:	90                   	nop
   100401132:	90                   	nop
   100401133:	90                   	nop
   100401134:	90                   	nop
   100401135:	90                   	nop
   100401136:	90                   	nop
   100401137:	90                   	nop
   100401138:	90                   	nop
   100401139:	90                   	nop
   10040113a:	90                   	nop
   10040113b:	90                   	nop
   10040113c:	90                   	nop
   10040113d:	90                   	nop
   10040113e:	90                   	nop
   10040113f:	90                   	nop

0000000100401140 <_msys_crt0_common>:
   100401140:	56                   	push   rsi
   100401141:	53                   	push   rbx
   100401142:	48 83 ec 28          	sub    rsp,0x28
   100401146:	48 89 ce             	mov    rsi,rcx
   100401149:	48 89 d3             	mov    rbx,rdx
   10040114c:	b9 08 00 00 00       	mov    ecx,0x8
   100401151:	e8 aa 04 00 00       	call   100401600 <cygwin_internal>
   100401156:	48 85 db             	test   rbx,rbx
   100401159:	0f 84 11 02 00 00    	je     100401370 <_msys_crt0_common+0x230>
   10040115f:	48 ba 00 00 00 00 59 	movabs rdx,0x15900000000
   100401166:	01 00 00 
   100401169:	48 89 73 40          	mov    QWORD PTR [rbx+0x40],rsi
   10040116d:	48 8d 35 8c ff ff ff 	lea    rsi,[rip+0xffffffffffffff8c]        # 100401100 <cygwin_premain0>
   100401174:	48 8d 0d 45 05 00 00 	lea    rcx,[rip+0x545]        # 1004016c0 <__CTOR_LIST__>
   10040117b:	48 89 93 f0 00 00 00 	mov    QWORD PTR [rbx+0xf0],rdx
   100401182:	48 8d 15 4f 05 00 00 	lea    rdx,[rip+0x54f]        # 1004016d8 <__DTOR_LIST__>
   100401189:	48 89 53 50          	mov    QWORD PTR [rbx+0x50],rdx
   10040118d:	48 8b 15 44 6f 00 00 	mov    rdx,QWORD PTR [rip+0x6f44]        # 1004080d8 <__imp__impure_ptr>
   100401194:	48 89 b3 80 00 00 00 	mov    QWORD PTR [rbx+0x80],rsi
   10040119b:	48 8d 35 6e ff ff ff 	lea    rsi,[rip+0xffffffffffffff6e]        # 100401110 <cygwin_premain1>
   1004011a2:	48 89 4b 48          	mov    QWORD PTR [rbx+0x48],rcx
   1004011a6:	48 8d 0d 73 ff ff ff 	lea    rcx,[rip+0xffffffffffffff73]        # 100401120 <cygwin_premain2>
   1004011ad:	48 89 53 18          	mov    QWORD PTR [rbx+0x18],rdx
   1004011b1:	48 8d 15 48 5e 00 00 	lea    rdx,[rip+0x5e48]        # 100407000 <__bss_start__>
   1004011b8:	48 89 b3 88 00 00 00 	mov    QWORD PTR [rbx+0x88],rsi
   1004011bf:	48 8d 35 6a ff ff ff 	lea    rsi,[rip+0xffffffffffffff6a]        # 100401130 <cygwin_premain3>
   1004011c6:	48 89 8b 90 00 00 00 	mov    QWORD PTR [rbx+0x90],rcx
   1004011cd:	48 b9 48 01 00 00 bc 	movabs rcx,0xbbc00000148
   1004011d4:	0b 00 00 
   1004011d7:	48 89 b3 98 00 00 00 	mov    QWORD PTR [rbx+0x98],rsi
   1004011de:	48 8d 35 3b 04 00 00 	lea    rsi,[rip+0x43b]        # 100401620 <malloc>
   1004011e5:	48 89 53 38          	mov    QWORD PTR [rbx+0x38],rdx
   1004011e9:	48 8d 15 20 04 00 00 	lea    rdx,[rip+0x420]        # 100401610 <free>
   1004011f0:	48 89 4b 08          	mov    QWORD PTR [rbx+0x8],rcx
   1004011f4:	48 8d 0d 55 04 00 00 	lea    rcx,[rip+0x455]        # 100401650 <realloc>
   1004011fb:	48 89 73 20          	mov    QWORD PTR [rbx+0x20],rsi
   1004011ff:	48 8d 35 ea 03 00 00 	lea    rsi,[rip+0x3ea]        # 1004015f0 <calloc>
   100401206:	48 89 53 28          	mov    QWORD PTR [rbx+0x28],rdx
   10040120a:	48 8d 15 2f 04 00 00 	lea    rdx,[rip+0x42f]        # 100401640 <posix_memalign>
   100401211:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
   100401218:	c7 43 10 09 00 00 00 	mov    DWORD PTR [rbx+0x10],0x9
   10040121f:	48 89 4b 30          	mov    QWORD PTR [rbx+0x30],rcx
   100401223:	48 89 73 78          	mov    QWORD PTR [rbx+0x78],rsi
   100401227:	48 89 93 18 01 00 00 	mov    QWORD PTR [rbx+0x118],rdx
   10040122e:	48 85 c0             	test   rax,rax
   100401231:	0f 84 bd 00 00 00    	je     1004012f4 <_msys_crt0_common+0x1b4>
   100401237:	48 8b 80 e0 00 00 00 	mov    rax,QWORD PTR [rax+0xe0]
   10040123e:	48 85 c0             	test   rax,rax
   100401241:	0f 84 ad 00 00 00    	je     1004012f4 <_msys_crt0_common+0x1b4>
   100401247:	8b 15 c3 5d 00 00    	mov    edx,DWORD PTR [rip+0x5dc3]        # 100407010 <__dynamically_loaded>
   10040124d:	85 d2                	test   edx,edx
   10040124f:	0f 85 9f 00 00 00    	jne    1004012f4 <_msys_crt0_common+0x1b4>
   100401255:	48 83 3d c3 0d 00 00 	cmp    QWORD PTR [rip+0xdc3],0x0        # 100402020 <__cygwin_cxx_malloc>
   10040125c:	00 
   10040125d:	0f 84 0d 02 00 00    	je     100401470 <_msys_crt0_common+0x330>
   100401263:	48 83 3d bd 0d 00 00 	cmp    QWORD PTR [rip+0xdbd],0x0        # 100402028 <__cygwin_cxx_malloc+0x8>
   10040126a:	00 
   10040126b:	0f 84 6f 02 00 00    	je     1004014e0 <_msys_crt0_common+0x3a0>
   100401271:	48 83 3d b7 0d 00 00 	cmp    QWORD PTR [rip+0xdb7],0x0        # 100402030 <__cygwin_cxx_malloc+0x10>
   100401278:	00 
   100401279:	0f 84 51 02 00 00    	je     1004014d0 <_msys_crt0_common+0x390>
   10040127f:	48 83 3d b1 0d 00 00 	cmp    QWORD PTR [rip+0xdb1],0x0        # 100402038 <__cygwin_cxx_malloc+0x18>
   100401286:	00 
   100401287:	0f 84 33 02 00 00    	je     1004014c0 <_msys_crt0_common+0x380>
   10040128d:	48 83 3d ab 0d 00 00 	cmp    QWORD PTR [rip+0xdab],0x0        # 100402040 <__cygwin_cxx_malloc+0x20>
   100401294:	00 
   100401295:	0f 84 15 02 00 00    	je     1004014b0 <_msys_crt0_common+0x370>
   10040129b:	48 83 3d a5 0d 00 00 	cmp    QWORD PTR [rip+0xda5],0x0        # 100402048 <__cygwin_cxx_malloc+0x28>
   1004012a2:	00 
   1004012a3:	0f 84 f7 01 00 00    	je     1004014a0 <_msys_crt0_common+0x360>
   1004012a9:	48 83 3d 9f 0d 00 00 	cmp    QWORD PTR [rip+0xd9f],0x0        # 100402050 <__cygwin_cxx_malloc+0x30>
   1004012b0:	00 
   1004012b1:	0f 84 d9 01 00 00    	je     100401490 <_msys_crt0_common+0x350>
   1004012b7:	48 83 3d 99 0d 00 00 	cmp    QWORD PTR [rip+0xd99],0x0        # 100402058 <__cygwin_cxx_malloc+0x38>
   1004012be:	00 
   1004012bf:	0f 84 bb 01 00 00    	je     100401480 <_msys_crt0_common+0x340>
   1004012c5:	66 0f 6f 05 53 0d 00 	movdqa xmm0,XMMWORD PTR [rip+0xd53]        # 100402020 <__cygwin_cxx_malloc>
   1004012cc:	00 
   1004012cd:	0f 11 00             	movups XMMWORD PTR [rax],xmm0
   1004012d0:	66 0f 6f 0d 58 0d 00 	movdqa xmm1,XMMWORD PTR [rip+0xd58]        # 100402030 <__cygwin_cxx_malloc+0x10>
   1004012d7:	00 
   1004012d8:	0f 11 48 10          	movups XMMWORD PTR [rax+0x10],xmm1
   1004012dc:	66 0f 6f 15 5c 0d 00 	movdqa xmm2,XMMWORD PTR [rip+0xd5c]        # 100402040 <__cygwin_cxx_malloc+0x20>
   1004012e3:	00 
   1004012e4:	0f 11 50 20          	movups XMMWORD PTR [rax+0x20],xmm2
   1004012e8:	66 0f 6f 1d 60 0d 00 	movdqa xmm3,XMMWORD PTR [rip+0xd60]        # 100402050 <__cygwin_cxx_malloc+0x30>
   1004012ef:	00 
   1004012f0:	0f 11 58 30          	movups XMMWORD PTR [rax+0x30],xmm3
   1004012f4:	31 c9                	xor    ecx,ecx
   1004012f6:	e8 a5 03 00 00       	call   1004016a0 <GetModuleHandleA>
   1004012fb:	31 c9                	xor    ecx,ecx
   1004012fd:	48 89 83 e8 00 00 00 	mov    QWORD PTR [rbx+0xe8],rax
   100401304:	48 8d 05 f5 0c 00 00 	lea    rax,[rip+0xcf5]        # 100402000 <__data_start__>
   10040130b:	48 89 43 58          	mov    QWORD PTR [rbx+0x58],rax
   10040130f:	48 8d 05 4a 0d 00 00 	lea    rax,[rip+0xd4a]        # 100402060 <__data_end__>
   100401316:	48 89 43 60          	mov    QWORD PTR [rbx+0x60],rax
   10040131a:	48 8d 05 df 5c 00 00 	lea    rax,[rip+0x5cdf]        # 100407000 <__bss_start__>
   100401321:	48 89 43 68          	mov    QWORD PTR [rbx+0x68],rax
   100401325:	48 8d 05 94 5e 00 00 	lea    rax,[rip+0x5e94]        # 1004071c0 <__bss_end__>
   10040132c:	48 89 43 70          	mov    QWORD PTR [rbx+0x70],rax
   100401330:	48 8d 05 b9 1e 00 00 	lea    rax,[rip+0x1eb9]        # 1004031f0 <__RUNTIME_PSEUDO_RELOC_LIST_END__>
   100401337:	48 89 83 20 01 00 00 	mov    QWORD PTR [rbx+0x120],rax
   10040133e:	48 8d 05 ab 1e 00 00 	lea    rax,[rip+0x1eab]        # 1004031f0 <__RUNTIME_PSEUDO_RELOC_LIST_END__>
   100401345:	48 89 83 28 01 00 00 	mov    QWORD PTR [rbx+0x128],rax
   10040134c:	48 8d 05 ad ec ff ff 	lea    rax,[rip+0xffffffffffffecad]        # 100400000 <__size_of_stack_reserve__+0x100200000>
   100401353:	48 89 83 30 01 00 00 	mov    QWORD PTR [rbx+0x130],rax
   10040135a:	e8 81 02 00 00       	call   1004015e0 <_pei386_runtime_relocator>
   10040135f:	b8 01 00 00 00       	mov    eax,0x1
   100401364:	48 83 c4 28          	add    rsp,0x28
   100401368:	5b                   	pop    rbx
   100401369:	5e                   	pop    rsi
   10040136a:	c3                   	ret
   10040136b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   100401370:	48 89 70 40          	mov    QWORD PTR [rax+0x40],rsi
   100401374:	48 8d 35 85 fd ff ff 	lea    rsi,[rip+0xfffffffffffffd85]        # 100401100 <cygwin_premain0>
   10040137b:	48 ba 00 00 00 00 59 	movabs rdx,0x15900000000
   100401382:	01 00 00 
   100401385:	48 8d 0d 4c 03 00 00 	lea    rcx,[rip+0x34c]        # 1004016d8 <__DTOR_LIST__>
   10040138c:	48 89 b0 80 00 00 00 	mov    QWORD PTR [rax+0x80],rsi
   100401393:	48 8d 35 76 fd ff ff 	lea    rsi,[rip+0xfffffffffffffd76]        # 100401110 <cygwin_premain1>
   10040139a:	48 89 90 f0 00 00 00 	mov    QWORD PTR [rax+0xf0],rdx
   1004013a1:	48 8d 15 18 03 00 00 	lea    rdx,[rip+0x318]        # 1004016c0 <__CTOR_LIST__>
   1004013a8:	48 89 b0 88 00 00 00 	mov    QWORD PTR [rax+0x88],rsi
   1004013af:	48 8d 35 6a fd ff ff 	lea    rsi,[rip+0xfffffffffffffd6a]        # 100401120 <cygwin_premain2>
   1004013b6:	48 89 50 48          	mov    QWORD PTR [rax+0x48],rdx
   1004013ba:	48 8b 15 17 6d 00 00 	mov    rdx,QWORD PTR [rip+0x6d17]        # 1004080d8 <__imp__impure_ptr>
   1004013c1:	48 89 48 50          	mov    QWORD PTR [rax+0x50],rcx
   1004013c5:	48 8b 88 40 01 00 00 	mov    rcx,QWORD PTR [rax+0x140]
   1004013cc:	48 89 b0 90 00 00 00 	mov    QWORD PTR [rax+0x90],rsi
   1004013d3:	48 8d 35 56 fd ff ff 	lea    rsi,[rip+0xfffffffffffffd56]        # 100401130 <cygwin_premain3>
   1004013da:	48 89 b0 98 00 00 00 	mov    QWORD PTR [rax+0x98],rsi
   1004013e1:	48 8d 35 18 5c 00 00 	lea    rsi,[rip+0x5c18]        # 100407000 <__bss_start__>
   1004013e8:	48 89 0a             	mov    QWORD PTR [rdx],rcx
   1004013eb:	48 8d 15 2e 02 00 00 	lea    rdx,[rip+0x22e]        # 100401620 <malloc>
   1004013f2:	48 8d 0d 17 02 00 00 	lea    rcx,[rip+0x217]        # 100401610 <free>
   1004013f9:	48 89 70 38          	mov    QWORD PTR [rax+0x38],rsi
   1004013fd:	48 be 48 01 00 00 bc 	movabs rsi,0xbbc00000148
   100401404:	0b 00 00 
   100401407:	48 89 70 08          	mov    QWORD PTR [rax+0x8],rsi
   10040140b:	48 8d 35 3e 02 00 00 	lea    rsi,[rip+0x23e]        # 100401650 <realloc>
   100401412:	48 89 50 20          	mov    QWORD PTR [rax+0x20],rdx
   100401416:	48 8d 15 d3 01 00 00 	lea    rdx,[rip+0x1d3]        # 1004015f0 <calloc>
   10040141d:	48 89 48 28          	mov    QWORD PTR [rax+0x28],rcx
   100401421:	48 8d 0d 18 02 00 00 	lea    rcx,[rip+0x218]        # 100401640 <posix_memalign>
   100401428:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
   10040142f:	c7 40 10 09 00 00 00 	mov    DWORD PTR [rax+0x10],0x9
   100401436:	48 89 70 30          	mov    QWORD PTR [rax+0x30],rsi
   10040143a:	48 89 50 78          	mov    QWORD PTR [rax+0x78],rdx
   10040143e:	48 89 88 18 01 00 00 	mov    QWORD PTR [rax+0x118],rcx
   100401445:	48 85 c0             	test   rax,rax
   100401448:	0f 84 a6 fe ff ff    	je     1004012f4 <_msys_crt0_common+0x1b4>
   10040144e:	48 89 c3             	mov    rbx,rax
   100401451:	48 8b 80 e0 00 00 00 	mov    rax,QWORD PTR [rax+0xe0]
   100401458:	48 85 c0             	test   rax,rax
   10040145b:	0f 85 e6 fd ff ff    	jne    100401247 <_msys_crt0_common+0x107>
   100401461:	e9 8e fe ff ff       	jmp    1004012f4 <_msys_crt0_common+0x1b4>
   100401466:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
   10040146d:	00 00 00 
   100401470:	48 8b 10             	mov    rdx,QWORD PTR [rax]
   100401473:	48 89 15 a6 0b 00 00 	mov    QWORD PTR [rip+0xba6],rdx        # 100402020 <__cygwin_cxx_malloc>
   10040147a:	e9 e4 fd ff ff       	jmp    100401263 <_msys_crt0_common+0x123>
   10040147f:	90                   	nop
   100401480:	48 8b 50 38          	mov    rdx,QWORD PTR [rax+0x38]
   100401484:	48 89 15 cd 0b 00 00 	mov    QWORD PTR [rip+0xbcd],rdx        # 100402058 <__cygwin_cxx_malloc+0x38>
   10040148b:	e9 35 fe ff ff       	jmp    1004012c5 <_msys_crt0_common+0x185>
   100401490:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
   100401494:	48 89 15 b5 0b 00 00 	mov    QWORD PTR [rip+0xbb5],rdx        # 100402050 <__cygwin_cxx_malloc+0x30>
   10040149b:	e9 17 fe ff ff       	jmp    1004012b7 <_msys_crt0_common+0x177>
   1004014a0:	48 8b 50 28          	mov    rdx,QWORD PTR [rax+0x28]
   1004014a4:	48 89 15 9d 0b 00 00 	mov    QWORD PTR [rip+0xb9d],rdx        # 100402048 <__cygwin_cxx_malloc+0x28>
   1004014ab:	e9 f9 fd ff ff       	jmp    1004012a9 <_msys_crt0_common+0x169>
   1004014b0:	48 8b 50 20          	mov    rdx,QWORD PTR [rax+0x20]
   1004014b4:	48 89 15 85 0b 00 00 	mov    QWORD PTR [rip+0xb85],rdx        # 100402040 <__cygwin_cxx_malloc+0x20>
   1004014bb:	e9 db fd ff ff       	jmp    10040129b <_msys_crt0_common+0x15b>
   1004014c0:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
   1004014c4:	48 89 15 6d 0b 00 00 	mov    QWORD PTR [rip+0xb6d],rdx        # 100402038 <__cygwin_cxx_malloc+0x18>
   1004014cb:	e9 bd fd ff ff       	jmp    10040128d <_msys_crt0_common+0x14d>
   1004014d0:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
   1004014d4:	48 89 15 55 0b 00 00 	mov    QWORD PTR [rip+0xb55],rdx        # 100402030 <__cygwin_cxx_malloc+0x10>
   1004014db:	e9 9f fd ff ff       	jmp    10040127f <_msys_crt0_common+0x13f>
   1004014e0:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
   1004014e4:	48 89 15 3d 0b 00 00 	mov    QWORD PTR [rip+0xb3d],rdx        # 100402028 <__cygwin_cxx_malloc+0x8>
   1004014eb:	e9 81 fd ff ff       	jmp    100401271 <_msys_crt0_common+0x131>

00000001004014f0 <__dllMain>:
   1004014f0:	4c 8b 05 29 5b 00 00 	mov    r8,QWORD PTR [rip+0x5b29]        # 100407020 <storedPtr>
   1004014f7:	8b 15 2b 5b 00 00    	mov    edx,DWORD PTR [rip+0x5b2b]        # 100407028 <storedReason>
   1004014fd:	48 8b 0d 2c 5b 00 00 	mov    rcx,QWORD PTR [rip+0x5b2c]        # 100407030 <storedHandle>
   100401504:	e9 c7 00 00 00       	jmp    1004015d0 <DllMain>
   100401509:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000100401510 <_msys_dll_entry>:
   100401510:	48 83 ec 38          	sub    rsp,0x38
   100401514:	83 fa 02             	cmp    edx,0x2
   100401517:	74 77                	je     100401590 <_msys_dll_entry+0x80>
   100401519:	77 55                	ja     100401570 <_msys_dll_entry+0x60>
   10040151b:	85 d2                	test   edx,edx
   10040151d:	0f 84 7d 00 00 00    	je     1004015a0 <_msys_dll_entry+0x90>
   100401523:	31 c0                	xor    eax,eax
   100401525:	4d 85 c0             	test   r8,r8
   100401528:	48 8d 15 c1 ff ff ff 	lea    rdx,[rip+0xffffffffffffffc1]        # 1004014f0 <__dllMain>
   10040152f:	48 89 0d fa 5a 00 00 	mov    QWORD PTR [rip+0x5afa],rcx        # 100407030 <storedHandle>
   100401536:	0f 94 c0             	sete   al
   100401539:	4c 89 05 e0 5a 00 00 	mov    QWORD PTR [rip+0x5ae0],r8        # 100407020 <storedPtr>
   100401540:	c7 05 de 5a 00 00 01 	mov    DWORD PTR [rip+0x5ade],0x1        # 100407028 <storedReason>
   100401547:	00 00 00 
   10040154a:	89 05 c0 5a 00 00    	mov    DWORD PTR [rip+0x5ac0],eax        # 100407010 <__dynamically_loaded>
   100401550:	e8 0b 01 00 00       	call   100401660 <msys_attach_dll>
   100401555:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
   100401559:	48 89 05 b8 5a 00 00 	mov    QWORD PTR [rip+0x5ab8],rax        # 100407018 <dll_index>
   100401560:	0f 95 c0             	setne  al
   100401563:	0f b6 c0             	movzx  eax,al
   100401566:	48 83 c4 38          	add    rsp,0x38
   10040156a:	c3                   	ret
   10040156b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   100401570:	b8 01 00 00 00       	mov    eax,0x1
   100401575:	83 fa 03             	cmp    edx,0x3
   100401578:	75 ec                	jne    100401566 <_msys_dll_entry+0x56>
   10040157a:	ba 03 00 00 00       	mov    edx,0x3
   10040157f:	48 83 c4 38          	add    rsp,0x38
   100401583:	e9 48 00 00 00       	jmp    1004015d0 <DllMain>
   100401588:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   10040158f:	00 
   100401590:	ba 02 00 00 00       	mov    edx,0x2
   100401595:	48 83 c4 38          	add    rsp,0x38
   100401599:	e9 32 00 00 00       	jmp    1004015d0 <DllMain>
   10040159e:	66 90                	xchg   ax,ax
   1004015a0:	31 d2                	xor    edx,edx
   1004015a2:	e8 29 00 00 00       	call   1004015d0 <DllMain>
   1004015a7:	85 c0                	test   eax,eax
   1004015a9:	74 bb                	je     100401566 <_msys_dll_entry+0x56>
   1004015ab:	48 8b 0d 66 5a 00 00 	mov    rcx,QWORD PTR [rip+0x5a66]        # 100407018 <dll_index>
   1004015b2:	89 44 24 2c          	mov    DWORD PTR [rsp+0x2c],eax
   1004015b6:	e8 75 00 00 00       	call   100401630 <msys_detach_dll>
   1004015bb:	8b 44 24 2c          	mov    eax,DWORD PTR [rsp+0x2c]
   1004015bf:	48 c7 05 4e 5a 00 00 	mov    QWORD PTR [rip+0x5a4e],0xffffffffffffffff        # 100407018 <dll_index>
   1004015c6:	ff ff ff ff 
   1004015ca:	eb 9a                	jmp    100401566 <_msys_dll_entry+0x56>
   1004015cc:	90                   	nop
   1004015cd:	90                   	nop
   1004015ce:	90                   	nop
   1004015cf:	90                   	nop

00000001004015d0 <DllMain>:
   1004015d0:	b8 01 00 00 00       	mov    eax,0x1
   1004015d5:	c3                   	ret
   1004015d6:	90                   	nop
   1004015d7:	90                   	nop
   1004015d8:	90                   	nop
   1004015d9:	90                   	nop
   1004015da:	90                   	nop
   1004015db:	90                   	nop
   1004015dc:	90                   	nop
   1004015dd:	90                   	nop
   1004015de:	90                   	nop
   1004015df:	90                   	nop

00000001004015e0 <_pei386_runtime_relocator>:
   1004015e0:	c3                   	ret
   1004015e1:	90                   	nop
   1004015e2:	90                   	nop
   1004015e3:	90                   	nop
   1004015e4:	90                   	nop
   1004015e5:	90                   	nop
   1004015e6:	90                   	nop
   1004015e7:	90                   	nop
   1004015e8:	90                   	nop
   1004015e9:	90                   	nop
   1004015ea:	90                   	nop
   1004015eb:	90                   	nop
   1004015ec:	90                   	nop
   1004015ed:	90                   	nop
   1004015ee:	90                   	nop
   1004015ef:	90                   	nop

00000001004015f0 <calloc>:
   1004015f0:	ff 25 ea 6a 00 00    	jmp    QWORD PTR [rip+0x6aea]        # 1004080e0 <__imp_calloc>
   1004015f6:	90                   	nop
   1004015f7:	90                   	nop
   1004015f8:	90                   	nop
   1004015f9:	90                   	nop
   1004015fa:	90                   	nop
   1004015fb:	90                   	nop
   1004015fc:	90                   	nop
   1004015fd:	90                   	nop
   1004015fe:	90                   	nop
   1004015ff:	90                   	nop

0000000100401600 <cygwin_internal>:
   100401600:	ff 25 e2 6a 00 00    	jmp    QWORD PTR [rip+0x6ae2]        # 1004080e8 <__imp_cygwin_internal>
   100401606:	90                   	nop
   100401607:	90                   	nop
   100401608:	90                   	nop
   100401609:	90                   	nop
   10040160a:	90                   	nop
   10040160b:	90                   	nop
   10040160c:	90                   	nop
   10040160d:	90                   	nop
   10040160e:	90                   	nop
   10040160f:	90                   	nop

0000000100401610 <free>:
   100401610:	ff 25 e2 6a 00 00    	jmp    QWORD PTR [rip+0x6ae2]        # 1004080f8 <__imp_free>
   100401616:	90                   	nop
   100401617:	90                   	nop
   100401618:	90                   	nop
   100401619:	90                   	nop
   10040161a:	90                   	nop
   10040161b:	90                   	nop
   10040161c:	90                   	nop
   10040161d:	90                   	nop
   10040161e:	90                   	nop
   10040161f:	90                   	nop

0000000100401620 <malloc>:
   100401620:	ff 25 da 6a 00 00    	jmp    QWORD PTR [rip+0x6ada]        # 100408100 <__imp_malloc>
   100401626:	90                   	nop
   100401627:	90                   	nop
   100401628:	90                   	nop
   100401629:	90                   	nop
   10040162a:	90                   	nop
   10040162b:	90                   	nop
   10040162c:	90                   	nop
   10040162d:	90                   	nop
   10040162e:	90                   	nop
   10040162f:	90                   	nop

0000000100401630 <msys_detach_dll>:
   100401630:	ff 25 d2 6a 00 00    	jmp    QWORD PTR [rip+0x6ad2]        # 100408108 <__imp_msys_detach_dll>
   100401636:	90                   	nop
   100401637:	90                   	nop
   100401638:	90                   	nop
   100401639:	90                   	nop
   10040163a:	90                   	nop
   10040163b:	90                   	nop
   10040163c:	90                   	nop
   10040163d:	90                   	nop
   10040163e:	90                   	nop
   10040163f:	90                   	nop

0000000100401640 <posix_memalign>:
   100401640:	ff 25 ca 6a 00 00    	jmp    QWORD PTR [rip+0x6aca]        # 100408110 <__imp_posix_memalign>
   100401646:	90                   	nop
   100401647:	90                   	nop
   100401648:	90                   	nop
   100401649:	90                   	nop
   10040164a:	90                   	nop
   10040164b:	90                   	nop
   10040164c:	90                   	nop
   10040164d:	90                   	nop
   10040164e:	90                   	nop
   10040164f:	90                   	nop

0000000100401650 <realloc>:
   100401650:	ff 25 ca 6a 00 00    	jmp    QWORD PTR [rip+0x6aca]        # 100408120 <__imp_realloc>
   100401656:	90                   	nop
   100401657:	90                   	nop
   100401658:	90                   	nop
   100401659:	90                   	nop
   10040165a:	90                   	nop
   10040165b:	90                   	nop
   10040165c:	90                   	nop
   10040165d:	90                   	nop
   10040165e:	90                   	nop
   10040165f:	90                   	nop

0000000100401660 <msys_attach_dll>:
   100401660:	41 55                	push   r13
   100401662:	41 54                	push   r12
   100401664:	48 83 ec 28          	sub    rsp,0x28
   100401668:	4c 8d 2d d1 59 00 00 	lea    r13,[rip+0x59d1]        # 100407040 <u.0>
   10040166f:	49 89 cc             	mov    r12,rcx
   100401672:	48 89 d1             	mov    rcx,rdx
   100401675:	4c 89 ea             	mov    rdx,r13
   100401678:	e8 c3 fa ff ff       	call   100401140 <_msys_crt0_common>
   10040167d:	4c 89 ea             	mov    rdx,r13
   100401680:	4c 89 e1             	mov    rcx,r12
   100401683:	48 83 c4 28          	add    rsp,0x28
   100401687:	41 5c                	pop    r12
   100401689:	41 5d                	pop    r13
   10040168b:	e9 00 00 00 00       	jmp    100401690 <dll_dllcrt0>

0000000100401690 <dll_dllcrt0>:
   100401690:	ff 25 5a 6a 00 00    	jmp    QWORD PTR [rip+0x6a5a]        # 1004080f0 <__imp_dll_dllcrt0>
   100401696:	90                   	nop
   100401697:	90                   	nop
   100401698:	90                   	nop
   100401699:	90                   	nop
   10040169a:	90                   	nop
   10040169b:	90                   	nop
   10040169c:	90                   	nop
   10040169d:	90                   	nop
   10040169e:	90                   	nop
   10040169f:	90                   	nop

00000001004016a0 <GetModuleHandleA>:
   1004016a0:	ff 25 8a 6a 00 00    	jmp    QWORD PTR [rip+0x6a8a]        # 100408130 <__imp_GetModuleHandleA>
   1004016a6:	90                   	nop
   1004016a7:	90                   	nop
   1004016a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1004016af:	00 

00000001004016b0 <register_frame_ctor>:
   1004016b0:	e9 9b f9 ff ff       	jmp    100401050 <__gcc_register_frame>
   1004016b5:	90                   	nop
   1004016b6:	90                   	nop
   1004016b7:	90                   	nop
   1004016b8:	90                   	nop
   1004016b9:	90                   	nop
   1004016ba:	90                   	nop
   1004016bb:	90                   	nop
   1004016bc:	90                   	nop
   1004016bd:	90                   	nop
   1004016be:	90                   	nop
   1004016bf:	90                   	nop

00000001004016c0 <__CTOR_LIST__>:
   1004016c0:	ff                   	(bad)
   1004016c1:	ff                   	(bad)
   1004016c2:	ff                   	(bad)
   1004016c3:	ff                   	(bad)
   1004016c4:	ff                   	(bad)
   1004016c5:	ff                   	(bad)
   1004016c6:	ff                   	(bad)
   1004016c7:	ff                   	.byte 0xff

00000001004016c8 <.ctors.65535>:
   1004016c8:	b0 16                	mov    al,0x16
   1004016ca:	40 00 01             	rex add BYTE PTR [rcx],al
	...

00000001004016d8 <__DTOR_LIST__>:
   1004016d8:	ff                   	(bad)
   1004016d9:	ff                   	(bad)
   1004016da:	ff                   	(bad)
   1004016db:	ff                   	(bad)
   1004016dc:	ff                   	(bad)
   1004016dd:	ff                   	(bad)
   1004016de:	ff                   	(bad)
   1004016df:	ff 00                	inc    DWORD PTR [rax]
   1004016e1:	00 00                	add    BYTE PTR [rax],al
   1004016e3:	00 00                	add    BYTE PTR [rax],al
   1004016e5:	00 00                	add    BYTE PTR [rax],al
	...
