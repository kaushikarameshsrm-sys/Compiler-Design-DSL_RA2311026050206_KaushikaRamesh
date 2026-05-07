
%{
#include "parser.tab.h"
#include <stdlib.h>
%}

%%
[0-9]+      { yylval.num = atoi(yytext); return NUMBER; }
print       { return PRINT; }
[a-zA-Z]+   { return IDENTIFIER; }
"="         { return ASSIGN; }
";"         { return SEMICOLON; }
"+"         { return PLUS; }
"("         { return LPAREN; }
")"         { return RPAREN; }
[ \t\n]     ;
.           ;
%%
