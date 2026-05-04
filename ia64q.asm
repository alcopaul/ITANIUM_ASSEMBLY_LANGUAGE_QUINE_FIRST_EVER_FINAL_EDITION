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
stringz "//\n// bski -noconsole ./as -o ia64q.o ia64q.asm\n// bski -noconsole ./ld -o ia64q ia64q.o -lc -dynamic-linker /lib/ld-linux-ia64.so.2\n// bski -noconsole ./ia64q\n//\n// ia64q beta.alpha.gamma by alCoPaUL, HAsAsIN [NaCl], beth GviLLErMo [GIMO], Zelotes ni Isa [ZnI],\n // Brigada Ocho [b8]\n// April 23-30 & May 04, 2026, NYC\n//\n.data\n.align 8\n.text\n.global hello\n.proc hello\nhello:\nalloc loc2 = ar.pfs, 0, 4, 4, 0\nmov loc3 = gp\nmov loc1 = b0\naddl out0 = @ltoff(.STR3), gp\nld8 out0 = [out0]\naddl out1 = @ltoff(.STR2), gp\nld8 out1 = [out1]\naddl out2 = @ltoff(.STR2), gp\nld8 out2 = [out2]\naddl out3 = @ltoff(.STR214), gp\nld8 out3 = [out3]\nmov loc0 = gp\nbr.call.sptk.many b0 = printf\nmov gp = loc3\nmov ar.pfs = loc2\nmov b0 = loc1\nmov ret0 = 0\nbr.ret.sptk.many b0\n.endp hello\n.global printf\n.type printf, @function\n.STR3:\nstringz \"%s%s%s\"\n.STR214:\nstringz 0x0A\n.STR2:\nstringz \"\0"
