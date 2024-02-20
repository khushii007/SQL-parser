/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     SELECT = 258,
     FROM = 259,
     WHERE = 260,
     INSERT = 261,
     INTO = 262,
     VALUES = 263,
     UPDATE = 264,
     SET = 265,
     GROUP = 266,
     BY = 267,
     ORDER = 268,
     TABLE = 269,
     AND = 270,
     DELETE = 271,
     OR = 272,
     NOT_NULL_TOKEN = 273,
     IDENTIFIER = 274,
     NUMBER = 275,
     STRING = 276,
     STAR = 277,
     ASC_TOKEN = 278,
     DESC_TOKEN = 279,
     COMMA = 280,
     SEMICOLON = 281,
     PLUS = 282,
     MINUS = 283,
     DIVIDE = 284,
     NOT_EQUAL = 285,
     GREATER_THAN = 286,
     LESS_THAN_EQUAL = 287,
     GREATER_THAN_EQUAL = 288,
     UNKNOWN_CHARACTER = 289,
     ASC = 290,
     DESC = 291,
     NOT = 292
   };
#endif
/* Tokens.  */
#define SELECT 258
#define FROM 259
#define WHERE 260
#define INSERT 261
#define INTO 262
#define VALUES 263
#define UPDATE 264
#define SET 265
#define GROUP 266
#define BY 267
#define ORDER 268
#define TABLE 269
#define AND 270
#define DELETE 271
#define OR 272
#define NOT_NULL_TOKEN 273
#define IDENTIFIER 274
#define NUMBER 275
#define STRING 276
#define STAR 277
#define ASC_TOKEN 278
#define DESC_TOKEN 279
#define COMMA 280
#define SEMICOLON 281
#define PLUS 282
#define MINUS 283
#define DIVIDE 284
#define NOT_EQUAL 285
#define GREATER_THAN 286
#define LESS_THAN_EQUAL 287
#define GREATER_THAN_EQUAL 288
#define UNKNOWN_CHARACTER 289
#define ASC 290
#define DESC 291
#define NOT 292




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

