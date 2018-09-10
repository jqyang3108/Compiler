grammar Micro;
program: KEYWORD;

KEYWORD:'PROGRAM'|'BEGIN'|'END'|'FUNCTION'|'READ'|'WRITE'|'IF'|'ELSE'|'ENDIF'|'WHILE'|'ENDWHILE'|'RETURN'|'INT'|'VOID'|'STRING'|'FLOAT'|'TRUE'|'FALSE' ;
IDENTIFIER: [A-Za-z][A-Za-z0-9]* ; 
INTLITERAL: [0-9]+ ;
FLOATLITERAL: [0-9]+'.'[0-9]* | '.'[0-9]+ ;
STRINGLITERAL:'"'(~'"')*'"' ;
COMMENT: '--'~('\n')*('\n') -> skip;
OPERATOR: ':='|'+'|'-'|'*'|'/'|'='|'!='|'<'|'>'|'('|')'|';'|','|'<='|'>=' ; 


WS : [ \t\r\n]+ -> skip ;
