%{
#include <stdio.h>

void yyerror(const char *s);
int yylex();
void generateIR();
%}

%union {
    int num;
}

%token NUMBER PRINT IDENTIFIER
%token ASSIGN SEMICOLON PLUS LPAREN RPAREN

%%

program:
    statements
    ;

statements:
    statements statement
    | statement
    ;

statement:
    IDENTIFIER ASSIGN NUMBER SEMICOLON
    | PRINT LPAREN NUMBER PLUS NUMBER RPAREN SEMICOLON
    ;

%%

void yyerror(const char *s) {
    printf("Parse Error: %s\n", s);
}

int main() {
    yyparse();
    printf("Parsing Completed Successfully\n");
    generateIR();
    return 0;
}