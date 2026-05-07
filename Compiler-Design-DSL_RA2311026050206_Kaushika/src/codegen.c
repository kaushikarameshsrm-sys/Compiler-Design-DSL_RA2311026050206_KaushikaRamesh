
#include <stdio.h>

void generateIR() {
    FILE *fp = fopen("../output/output.ll", "w");

    fprintf(fp, "; LLVM IR Example\n");
    fprintf(fp, "define i32 @main() {\n");
    fprintf(fp, "entry:\n");
    fprintf(fp, "ret i32 0\n");
    fprintf(fp, "}\n");

    fclose(fp);

    printf("LLVM IR Generated Successfully\n");
}
