package Codigo;
import static Codigo.Tokens.*;
%%

%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
WhiteSpace=[ ,\t,\r,\n]+
%{
public String lexeme;
%}
%%

bool | 
sele | 
fi | 
tini | 
home | 
vodi | 
white | 
foro | 
object | 
only | 
forall | 
intf | 
flesh | 
lg | 
printf|
line|
rec {lexeme = yytext(); return Keyword;}

{WhiteSpace} {/*Ignorar espacios y saltos de línea*/}

"True"|"False" { lexeme = yytext(); return Boolean; }

{D}+ { lexeme = yytext(); return Digit; }

"(" | "{" | "}" | ")" | ";" | "." { lexeme = yytext(); return Separator; }

"=" | "+" | "-" | "/" | ">" | "<" | "==" | "!=" | "&&" | "||" | "!" { lexeme = yytext(); return Operator; }

{L}({L}|{D})* { lexeme = yytext(); return Identifier; }

"(-"{D}+")" | {D}+ { lexeme = yytext(); return Digit; }

. { return ERROR; }

