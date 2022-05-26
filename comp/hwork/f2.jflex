%%
%class f2
%unicode
%standalone
%line
%column

digit=[0-9]
Number=[1-9][0-9]*
Decimal={Number}.({Number})?
sl=[a-z]
cl=[A-Z]
string=({sl}|{cl}|{Decimal})*
Operater=(>|<|<=|>=|==|!=)
id=({string}|_)({string}|{Number}|_)*

%%
{digit}   {System.out.printf(" %14s (%-15s) at line %5d  column  %5d\n","Digit",yytext(),yyline,yycolumn);}
{Number}  {System.out.printf(" %14s (%-15s) at line %5d  column  %5d\n","Number",yytext(),yyline,yycolumn);}
{Decimal} {System.out.printf(" %14s (%-15s) at line %5d  column  %5d\n","Decimal",yytext(),yyline,yycolumn);}
{sl}      {System.out.printf(" %14s (%-15s) at line %5d  column  %5d\n","Small Letter",yytext(),yyline,yycolumn);}
{cl}      {System.out.printf(" %14s (%-15s) at line %5d  column  %5d\n","Capital Letter",yytext(),yyline,yycolumn);}
{string}  {System.out.printf(" %14s (%-15s) at line %5d  column  %5d\n","Strings",yytext(),yyline,yycolumn);}
{id}      {System.out.printf(" %14s (%-15s) at line %5d  column  %5d\n","Identifier",yytext(),yyline,yycolumn);}
{Operater}   {System.out.printf(" %14s (%-15s) at line %5d  column  %5d\n","Operater",yytext(),yyline,yycolumn);}
\n {}
. {}