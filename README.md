# Lex-Yacc-Calc
Simple Calculator program using Lex and Yacc.

#How to run ?

cmd> flex calc.l

cmd> yacc -d calc.y

cmd> gcc lex.yy.c calc.tab.c -o calc.exe

and finally execute the binary file,

cmd> calc.exe

#Output

![Output](https://raw.githubusercontent.com/kartikchaudhari/Lex-Yacc-Calc/master/output.png)
