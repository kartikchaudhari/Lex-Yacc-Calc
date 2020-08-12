%{
#include <stdlib.h>
void yyerror(char *);
#include "calc.tab.h"
%}
%%

[0-9]+      { yylval = atoi(yytext);
                return INTEGER;
            }

[-+*%\n]    return *yytext;
PLUS        return '+';
MINUS       return '-';
MULTIPLY    return '*';
TIMES       return '*';
MOD      return '%';
[ \t] ;    
.           yyerror("invalid character");
%%
int yywrap(void) {
	return 1;
}