
# End-to-End DSL Compiler

## Project Description
This project implements a simple Domain-Specific Language (DSL) Compiler using:
- Lex/Flex for lexical analysis
- YACC/Bison for parsing
- AST Construction in C
- Semantic Analysis
- Intermediate Code Generation (LLVM IR)

## Folder Structure
- src/ → Compiler source files
- docs/ → Documentation
- test/ → Sample inputs
- output/ → Generated outputs

## Tools Used
- Flex
- Bison
- GCC
- LLVM

## Steps to Run

```bash
flex lexer.l
bison -d parser.y
gcc lex.yy.c parser.tab.c ast.c semantic.c codegen.c -o compiler
./compiler < ../test/sample.dsl
```

## Sample Input
```
x = 10;
y = 20;
print(x + y);
```

## Sample Output
```
Result = 30
```

## Team Details
- Name:
- Register Number:
