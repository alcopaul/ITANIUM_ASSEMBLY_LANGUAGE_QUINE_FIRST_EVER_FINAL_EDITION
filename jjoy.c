#include <stdio.h>
int main(){
char *h = "\"lez go\\\"\\\\n there,\\\"";
char arr[21];
int i;
for (i = 0 ; i < 21 ; i++) {
arr[i] = h[i] ^ 62;
}
printf("%s %s",h, arr);
return 0;
}
// cl /I.\ jjoy.c
// by alCoPaUL, HAsAsIN [NaCl], beth GviLLErMo [GIMO], Zelotes ni Isa [ZnI], Brigada Ocho [b8]
// April 28, 2026, NYC
//
//
// License: Royalties Of 30 US Dollars Per Instance On A Computer And Groups Of Computers. alcopaul@yahoo.com For Transactions.
//
// "If You No Pay = You Male Gay."
//
