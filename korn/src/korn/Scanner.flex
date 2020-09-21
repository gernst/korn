package korn;

import beaver.Symbol;
import java.util.Set;
import scala.math.BigInt;
import korn.Parser.Terminals;

%%

%public
%class Scanner
%extends beaver.Scanner
%function nextToken
%type Symbol
%yylexthrow Scanner.Exception

%eofval{
	return newToken(Terminals.EOF);
%eofval}

%line
%column

%{
    public Set<String> types;

  	public final String yytext(int from) {
    	return new String( zzBuffer, zzStartRead + from, zzMarkedPos-zzStartRead-from );
  	}
	
	long makeInt(String text) {
		return Long.parseLong(text.replaceAll("([uUlL])", ""));
	}
	
	double makeDouble(String text) {
		return Double.parseDouble(text.replaceAll("([fFlL])", ""));
	}

    Symbol resolve(String name) {
    	if(types.contains(name)) {
    		return newToken(Terminals.TYPE, name);
    	} else {
    		return newToken(Terminals.ID,   name);
    	}
    }

	Symbol newToken(short id)
	{
		return newToken(id, yytext());
	}

	Symbol newToken(short id, Object value)
	{
		return new Symbol(id, yyline + 1, yycolumn + 1, yylength(), value);
	}
%}

NL = \r|\n|\r\n
WS = {NL} | [ \t\f]

D = [0-9]
L = [a-zA-Z_]
H = [a-fA-F0-9]
E = [Ee][+-]?{D}+
FS = (f|F|l|L)
IS = (u|U|l|L)*

%%

<YYINITIAL> {

"//" .* {NL} {}
"#"  .* {NL} {}
"/*" [^*] ~"*/" | "/*" "*"+ "/" {}
{WS}+ {}


"("         { return newToken(Terminals.LPAREN);   }
")"         { return newToken(Terminals.RPAREN);   }
"["         { return newToken(Terminals.LBRACK);   }
"]"         { return newToken(Terminals.RBRACK);   }
"{"         { return newToken(Terminals.LBRACE);   }
"}"         { return newToken(Terminals.RBRACE);   }
"++"        { return newToken(Terminals.INCR);     }
"--"        { return newToken(Terminals.DECR);     }
"."         { return newToken(Terminals.DOT);      }
"->"        { return newToken(Terminals.ARROW);    }
"!"         { return newToken(Terminals.BANG);     }
"~"         { return newToken(Terminals.TILDE);    }
"sizeof"    { return newToken(Terminals.SIZEOF);   }
"*"         { return newToken(Terminals.STAR);     }
"/"         { return newToken(Terminals.DIV);      }
"%"         { return newToken(Terminals.MOD);      }
"+"         { return newToken(Terminals.PLUS);     }
"-"         { return newToken(Terminals.MINUS);    }
"<<"        { return newToken(Terminals.SHL);      }
">>"        { return newToken(Terminals.SHR);      }
"<"         { return newToken(Terminals.LT);       }
"<="        { return newToken(Terminals.LE);       }
">="        { return newToken(Terminals.GE);       }
">"         { return newToken(Terminals.GT);       }
"=="        { return newToken(Terminals.EQ);       }
"!="        { return newToken(Terminals.NEQ);      }
"&"         { return newToken(Terminals.AMP);      }
"^"         { return newToken(Terminals.CARET);    }
"|"         { return newToken(Terminals.PIPE);     }
"&&"        { return newToken(Terminals.AND);      }
"||"        { return newToken(Terminals.OR);       }
"?"         { return newToken(Terminals.QUESTION); }
":"         { return newToken(Terminals.COLON);    }
"="         { return newToken(Terminals.ASG); }
"+="|"-="|"*="|"/="|"%="|"<<="|">>="|"&="|"^="|"|="
            { return newToken(Terminals.ASG_OP, yytext()); }
","         { return newToken(Terminals.COMMA);    }
";"         { return newToken(Terminals.SEMICOLON);}

"void"      { return newToken(Terminals.VOID);     }
"_Bool"     { return newToken(Terminals.BOOL);     }
"float"     { return newToken(Terminals.FLOAT);    }
"double"    { return newToken(Terminals.DOUBLE);   }
"char"      { return newToken(Terminals.CHAR);     }
"short"     { return newToken(Terminals.SHORT);    }
"int"       { return newToken(Terminals.INT);      }
"long"      { return newToken(Terminals.LONG);     }
"long" {WS}+ "double"
            { return newToken(Terminals.LONG_DOUBLE); }
"long" {WS}+ "long"
            { return newToken(Terminals.LONG_LONG); }
"long" {WS}+ "unsigned"
            { return newToken(Terminals.LONG_UNSIGNED); }
"signed"    { return newToken(Terminals.SIGNED);   }
"unsigned"  { return newToken(Terminals.UNSIGNED); }

"struct"    { return newToken(Terminals.STRUCT);   }
"union"     { return newToken(Terminals.UNION);    }
"enum"      { return newToken(Terminals.ENUM);     }
"typedef"   { return newToken(Terminals.TYPEDEF);  }

"case"      { return newToken(Terminals.CASE);     }
"switch"    { return newToken(Terminals.SWITCH);   }
"goto"      { return newToken(Terminals.GOTO);     }
"break"     { return newToken(Terminals.BREAK);    }
"return"    { return newToken(Terminals.RETURN);   }
"continue"  { return newToken(Terminals.CONTINUE); }
"do"        { return newToken(Terminals.DO);       }
"while"     { return newToken(Terminals.WHILE);    }
"for"       { return newToken(Terminals.FOR);      }
"if"        { return newToken(Terminals.IF);       }
"else"      { return newToken(Terminals.ELSE);     }

// ignore these
"extern"        { }
"const"         { }
"static"        { }
"volatile"      { }
"__inline"      { }
"__restrict"    { }
"__extension__" { }
"__attribute__" {WS}+ "((" .* "))" { }
            
[a-zA-Z_][a-zA-Z_0-9]*
            { return resolve(yytext()); }

0[xX]{H}+{IS}?          { return newToken(Terminals.CONST, Long.parseLong(yytext(2), 16)); }
0{D}+{IS}?              { return newToken(Terminals.CONST, Long.parseLong(yytext()));     }
{D}+{IS}?               { return newToken(Terminals.CONST, Long.parseLong(yytext()));     }

{D}+{E}{FS}?            { return newToken(Terminals.CONST, Double.parseDouble(yytext())); }
{D}*"."{D}+({E})?{FS}?  { return newToken(Terminals.CONST, Double.parseDouble(yytext())); }
{D}+"."{D}*({E})?{FS}?  { return newToken(Terminals.CONST, Double.parseDouble(yytext())); }

L?'(\\.|[^\'\\])+'      { return newToken(Terminals.CONST, Parsing.ch(yytext()));         }
L?\"(\\.|[^\"\\])*\"    { return newToken(Terminals.CONST, Parsing.str(yytext()));        }

// [0-9]+      { return newToken(Terminals.NUM, Integer.parseInt(yytext())); }

[^]         { throw new Scanner.Exception("unexpected character '" + yytext() + "'"); }

}

