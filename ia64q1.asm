//
// bski -noconsole ./as -o ia64q.o ia64q.asm
// bski -noconsole ./ld -o ia64q ia64q.o -lc -dynamic-linker /lib/ld-linux-ia64.so.2
// bski -noconsole ./ia64q
//
// ia64q beta.alpha.gamma by alCoPaUL, HAsAsIN [NaCl], beth GviLLErMo [GIMO], Zelotes ni Isa [ZnI], 
// Brigada Ocho [b8]
// April 23-30 & May 04, 2026, NYC
//
.data
.align 8
.text
.global hello
.proc hello
hello:
alloc loc2 = ar.pfs, 0, 4, 4, 0
mov loc3 = gp
mov loc1 = b0
addl out0 = @ltoff(.STR3), gp
ld8 out0 = [out0]
addl out1 = @ltoff(.STR2), gp
ld8 out1 = [out1]
addl out2 = @ltoff(.STR2), gp
ld8 out2 = [out2]
addl out3 = @ltoff(.STR214), gp
ld8 out3 = [out3]
mov loc0 = gp
br.call.sptk.many b0 = printf
mov gp = loc3
mov ar.pfs = loc2
mov b0 = loc1
mov ret0 = 0
br.ret.sptk.many b0
.endp hello
.global printf
.type printf, @function
.STR3:
stringz "%s%s%s" //0x22 0x250x73 0x250x73 0x250x73 0x22
.STR214:
stringz 0x0A // \n
.STR2:
stringz "//0xa// bski -noconsole ./as -o ia64q.o ia64q.asm0xa// bski -noconsole ./ld -o ia64q ia64q.o -lc -dynamic-linker /lib/ld-linux-ia64.so.20xa// bski -noconsole ./ia64q0xa//0xa// ia64q beta.alpha.gamma by alCoPaUL, HAsAsIN [NaCl], beth GviLLErMo [GIMO], Zelotes ni Isa [ZnI],0xa // Brigada Ocho [b8]0xa// April 23-30 & May 04, 2026, NYC0xa//0xa.data0xa.align 80xa.text0xa.global hello0xa.proc hello0xahello:0xaalloc loc2 = ar.pfs, 0, 4, 4, 00xamov loc3 = gp0xamov loc1 = b00xaaddl out0 = @ltoff(.STR3), gp0xald8 out0 = [out0]0xaaddl out1 = @ltoff(.STR2), gp0xald8 out1 = [out1]0xaaddl out2 = @ltoff(.STR2), gp0xald8 out2 = [out2]0xaaddl out3 = @ltoff(.STR214), gp0xald8 out3 = [out3]0xamov loc0 = gp0xabr.call.sptk.many b0 = printf0xamov gp = loc30xamov ar.pfs = loc20xamov b0 = loc10xamov ret0 = 00xabr.ret.sptk.many b00xa.endp hello0xa.global printf0xa.type printf, @function0xa.STR3:0xastringz 0x22%s%s%s0x220xa.STR214:0xastringz 0x0A0xa.STR2:0xastringz 0x220x00"
