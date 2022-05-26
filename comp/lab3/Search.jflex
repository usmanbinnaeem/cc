%%
%class Search
%unicode
%standalone
%line
%column

stra=(a|ε)
strb=(b|ε)
stringa=(a*{strb}a*{strb}a*)
stringb=(b*{stra}b*{stra}b*)
%%

{stringa}  {System.out.printf(" %14s (%-15s) at line %5d  column  %5d\n","Stringa",yytext(),yyline,yycolumn);}
{stringb}  {System.out.printf(" %14s (%-15s) at line %5d  column  %5d\n","Stringb",yytext(),yyline,yycolumn);}
\n {}
. {}