#include <stdio.h>
int main(){
char *h = "header/middle/end";
char arr[18];
int i;
for (i = 0 ; i < 18 ; i++) {
if (h[i] == '/') {arr[i] = '\n';}
else {arr[i] = h[i];}}
printf("%s\n%s",h, arr);
return 0;
}
// cl /I.\ poh.c
// by alCoPaUL, HAsAsIN [NaCl], beth GviLLErMo [GIMO], Zelotes ni Isa [ZnI], Brigada Ocho [b8]
// April 29, 2026, NYC
//
//
// License: Royalties Of 30 US Dollars Per Instance On A Computer And Groups Of Computers. alcopaul@yahoo.com For Transactions.
//
// "If You No Pay = You Male Gay."
//