grammar Expr;

// parser rules
prog : ( (expr | assign) ';' NEWLINE?)*; 

expr : expr ('*'|'/') expr         # infixExpr
     | expr ('+'|'-') expr         # infixExpr
     | FUNC0 '(' expr ')'          # func0Expr
     | FUNC1 '(' expr ',' expr ')' # func1Expr
     | '(' expr ')'                # parensExpr
     | num                         # numberExpr
     | VAR 		               # varExpr
     ;

assign : VAR '=' num;

num  : INT			  #posNum
     | REAL			  #posNum
     | '-' INT			  #negNum
     | '-' REAL	       #negNum
     ;
     
// lexer rules                    
NEWLINE: [\r\n]+ ;
INT: [0-9]+ ;          // should handle negatives
REAL: [0-9]+'.'[0-9]* ; // should handle signs(+/-)
FUNC0: 's''q''r''t' ;
FUNC1: ( 'm''i''n' | 'm''a''x' | 'p''o''w' ) ;
WS: [ \t\r\n]+ -> skip ;
VAR: [a-zA-Z][a-zA-Z]* ;

