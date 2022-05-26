%%
%class Search
%unicode
%standalone
%line
%column
number = [1-9]
%%
{number}
{
    System.out.printf("Match found[%s] at line %d and column %d \n" , yytext() , yyline , yycolumn);
}
\n {}
.   {}


