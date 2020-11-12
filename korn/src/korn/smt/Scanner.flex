package korn.smt;

import beaver.Symbol;
import korn.smt.Parser.Terminals;


%%

%public
%class Scanner
%extends beaver.Scanner
%function nextToken
%type Symbol

%eofval{
	return newToken(Terminals.EOF);
%eofval}

%line
%column

%{
    public final String yytext(int start, int end) {
        int length = zzMarkedPos-zzStartRead;
        return new String( zzBuffer, zzStartRead + start, length - start + end );
    }

	Symbol newToken(short id)
	{
		return newToken(id, yytext());
	}

	Symbol newToken(short id, Object value)
	{
		// System.out.println(Terminals.NAMES[id] + ": " + value);
		return new Symbol(id, yyline + 1, yycolumn + 1, yylength(), value);
	}
%}

nl = \r|\n|\r\n
ws = {nl} | [ \t\f]

// printable = [\u0020-\u007E] | [\u0080-\uFFFF]
digit   = [0-9]
letter  = [a-zA-Z]
extra   = [~!@$%&*_+=<>.?/] | "-" | "^"

num     = [1-9]{digit}* | 0
dec     = num "\." 0* num
hex     = "0x" [0-9a-fA-F]+
bin     = "#b" [01]+

symbol0 = {letter} | {extra}
symbol1 = {letter} | {extra} | {digit}
symbol  = {symbol0} {symbol1}*

quoted  = \| ~ \|

kw      = ":" {symbol}

%%

<YYINITIAL> {

{ws}+ {}
";" .* {nl} {}

"("         { return newToken(Terminals.LP);   }
")"         { return newToken(Terminals.RP);   }

// \" ~ \"     { return newToken(Terminals.STR, yytext(+1,-1)); }

{num}       { return newToken(Terminals.NUM, yytext()); }
// {dec}       { return newToken(Terminals.DEC, yytext()); }
// {hex}       { return newToken(Terminals.HEX, yytext(+2,0)); }
// {bin}       { return newToken(Terminals.BIN, yytext(+2,0)); }

// "sat"       { return newToken(Terminals.SAT);     }
// "unsat"     { return newToken(Terminals.UNSAT);   }
// "error"     { return newToken(Terminals.ERROR);   }
// "unknown"   { return newToken(Terminals.UNKNOWN); }

"model"     { return newToken(Terminals.MODEL);   }

"let"       { return newToken(Terminals.LET);     }
"exists"    { return newToken(Terminals.EXISTS);  }
"forall"    { return newToken(Terminals.FORALL);  }

"Int"       { return newToken(Terminals.INT);     }
"Bool"      { return newToken(Terminals.BOOL);    }
"Array"     { return newToken(Terminals.ARRAY);   }

"define-fun"
    { return newToken(Terminals.DEFINE_FUN);   }

/* {any} ({printable} - {ws})
            { throw new RuntimeException("unexpected character '" + yytext() + "'"); } */


{symbol}    { return newToken(Terminals.ID, yytext());      }
{quoted}    { return newToken(Terminals.ID, yytext(+1,-1)); }
// {kw}        { return newToken(Terminals.KW, yytext(+1,0));  }

[^]         { throw new RuntimeException("unexpected character '" + yytext() + "' at " + yyline + ":" + yycolumn); }

}