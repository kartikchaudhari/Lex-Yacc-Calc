%{
#include <stdio.h>
void main();
void yyerror(char *);
%}
%token INTEGER
%%
program:
        program expr '\n' {
           printf("Answer:= %d\n\n", $2); 
        }
        |
        ;
		
expr:
        INTEGER { $$ = $1; }
        | expr '+' expr { $$ = $1 + $3; }
        | expr '-' expr { $$ = $1 - $3; }
        | expr '*' expr { $$ = $1 * $3; }
        | expr '%' expr { $$ = $1 % $3; }
        ;
%%
void main() {
	printf("\nSimple Lex Yacc Calculater\n");
	printf("---------------------------------\n");
	printf("PLUS -> addition, MINUS -> substraction,\nMOD -> modulo, MULTIPLY -> multiplication\n\n");
	printf("Enter Expression:\n");
	yyparse();

}

void yyerror(char *s) {  
	fprintf(stderr, "%s\n", s);
}

