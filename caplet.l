%{
#include <stdio.h>
%}

%%

[A-Z]       { printf("Capital letter: %c\n", yytext[0]); }
.           ; // Ignore other characters

%%

int yywrap()
{}

int main() {
    printf("ENTER ANY TEXT : ");
    yylex();
    return 0;
}
