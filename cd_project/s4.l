%{
#include "s4.tab.h"
%}

%%
"OR"                    { return OR; }
"AND"                   { return AND; }
"NOT"                   { return NOT; }
"ASC"                   { return ASC_TOKEN; }
"DESC"                  { return DESC_TOKEN; }
"TABLE"                 { return TABLE; }
","                     { return COMMA; }
";"                     { return SEMICOLON; }
"+"                     { return '+'; }
"-"                     { return '-'; }
"*"                     { return STAR; }
"/"                     { return '/'; }
"="                     { return '='; }
"!="                    { return NOT_EQUAL; }
">"                     { return '>'; }
"<"                     { return '<'; }
"<="                    { return LESS_THAN_EQUAL; }
">="                    { return GREATER_THAN_EQUAL; }
"("                     { return '('; }
")"                     { return ')'; }
"SELECT"                { return SELECT; }
"FROM"                  { return FROM; }
"WHERE"                 { return WHERE; }
"INSERT"                { return INSERT; }
"INTO"                  { return INTO; }
"VALUES"                { return VALUES; }
"UPDATE"                { return UPDATE; }
"SET"                   { return SET; }
"GROUP"                 { return GROUP; }
"BY"                    { return BY; }
"ORDER"                 { return ORDER; }
"DELETE"                { return DELETE; }
[ \t\n\r\f\v]+         ; // Ignore whitespace
[a-zA-Z_][a-zA-Z0-9_]*  { return IDENTIFIER; }
[0-9]+                 { return NUMBER; }
\"([^\\\n]|(\\.))*\"   { return STRING; }
.                      { return UNKNOWN_CHARACTER; }
%%

int yywrap() {
    return 1;
}
