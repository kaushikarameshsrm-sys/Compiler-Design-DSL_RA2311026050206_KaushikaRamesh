
# Compiler Design Report

## Architecture
Source Code
    ↓
Lexical Analysis
    ↓
Parsing
    ↓
AST Construction
    ↓
Semantic Analysis
    ↓
LLVM IR Generation

## Modules Explanation
- lexer.l → Token generation
- parser.y → Grammar parsing
- ast.c → AST generation
- semantic.c → Semantic checking
- codegen.c → LLVM IR generation

## Output
LLVM IR code generated successfully.
