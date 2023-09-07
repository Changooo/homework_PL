grammar Kotlin;

// parser rules

prog : packageHeader importList topLevelObject* EOF; 



// lexer rules

WhiteSpace : [ \t]+ -> skip ;
NL: '\n' | '\r' '\n'?;