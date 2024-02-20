
%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int yyerror(const char *s);

extern int yylex();
extern int yylineno;
extern FILE* yyin;
%}

%token SELECT FROM WHERE INSERT INTO VALUES UPDATE SET GROUP BY ORDER TABLE AND DELETE OR NOT_NULL_TOKEN IDENTIFIER NUMBER STRING STAR
%token ASC_TOKEN DESC_TOKEN COMMA SEMICOLON PLUS MINUS DIVIDE NOT_EQUAL GREATER_THAN LESS_THAN_EQUAL GREATER_THAN_EQUAL UNKNOWN_CHARACTER ASC DESC

%left OR
%left AND
%left '=' NOT_EQUAL
%left '<' '>' LESS_THAN_EQUAL GREATER_THAN_EQUAL
%left '+' '-'
%left '*' '/'
%right NOT
%start query
%expect 0
%%

query:
    select_query
    | insert_query
    | update_query
    | delete_query
    |
    ;

select_query:
    SELECT columns FROM IDENTIFIER optional_clause SEMICOLON
    ;

optional_clause: where_clause
    | group_by_clause
    | order_by_clause
    |
    ;

order_by_clause: ORDER BY order_direction additional_order

order_direction: IDENTIFIER ASC
    | IDENTIFIER DESC
    ;

additional_order: COMMA order_direction
    | /* empty */
    ;


group_by_clause: GROUP BY column_list
    ;

insert_query:
    INSERT INTO IDENTIFIER VALUES '(' value_list ')' SEMICOLON
    ;

update_query:
    UPDATE IDENTIFIER SET assignment_list where_clause SEMICOLON
    ;

delete_query:
    DELETE FROM IDENTIFIER where_clause SEMICOLON
    ;

columns: STAR
    | column_list
    ;

column_list:
    IDENTIFIER additional_columns
    ;

additional_columns: COMMA IDENTIFIER additional_columns
    |
    ;

value_list:
    value COMMA value_list
    | value
    ;

value:
    NUMBER 
    | STRING 
    | IDENTIFIER 
    ;

assignment_list:
    assignment COMMA assignment_list
    | assignment
    ;

assignment:
    IDENTIFIER '=' expression
    ;

where_clause:
    WHERE condition 
    ;

condition:
    expression 
    ;

expression:
    expression OR expression 
    | expression AND expression 
    | expression '=' expression 
    | expression NOT_EQUAL expression 
    | expression '>' expression 
    | expression '<' expression 
    | expression '+' expression 
    | expression '-' expression 
    | expression '*' expression 
    | expression '/' expression 
    | expression LESS_THAN_EQUAL expression 
    | expression GREATER_THAN_EQUAL expression 
    | '(' expression ')' 
    | NOT expression 
    | NUMBER
    | IDENTIFIER
    | STRING
    ;

%%

int yyerror(const char *s) {
    fprintf(stderr, "Error at line %d: %s\n",yylineno, s);
    fflush(stderr);
    exit(1);
}

int main() {

    yyin=fopen("input","r");
    if(yyparse()==0)
        printf("Parse successful");
    else
        printf("Unsuccessful");

    fclose(yyin);
    return 0;
}
