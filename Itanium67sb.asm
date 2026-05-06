//
// bski -noconsole ./as -o Itanium67sb.o Itanium67sb.asm -xexplicit
// bski -noconsole ./ld -o Itanium67sb Itanium67sb.o -lc -dynamic-linker /lib/ld-linux-ia64.so.2
// bski -noconsole ./Itanium67sb
//
// Itanium67sb by alCoPaUL, HAsAsIN [NaCl], beth GviLLErMo [GIMO], Zelotes ni Isa [ZnI],
// Brigada Ocho [b8]
//
// April 23-30 + May 04-06, 2026, NYC
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
;;
ld8 r14 = [r14]
addl r15 = @ltoff(.STR18), gp
;;
ld8 r15 = [r15]
mov r16 = 1898
mov r17 = 0x5f
mov r18 = 0xa
mov r20 = 0x7e
mov r21 = 0x22
mov r22 = 0x26
mov r23 = 0x5c
mov r24 = 0x2a
mov r25 = 0x6e
mov r26 = 0x21
mov r27 = 0x30
mov r28 = 0x24
mov r29 = 0x61
oo:
ld1 r19 = [r14], 1
;;
cmp.eq p1, p2 = r17, r19
;;
(p1) mov r19 = r18
(p2) nop 0
;;
cmp.eq p5, p6 = r20, r19
;;
(p5) mov r19 = r21
(p6) nop 0
;;
cmp.eq p7, p8 = r22, r19
;;
(p7) mov r19 = r23
(p8) nop 0
;;
cmp.eq p9, p10 = r24, r19
;;
(p9) mov r19 = r25
(p10) nop 0
;;
cmp.eq p11, p12 = r26, r19
;;
(p11) mov r19 = r27
(p12) nop 0
;;
cmp.eq p13, p14 = r28, r19
;;
(p13) mov r19 = r29
(p14) nop 0
;;
st1 [r15] = r19, 1
add r16 = -1, r16
;;
cmp.gt p3, p4 = r16, r0
(p3) br.cond.sptk oo
addl out0 = @ltoff(.STR3), gp
;;
ld8 out0 = [out0]
addl out1 = @ltoff(.STR18), gp
;;
ld8 out1 = [out1]
addl out2 = @ltoff(.STR23), gp
;;
ld8 out2 = [out2]
addl out3 = @ltoff(.STR2), gp
;;
ld8 out3 = [out3]
addl out4 = @ltoff(.STR214), gp
;;
ld8 out4 = [out4]
mov loc0 = gp
br.call.sptk.many b0 = printf
;;
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
.skip 1898
.STR2:
stringz "//_// bski -noconsole ./as -o Itanium67sb.o Itanium67sb.asm -xexplicit_// bski -noconsole ./ld -o Itanium67sb Itanium67sb.o -lc -dynamic-linker /lib/ld-linux-ia64.so.2_// bski -noconsole ./Itanium67sb_//_// Itanium67sb by alCoPaUL, HAsAsIN [NaCl], beth GviLLErMo [GIMO], Zelotes ni Isa [ZnI],_// Brigada Ocho [b8]_//_// April 23-30 + May 04-06, 2026, NYC_//_.section .rdata, ~$~, ~progbits~_.align 8_.text_.global hello_.proc hello_hello:_alloc loc2 = ar.pfs, 0, 4, 5, 0_mov loc3 = gp_mov loc1 = b0_addl r14 = @ltoff(.STR2), gp_;;_ld8 r14 = [r14]_addl r15 = @ltoff(.STR18), gp_;;_ld8 r15 = [r15]_mov r16 = 1898_mov r17 = 0x5f_mov r18 = 0xa_mov r20 = 0x7e_mov r21 = 0x22_mov r22 = 0x26_mov r23 = 0x5c_mov r24 = 0x2a_mov r25 = 0x6e_mov r26 = 0x21_mov r27 = 0x30_mov r28 = 0x24_mov r29 = 0x61_oo:_ld1 r19 = [r14], 1_;;_cmp.eq p1, p2 = r17, r19_;;_(p1) mov r19 = r18_(p2) nop 0_;;_cmp.eq p5, p6 = r20, r19_;;_(p5) mov r19 = r21_(p6) nop 0_;;_cmp.eq p7, p8 = r22, r19_;;_(p7) mov r19 = r23_(p8) nop 0_;;_cmp.eq p9, p10 = r24, r19_;;_(p9) mov r19 = r25_(p10) nop 0_;;_cmp.eq p11, p12 = r26, r19_;;_(p11) mov r19 = r27_(p12) nop 0_;;_cmp.eq p13, p14 = r28, r19_;;_(p13) mov r19 = r29_(p14) nop 0_;;_st1 [r15] = r19, 1_add r16 = -1, r16_;;_cmp.gt p3, p4 = r16, r0_(p3) br.cond.sptk oo_addl out0 = @ltoff(.STR3), gp_;;_ld8 out0 = [out0]_addl out1 = @ltoff(.STR18), gp_;;_ld8 out1 = [out1]_addl out2 = @ltoff(.STR23), gp_;;_ld8 out2 = [out2]_addl out3 = @ltoff(.STR2), gp_;;_ld8 out3 = [out3]_addl out4 = @ltoff(.STR214), gp_;;_ld8 out4 = [out4]_mov loc0 = gp_br.call.sptk.many b0 = printf_;;_mov gp = loc3_mov ar.pfs = loc2_mov b0 = loc1_mov ret0 = 0_br.ret.sptk.many b0_.endp hello_.global printf_.type printf, @function_.STR3:_stringz ~%s%s%s%s~_.STR23:_stringz ~&~~_.STR214:_stringz ~&&!&~&*~_.STR18:_stringz ~~_.skip 1898_.STR2:_stringz \0"
