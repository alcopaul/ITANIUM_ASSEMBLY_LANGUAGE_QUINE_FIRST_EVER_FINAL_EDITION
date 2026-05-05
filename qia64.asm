//
// bski -noconsole ./as -o qia64.o qia64.asm
// bski -noconsole ./ld -o qia64 qia64.o -lc -dynamic-linker /lib/ld-linux-ia64.so.2
// bski -noconsole ./qia64
//
// qia64 beta.alpha.gamma by alCoPaUL, HAsAsIN [NaCl], beth GviLLErMo [GIMO], Zelotes ni Isa [ZnI],
// Brigada Ocho [b8]
// April 23-30 & May 04, 2026, NYC
//
.section .rdata, "a", "progbits"
.align 8
.text
.global hello
.proc hello
hello:
alloc loc2 = ar.pfs, 0, 4, 5, 0
mov loc3 = gp
mov loc1 = b0
addl r14 = @ltoff(.STR2), gp
ld8 r14 = [r14]
addl r15 = @ltoff(.STR18), gp
ld8 r15 = [r15]
mov r16 = 1300
mov r17 = 0x5f
mov r18 = 0xa
oo:
ld1 r19 = [r14], 1
cmp.eq p1, p2 = r17, r19    
(p1) mov r19 = r18
(p2) nop 0
st1 [r15] = r19, 1
add r16 = -1, r16
cmp.gt p3, p4 = r16, r0
(p3) br.cond.sptk oo
addl out0 = @ltoff(.STR3), gp
ld8 out0 = [out0]
addl out1 = @ltoff(.STR18), gp
ld8 out1 = [out1]
addl out2 = @ltoff(.STR23), gp
ld8 out2 = [out2]
addl out3 = @ltoff(.STR2), gp
ld8 out3 = [out3]
addl out4 = @ltoff(.STR214), gp
ld8 out4 = [out4]
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
stringz "%s%s%s%s"
.STR23:
stringz "\""
.STR214:
stringz "\\0\"\n"
.STR18:
stringz ""
.skip 1300
.STR2:
stringz "//_// bski -noconsole ./as -o qia64.o qia64.asm_// bski -noconsole ./ld -o qia64 qia64.o -lc -dynamic-linker /lib/ld-linux-ia64.so.2_// bski -noconsole ./qia64_//_// qia64 beta.alpha.gamma by alCoPaUL, HAsAsIN [NaCl], beth GviLLErMo [GIMO], Zelotes ni Isa [ZnI],_// Brigada Ocho [b8]_// April 23-30 & May 04, 2026, NYC_//_.section .rdata, \x22\x61\x22, \x22progbits\x22_.align 8_.text_.global hello_.proc hello_hello:_alloc loc2 = ar.pfs, 0, 4, 5, 0_mov loc3 = gp_mov loc1 = b0_addl r14 = @ltoff(.STR2), gp_ld8 r14 = [r14]_addl r15 = @ltoff(.STR18), gp_ld8 r15 = [r15]_mov r16 = 1300_mov r17 = 0x5f_mov r18 = 0xa_oo:_ld1 r19 = [r14], 1_cmp.eq p1, p2 = r17, r19_(p1) mov r19 = r18_(p2) nop 0_st1 [r15] = r19, 1_add r16 = -1, r16_cmp.gt p3, p4 = r16, r0_(p3) br.cond.sptk oo_addl out0 = @ltoff(.STR3), gp_ld8 out0 = [out0]_addl out1 = @ltoff(.STR18), gp_ld8 out1 = [out1]_addl out2 = @ltoff(.STR23), gp_ld8 out2 = [out2]_addl out3 = @ltoff(.STR2), gp_ld8 out3 = [out3]_addl out4 = @ltoff(.STR214), gp_ld8 out4 = [out4]_mov loc0 = gp_br.call.sptk.many b0 = printf_mov gp = loc3_mov ar.pfs = loc2_mov b0 = loc1_mov ret0 = 0_br.ret.sptk.many b0_.endp hello_.global printf_.type printf, @function_.STR3:_stringz \x22%s%s%s%s\x22_.STR18:_stringz \x22\x5c\x22\x22_.STR214:_stringz \x22\x5c\x5c\x30\x5c\x22\x5c\x6e\x22_.STR18:_stringz \x22\x22_.skip 1300_.STR2:_stringz \0"

// \" = ~
// \\ = !

