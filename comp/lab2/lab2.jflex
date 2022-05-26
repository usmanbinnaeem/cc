%%
%class Search
%unicode
%standalone
%line
%column
numbers=\d+
alphabet=[a-zA-Z]+
id=alphabet | _ (alphabet | _ |numbers)
comments="/*" [^*] ~"*/"
comp = [&|!]+
compoundOper=alphabet(\&+ | \|+ | \!)alphabet
%%
{numbers}
{
    System.out.printf("Match found[%s] at line %d and column %d \n" , yytext() , yyline , yycolumn);
}
{alphabet}
{
    System.out.printf("Match found[%s] at line %d and column %d \n" , yytext() , yyline , yycolumn);
}
{id}
{
    System.out.printf("Match found[%s] at line %d and column %d \n" , yytext() , yyline , yycolumn);
}
{comments}
{
    System.out.printf("Match found[%s] at line %d and column %d \n" , yytext() , yyline , yycolumn);
}
{compoundOper}
{
    System.out.printf("Match found[%s] at line %d and column %d \n" , yytext() , yyline , yycolumn);
}
\n {}
.   {}


