/*
//
// alasqlparser.jison
// SQL Parser for AlaSQL
// (c) 2014-2015, Andrey Gershun
// 
//
*/

%lex
%options case-insensitive
%%

\`\`([^\`])+\`\`						return 'AA'
\[\?\]									return 'AB'
'@['									return 'AC'
\[([^\]])*?\]							return 'AD'
\`([^\`])*?\`	   						return 'AD'

N(['](\\.|[^']|\\\')*?['])+             return 'AF'
X(['](\\.|[^']|\\\')*?['])+             return 'AF'
(['](\\.|[^']|\\\')*?['])+              return 'AH'
(["](\\.|[^"]|\\\")*?["])+              return 'AH'

"--"(.*?)($|\r\n|\r|\n)							return /* return COMMENT */

\s+                                             /* skip whitespace */
'||'											return 'AJ'
'&&'											return 'AK'
'ABSOLUTE'                                 		return 'AL'
'ACTION'                                      	return 'AM'
'ADD'                                      		return 'AN'
'AGGR'                                     		return 'AO'
'ALL'                                      		return 'AP'
'ALTER'                                    		return 'AQ'
'AND'											return 'AK'
'ANTI'											return 'AW'
'ANY'											return 'DW'
'APPLY'											return 'AU'
'ARRAY'                                     	return 'AV'
'AS'                                      		return 'AW'
'ASSERT'                                      	return 'AX'
'ASC'                                      		return 'AY'
'ATTACH'                                      	return 'AZ'
AUTO(_)?INCREMENT                               return 'Aa'
'AVG'                                      		return 'Ab'

'BEGIN'											return 'Ac'
'BETWEEN'										return 'Ad'
'BREAK'											return 'Ae'
NOT\s+BETWEEN									return 'Af'
NOT\s+LIKE									    return 'Ag'
'BY'											return 'Ah'

'CASE'											return 'Ai'
'CAST'											return 'Ag'
'CHECK'											return 'Ak'
'CLASS'											return 'Al'
'CLOSE'											return 'Am'
'COLLATE'										return 'An'
COLUMN											return 'Ao'
COLUMNS 										return 'Ao'
"COMMIT"										return 'Aq'
"CONSTRAINT"									return 'Ar'
"CONTENT"										return 'As'
"CONTINUE"										return 'At'
"CONVERT"										return 'Au'
"CORRESPONDING"									return 'Av'
"COUNT"											return 'Aw'
'CREATE'										return 'Ax'
"CROSS"											return 'Ay'
'CUBE'											return 'Az'
"CURRENT_TIMESTAMP"								return 'A0'
"CURSOR"										return 'A1'
DATABASE(S)?									return 'A2'
'DECLARE'                                       return 'A3'
'DEFAULT'                                       return 'A4'
'DELETE'                                        return 'A5'
'DELETED'                                       return 'A6'
'DESC'                                          return 'AY'
'DETACH'										return 'A8'
'DISTINCT'                                      return 'A9'
DOUBLE\s+PRECISION								return 'BA'
'DROP'											return 'BB'
'ECHO'											return 'BC'
'EDGE'											return 'BD'
'END'											return 'BE'
'ENUM'											return 'BF'
'ELSE'											return 'BG'
'EXCEPT'										return 'BH'
'EXISTS'										return 'BI'
'EXPLAIN'                                       return 'BJ'
'FALSE'											return 'BK'
'FETCH'											return 'BL'
'FIRST'											return 'BM'
'FOREIGN'										return 'BN'
'FROM'                                          return 'BO'
'GO'                                      		return 'BP'
'GRAPH'                                      	return 'BQ'
'GROUP'                                      	return 'BR'
'GROUPING'                                     	return 'BS'
'HAVING'                                        return 'BT'
'HELP'											return 'BU'
'IF'											return 'BV'
'IDENTITY'										return 'Aa'
'IS'											return 'BX'
'IN'											return 'BY'
'INDEX'											return 'BZ'
'INNER'                                         return 'Ba'
'INSERT'                                        return 'Bb'
'INSERTED'                                      return 'Bc'
'INTERSECT'                                     return 'Bd'
'INTO'                                         	return 'Be'
'JOIN'                                         	return 'Bf'
'KEY'											return 'Bg'
'LAST'											return 'Bh'
'LET'											return 'Bi'
'LEFT'											return 'Bg'
'LIKE'											return 'Bk'
'LIMIT'											return 'Bl'
'MATCHED'										return 'Bm'
'MATRIX'										return 'Bn'	
"MAX"											return 'Bo'
"MERGE"											return 'Bp'
"MIN"											return 'Bq'
"MINUS"											return 'BH'
"MODIFY"										return 'Bs'
'NATURAL'										return 'Bt'
'NEXT'											return 'Bu'
'NEW'											return 'Bv'
'NOCASE'										return 'Bw'
'NO'											return 'Bx'
'NOT'											return 'By'
'NULL'											return 'Bz'
'OFF'											return 'B0'
'ON'											return 'B1'
'ONLY'											return 'B2'
'OFFSET'										return 'B3'
'OPEN'											return 'B4'
'OPTION'										return 'B5'
'OR'											return 'AJ'
'ORDER'	                                      	return 'B7'
'OUTER'											return 'B8'
'OVER'											return 'B9'
'PATH'                                        	return 'CA'
'PARTITION'										return 'CB'
'PERCENT'                                       return 'CC'
'PLAN'                                        	return 'CD'
'PRIMARY'										return 'CE'
'PRINT'                                        	return 'CF'
'PRIOR'                                        	return 'CG'
'QUERY'                                        	return 'CH'
'READ'		                                    return 'CI'
'RECORDSET'                                     return 'CJ'
'REDUCE'                                        return 'CK'
'REFERENCES'                                    return 'CL'
'RELATIVE'                                      return 'CM'
'REMOVE'                                        return 'CN'
'RENAME'                                        return 'CO'
'REQUIRE'                                       return 'CP'
'RESTORE'                                       return 'CQ'
'RETURNS'                                       return 'CR'
'RIGHT'                                        	return 'CS'
'ROLLBACK'										return 'CT'
'ROLLUP'										return 'CU'
'ROW'											return 'CV'
SCHEMA(S)?                                      return 'A2'
'SEARCH'                                        return 'CX'
'SELECT'                                        return 'CY'
'SEMI'                                        	return 'CZ'
SET 	                                       	return 'Ca'
SETS                                        	return 'Ca'
'SHOW'                                        	return 'Cc'
'SOME'                                        	return 'Cd'
'SOURCE'										return 'Ce'
'STRATEGY'										return 'Cf'
'STORE'                                        	return 'Cg'
'SUM'											return 'Ch'
'TABLE'											return 'Ci'
'TABLES'										return 'Ci'
'TARGET'										return 'Ck'
'TEMP'											return 'Cl'
'TEMPORARY'										return 'Cl'
'TEXTSTRING'									return 'Cn'
'THEN'											return 'Co'
'TIMEOUT'										return 'Cp'
'TO'											return 'Cq'
'TOP'											return 'Cr'
'TRAN'											return 'Cs'
'TRANSACTION'									return 'Cs'
'TRUE'						  					return 'Cu'
'TRUNCATE'					  					return 'Cv'
'UNION'                                         return 'Cw'
'UNIQUE'                                        return 'Cx'
'UPDATE'                                        return 'Cy'
'USE'											return 'Cz'
/* 'USER'										return 'C0' */
'USING'                                         return 'C1'
VALUE(S)?                                      	return 'C2'
'VERTEX'										return 'C3'
'VIEW'											return 'C4'
'WHEN'                                          return 'C5'
'WHERE'                                         return 'C6'
'WHILE'                                         return 'C7'
'WITH'                                          return 'C8'
'WORK'                                          return 'Cs'  /* Is this keyword required? */

(\d*[.])?\d+[eE]\d+								return 'DA'
(\d*[.])?\d+									return 'DA'

'->'											return 'DC'
'#'												return 'DD'
'+'												return 'DE'
'-' 											return 'DF'
'*'												return 'DG'
'/'												return 'DH'
'%'												return 'DI'
'!==='											return 'DJ'
'==='											return 'DK'
'!=='											return 'DL'
'=='											return 'DM'
'>='											return 'DN'
'>'												return 'DO'
'<='											return 'DP'
'<>'											return 'DQ'
'<'												return 'DR'
'='												return 'DS'
'!='											return 'DQ'
'('												return 'DU'
')'												return 'DV'
'@'												return 'DW'
'{'												return 'DX'
'}'												return 'DY'

']'												return 'DZ'

':-'											return 'Da'
'?-'											return 'Db'
'.'												return 'Dc'
','												return 'Dd'
'::'											return 'De'
':'												return 'Df'
';'												return 'Dg'
'$'												return 'Dh'
'?'												return 'Di'
'!'												return 'Dg'
'^'												return 'Dk'

[a-zA-Z_][a-zA-Z_0-9]*                     		return 'BA'

<<EOF>>               							return 'Dm'
.												return 'Dn'

/lex
%left Dd 
%left De 
%left AJ 
/* %left AK */
%left AK Ad Af 
/*%left AND*/
%left DO DN DR DP DS DQ DM DL DK DJ 
%left BY 
%left By 
%left BX 
%left Bk Ag 
%left DE DF 
%left DG DH DI 
%left Dk 
%left Dc DC Dg 
%left DD 

%ebnf
%start main
%%

	: BA 
		{
			if (yy.casesensitive) $$ = $1;
			else $$ = $1.toLowerCase();
		}
	| AD 
		{ $$ = doubleq($1.substr(1,$1.length-2)); }
	;

main
	: Dp Dm 
		{ return new yy.Statements({statements:$1}); }
	;

	: Dp (Dg|BP) Dr 
		{ $$ = $1; if($3) $1.push($3); }
	| Dr 
		{ $$ = [$1]; }
	| Dq 
		{ $$ = [$1]; }
	;

	: BJ Dr 
		{ $$ = $2; $2.explain = true; }
	| BJ CH CD Dr 
		{ $$ = $4;  $4.explain = true;}
	;

	: Ds 
		{ 
			$$ = $1;

			// TODO combine exists and queries
		    if(yy.exists) $$.exists = yy.exists;
		    delete yy.exists;
		    if(yy.queries) $$.queries = yy.queries;
			delete yy.queries;
		}
	;

	: { $$ = undefined; }
	| Fm 
	| Fo 
	| Fq 
	| Fu 
	| G1 
	| FG 
	| F1 
	| Gz 
	| Gv 
	| Gh 
	| E8 
	| Fp 
	| Ft 
	| Fv 
	| Fk 
	| F3 
	| GV 
	| E9 
	| Gl 
	| Fn 
	| Dw 
	| F0 
	| Fy 
	| Fw 
	| Fz 
	| Fx 
	| Gk 
	| Dt 

	| GS 
	| GQ 
	| GR 
	| EndTransaction
	| Fs 
	| E5 
	| F9 
	| Ef 

	| GB 
	| GC 
	| GX 
	| GY 
	| GZ 
	| Ga 
	| Gb 
	| Gc 
	| GL 
	| GA 
	| HC 
	| HF 

/* PLugins */

	| Ge 

/*
	| GT 
	| GU 

	| F4 
	| F5 
	| F7 
	| F6 

	| CreateTrigger
	| DropTrigger
	| SavePoint
	| Reindex
	| StoreDatabase
	| StoreTable
	| RestoreDatabase
	| RestoreTable

	| GX 
	| BulkInsert

	| CreateFunction
	| CreateProcedure
	| Loop
	| ForLoop
*/
	;

/* C8 */

	: C8 Du Dw 
		{ $$ = new yy.WithSelect({withs: $2, select:$3}); }
	;

	: Du Dd Dv 
		{ $1.push($3); $$=$1; }
	| Dv 
		{ $$ = [$1]; }
	;

	: Do AW DU Dw DV 
		{ $$ = {name:$1, select:$4}; }
	;

/* CY */

	: D9 Dx? EC ED EP EQ EV EY EU 
		{   
			yy.extend($$,$1); yy.extend($$,$2); yy.extend($$,$3); yy.extend($$,$4); 
		    yy.extend($$,$5); yy.extend($$,$6);yy.extend($$,$7); 
		    yy.extend($$,$8); yy.extend($$,$9); 
		    $$ = $1;
/*		    if(yy.exists) $$.exists = yy.exists;
		    delete yy.exists;
		    if(yy.queries) $$.queries = yy.queries;
			delete yy.queries;
*/		}
	| CX SearchSelector* EC D3? 
	/* D6? D7? D8? */
		{
			$$ = new yy.Search({selectors:$2, from:$4});
			yy.extend($$,$3);
		}
	;

	: CN Ao? Dy 
		{ $$ = {removecolumns:$3}; } 
	;

	: Dy Dd Dz 
		{ $$ = $1; $$.push($3); }
	| Dz 
		{ $$ = [$1]; }
	;

	: Ed 
		{ $$ = $1; }
	| Bk Es 
		{ $$ = {like:$2}; }	
	;

	: Do 
		{ $$ = {srchid:"PROP", args: [$1]}; }

	| B7 Ah DU EW DV 
		{ $$ = {srchid:"ORDERBY", args: $4}; }
	| B7 Ah DU AY? DV 
		{
			var dir = $4;
			if(!dir) dir = 'ASC';
			$$ = {srchid:"ORDERBY", args: [{expression: new yy.Column({columnid:'_'}), direction:dir}]};
		}

	| DC Do 
		{ $$ = {srchid:"APROP", args: [$2]}; }
	| Dk 
		{ $$ = {selid:"ROOT"};}
	| DS Ee 
		{ $$ = {srchid:"EQ", args: [$2]}; }
	| Bk Ee 
		{ $$ = {srchid:"LIKE", args: [$2]}; }
	| DU SearchSelector+ DV 
		{ $$ = {selid:"WITH", args: $2}; }
	| C8 DU SearchSelector+ DV 
		{ $$ = {selid:"WITH", args: $3}; }
	| Do DU Ep? DV 
		{ $$ = {srchid:$1.toUpperCase(), args:$3}; }	
	| C6 DU Ee DV 
		{ $$ = {srchid:"WHERE", args:[$3]}; }	
	| Al DU Do DV 
		{ $$ = {srchid:"CLASS", args:[$3]}; }	
	| DA 
		{ $$ = {srchid:"PROP", args: [$1]}; }
	| AH 
		{ $$ = {srchid:"NAME", args: [$1.substr(1,$1.length-2)]}; }
	| DH 
		{ $$ = {srchid:"CHILD"}; }
	| C3 
		{ $$ = {srchid:"VERTEX"}; }
	| BD 
		{ $$ = {srchid:"EDGE"}; }
	| Dg 
		{ $$ = {srchid:"REF"}; }
	| DD Do 
		{ $$ = {srchid:"SHARP", args:[$2]}; }	
	| DI Do 
		{ $$ = {srchid:"ATTR", args:((typeof $2 == 'undefined')?undefined:[$2])}; }	
	| DI DH 
		{ $$ = {srchid:"ATTR"}; }	
	| DO 
		{ $$ = {srchid:"OUT"}; }
	| DR 
		{ $$ = {srchid:"IN"}; }
	| Dh 
		{ $$ = {srchid:"CONTENT"}; } /* TODO Decide! */
/*	| A5 DU DV 
		{ $$ = {srchid:"DELETE"}; }
*/	| Dc DOT 
		{ $$ = {srchid:"PARENT"}; }
	| GD 
		{ $$ = {srchid:"EX",args:[new yy.Json({value:$1})]}; }
	| DW Do 
		{ $$ = {srchid:"AT", args:[$2]}; }	
	| AW DW Do 
		{ $$ = {srchid:"AS", args:[$3]}; }	
	| Cq DW Do 
		{ $$ = {srchid:"TO", args:[$3]}; }	
	| Ca DU E6 DV 
		{ $$ = {srchid:"SET", args:$3}; }	

	| C2 
		{ $$ = {srchid:"VALUE"}; }	
	| Df Do 
		{ $$ = {srchid:"CLASS", args:[$2]}; }	
	| D0 D2 
		{ $$ = {selid:$2,args:[$1] }; }

	| By DU SearchSelector* DV 
		{ $$ = {selid:"NOT",args:$3 }; }
	| BV DU SearchSelector* DV 
		{ $$ = {selid:"IF",args:$3 }; }
	| En DU SearchSelector* DV 
		{ $$ = {selid:$1,args:$3 }; }
	| (A9|Cx) DU SearchSelector* DV 
		{ $$ = {selid:'DISTINCT',args:$3 }; }
	| Cw DU D1 DV 
		{ $$ = {selid:'UNION',args:$3 }; }
	| Cw AP DU D1 DV 
		{ $$ = {selid:'UNIONALL',args:$4 }; }
	| AP DU SearchSelector* DV 
		{ $$ = {selid:'ALL',args:[$3] }; }
	| DW DU SearchSelector* DV 
		{ $$ = {selid:'ANY',args:[$3] }; }
	| Bd DU D1 DV 
		{ $$ = {selid:'INTERSECT',args:$3 }; }
	| BH DU D1 DV 
		{ $$ = {selid:'EXCEPT',args:$3 }; }
	| AK DU D1 DV 
		{ $$ = {selid:'AND',args:$3 }; }
	| AJ DU D1 DV 
		{ $$ = {selid:'OR',args:$3 }; }
	| CA DU D0 DV 
		{ $$ = {selid:'PATH',args:[$3] }; }
	| CR DU Ea DV 
		{ $$ = {srchid:'RETURNS',args:$3 }; }
	;

	: D1 Dd SearchSelector*
		{ $$ = $1; $$.push($3);}
	| SearchSelector*
		{ $$ = [$1]; }
	;

	: DE 
		{ $$ = "PLUS"; }
	| DG 
		{ $$ = "STAR"; }
	| Di 
		{ $$ = "QUESTION"; }
	;

	: BO Ee 
		{ $$ = $2; }
	;

/*
	: Bi 
	;

	: C7 Ee 
	;
	: Bl Ee 
	;

	: Cf Do 
	;

	: Cp Ee 
	;	

*/

	: 
	/*

		{ $$ = new yy.Select({ columns:new yy.Column({columnid:'_'}), modifier: 'COLUMN' }); }
	| 
*/

 EA A9 EB Ea  
		{ $$ = new yy.Select({ columns:$4, distinct: true }); yy.extend($$, $1); yy.extend($$, $3); }
	| EA Cx EB Ea  
		{ $$ = new yy.Select({ columns:$4, distinct: true }); yy.extend($$, $1);yy.extend($$, $3); }
	| EA  AP EB Ea  
		{ $$ = new yy.Select({ columns:$4, all:true }); yy.extend($$, $1);yy.extend($$, $3); }
	| EA EB Ea?  
		{ 
			if(!$3) {
				$$ = new yy.Select({columns:[new yy.Column({columnid:'_',})], modifier:'COLUMN'});
			} else {
				$$ = new yy.Select({ columns:$3 }); yy.extend($$, $1);yy.extend($$, $2); 
			}
		}
/*	| 
		{ $$ = new yy.Select({columns:[new yy.Column({columnid:'_', modifier:'COLUMN'})]});}
*/	;

	: CY 
		{ $$ = undefined; }
	| CY C2 
		{ $$ = {modifier:'VALUE'}}
	| CY CV 
		{ $$ = {modifier:'ROW'}}
	| CY Ao 
		{ $$ = {modifier:'COLUMN'}}
	| CY Bn 
		{ $$ = {modifier:'MATRIX'}}
	| CY Cn 
		{ $$ = {modifier:'TEXTSTRING'}}
	| CY BZ 
		{ $$ = {modifier:'INDEX'}}
	| CY CJ 
		{ $$ = {modifier:'RECORDSET'}}
	;

	: Cr Eq CC?
		{ $$ = {top: $2, percent:(typeof $3 != 'undefined'?true:undefined)}; }
	| Cr DU Eq DV 
		{ $$ = {top: $3}; }
	| { $$ = undefined; }
	;

	: {$$ = undefined; }
	| Be EI 
		{$$ = {into: $2} }
	| Be Eo 
		{$$ = {into: $2} }
	| Be Ew 
		{$$ = {into: $2} }
	| Be Eu 
		{$$ = {into: $2} }
	| Be AH 
		{ 
			var s = $2;
			s = s.substr(1,s.length-2);
			var x3 = s.substr(-3).toUpperCase();
			var x4 = s.substr(-4).toUpperCase();
			if(s[0] == '#') {
				$$ = {into: new yy.FuncValue({funcid: 'HTML', args:[new yy.StringValue({value: s}), new yy.Json({value:{headers:true}})]})};
			} else if(x3=='XLS' || x3 == 'CSV' || x3=='TAB') {
				$$ = {into: new yy.FuncValue({funcid: x3, args:[new yy.StringValue({value: s}), new yy.Json({value:{headers:true}})]})};
			} else if(x4=='XLSX' || x4 == 'JSON') {
				$$ = {into: new yy.FuncValue({funcid: x4, args:[new yy.StringValue({value: s}), new yy.Json({value:{headers:true}})]})};
			}
		}
	;

	: BO EF 
		{ $$ = { from: $2 }; } 
/*	| BO EG EJ 
		{ $$ = { from: [$2], joins: $3 }; }
*/	| BO EF EJ 
		{ $$ = { from: $2, joins: $3 }; }
/*	| BO DU EG EJ DV 
		{ $$ = { from: [$3], joins: $4 }; }
*/	| BO DU EF EJ DV 
		{ $$ = { from: $3, joins: $4 }; }
	|
		{ $$ = undefined; }
	;

	: Ay AU DU Dw DV Do 
		{ $$ = new yy.Apply({select: $4, applymode:'CROSS', as:$6}); }
	| Ay AU DU Dw DV AW Do 
		{ $$ = new yy.Apply({select: $4, applymode:'CROSS', as:$7}); }
/*		{ 
			if(!yy.exists) yy.exists = [];
			$$ = new yy.Apply({select: $4, applymode:'CROSS', as:$7,existsidx:yy.exists.length});
			yy.exists.push($3);

		 }
*/	| B8 AU DU Dw DV Do 
		{ $$ = new yy.Apply({select: $4, applymode:'OUTER', as:$6}); }
	| B8 AU DU Dw DV AW Do 
		{ $$ = new yy.Apply({select: $4, applymode:'OUTER', as:$7}); }
	;

	: EG 
		{ $$ = [$1]; }
	| EF Dd EG 
		{ $$ = $1; $1.push($3); }
	;

	: DU Dw DV Do 
		{ $$ = $2; $$.as = $4 }	
	| DU Dw DV AW Do 
		{ $$ = $2; $$.as = $5 }	
	| DU Dw DV /* default alias */
		{ $$ = $2; $$.as = 'default' }	

	| GD AW? Do?
		{ $$ = new yy.Json({value:$1}); $1.as = $3 }

	| EI Do 
		{ $$ = $1; $1.as = $2 }
	| EI AW Do 
		{ $$ = $1; $1.as = $3 }
	| EI 
		{ $$ = $1; }

	| Ew Do 
		{ $$ = $1; $1.as = $2; }
	| Ew AW Do 
		{ $$ = $1; $1.as = $3; }
	| Ew 
		{ $$ = $1; $1.as = 'default'; }

	| Eo 
		{ $$ = $1; $1.as = 'default'; }
	| Eo Do 
		{ $$ = $1; $1.as = $2; }
	| Eo AW Do 
		{ $$ = $1; $1.as = $3; }

	| Eu 
		{ $$ = $1; $1.as = 'default'; }
	| Eu Do 
		{ $$ = $1; $1.as = $2; }
	| Eu AW Do 
		{ $$ = $1; $1.as = $3; }

	| EH 
		{ $$ = $1; $1.as = 'default'; }
	| EH Do 
		{ $$ = $1; $1.as = $2; }
	| EH AW Do 
		{ $$ = $1; $1.as = $3; }
	;

	: AH 
		{ 
			var s = $1;
			s = s.substr(1,s.length-2);
			var x3 = s.substr(-3).toUpperCase();
			var x4 = s.substr(-4).toUpperCase();
			var r;
			if(s[0] == '#') {
				r = new yy.FuncValue({funcid: 'HTML', args:[new yy.StringValue({value: s}), new yy.Json({value:{headers:true}})]});
			} else if(x3=='XLS' || x3 == 'CSV' || x3=='TAB') {
				r = new yy.FuncValue({funcid: x3, args:[new yy.StringValue({value: s}), new yy.Json({value:{headers:true}})]});
			} else if(x4=='XLSX' || x4 == 'JSON') {
				r = new yy.FuncValue({funcid: x4, args:[new yy.StringValue({value: s}), new yy.Json({value:{headers:true}})]});
			} else {
				throw new Error('Unknown string in BO clause');
			};
			$$ = r;
		}
	;

	: Do Dc Do 
		{ 	
			if($1 == 'INFORMATION_SCHEMA') {
				$$ = new yy.FuncValue({funcid: $1, args:[new yy.StringValue({value:$3})]});
			} else {
				$$ = new yy.Table({databaseid: $1, tableid:$3});
			}
		}
	| Do 
		{ $$ = new yy.Table({tableid: $1});}
	;

	: EJ EK 
		{ $$ = $1; $1.push($2); } 
	| EJ EE 
		{ $$ = $1; $1.push($2); } 
	| EK 
	 	{ $$ = [$1]; }
	| EE 
	 	{ $$ = [$1]; }
	;

	: EM EL EO 
		{ $$ = new yy.Join($1); yy.extend($$, $2); yy.extend($$, $3); }
	;

	: EI 
		{ $$ = {table: $1}; }
	| EI Do 
		{ $$ = {table: $1, as: $2 } ; }
	| EI AW Do 
		{ $$ = {table: $1, as: $3 } ; }
	| GD AW? Do?
		{ $$ = {json:new yy.Json({value:$1,as:$3})}; }
	| Ew Do 
		{ $$ = {param: $1, as: $2 } ; }
	| Ew AW Do 
		{ $$ = {param: $1, as: $3 } ; }
	| DU Dw DV Do 
		{ $$ = {select: $1, as: $4} ; }
	| DU Dw DV AW Do 
		{ $$ = {select: $1, as: $5 } ; }
	| Eo 
		{ $$ = {funcid:$1, as:'default'}; }
	| Eo Do 
		{ $$ = {funcid:$1, as: $2}; }
	| Eo AW Do 
		{ $$ = {funcid:$1, as: $3}; }

	| Eu 
		{ $$ = {variable:$1,as:'default'}; }
	| Eu Do 
		{ $$ = {variable:$1,as:$2}; }
	| Eu AW Do 
		{ $$ = {variable:$1,as:$3} }
	;

	: EN 
		{ $$ = { joinmode: $1 } ; }
	| Bt EN 
		{ $$ = {joinmode: $1, natural:true} ; }
	;

	: Bf 
		{ $$ = "INNER"; }
	| Ba Bf 
		{ $$ = "INNER"; }
	| Bg Bf 
		{ $$ = "LEFT"; }
	| Bg B8 Bf 
		{ $$ = "LEFT"; }
	| CS Bf 
		{ $$ = "RIGHT"; }
	| CS B8 Bf 
		{ $$ = "RIGHT"; }
	| B8 Bf 
		{ $$ = "OUTER"; }
	| FULL B8 Bf 
		{ $$ = "OUTER"; }
	| CZ Bf 
		{ $$ = "SEMI"; }
	| AW Bf 
		{ $$ = "ANTI"; }
	| Ay Bf 
		{ $$ = "CROSS"; }
	;

	: B1 Ee 
		{ $$ = {on: $2}; }
	| C1 FF 
		{ $$ = {using: $2}; }
	|
		{ $$ = undefined; }
	;

	: { $$ = undefined; }
	| C6 Ee 
		{ $$ = {where: new yy.Expression({expression:$2})}; }
	;

	: { $$ = undefined; }
	| BR Ah ER ET 
		{ $$ = {group:$3}; yy.extend($$,$4); }
	;

	: ES 
		{ $$ = [$1]; }
	| ER Dd ES 
		{ $$ = $1; $1.push($3); }
	;

	: BS Ca DU ER DV 
		{ $$ = new yy.GroupExpression({type:'GROUPING SETS', group: $4}); }
	| CU DU ER DV 
		{ $$ = new yy.GroupExpression({type:'ROLLUP', group: $3}); }
	| Az DU ER DV 
		{ $$ = new yy.GroupExpression({type:'CUBE', group: $3}); }
	| Ee 
		{ $$ = $1; }
	;


	: { $$ = undefined; }
	| BT Ee 
		{ $$ = {having:$2}}
	;

	:   { $$ = undefined; }
	| Cw Dw 
		{ $$ = {union: $2} ; }
	| Cw AP Dw 
		{ $$ = {unionall: $3} ; }
	| BH Dw 
		{ $$ = {except: $2} ; }
	| Bd Dw 
		{ $$ = {intersect: $2} ; }
	| Cw Av Dw 
		{ $$ = {union: $3, corresponding:true} ; }
	| Cw AP Av Dw 
		{ $$ = {unionall: $4, corresponding:true} ; }
	| BH Av Dw 
		{ $$ = {except: $3, corresponding:true} ; }
	| Bd Av Dw 
		{ $$ = {intersect: $3, corresponding:true} ; }
	;

	: { $$ = undefined; }
	| B7 Ah EW 
		{ $$ = {order:$3}}
	;

	: EX 
		{ $$ = [$1]; }
	| EW Dd EX 
		{ $$ = $1; $1.push($3)}
	;

	: Ee 
		{ $$ = new yy.Expression({expression: $1, direction:'ASC'}) }
	| Ee AY 
		{ $$ = new yy.Expression({expression: $1, direction:$2.toUpperCase()}) }
	| Ee An Bw 
		{ $$ = new yy.Expression({expression: $1, direction:'ASC', nocase:true}) }
	| Ee An Bw AY 
		{ $$ = new yy.Expression({expression: $1, direction:$4.toUpperCase(), nocase:true}) }
	;

	: { $$ = undefined; }
	| Bl Eq EZ 
		{ $$ = {limit:$2}; yy.extend($$, $3)}
	;

	: { $$ = undefined; }
	| B3 Eq 
		{ $$ = {offset:$2}}
	;


	: Ea Dd Eb 
		{ $1.push($3); $$ = $1; }
	| Eb 
		{ $$ = [$1]; }
	;

	: Ee AW Do 
		{ $1.as = $3; $$ = $1;}
	| Ee Do 
		{ $1.as = $2; $$ = $1;}
	| Ee AW DA 
		{ $1.as = $3; $$ = $1;}
	| Ee DA 
		{ $1.as = $2; $$ = $1;}
	| Ee AW Es 
		{ $1.as = $3; $$ = $1;}
	| Ee Es 
		{ $1.as = $2; $$ = $1;}
	| Ee 
		{ $$ = $1; }
	;

	: Do Dc Do Dc DG 
		{ $$ = new yy.Column({columid: $5, tableid: $3, databaseid:$1}); }	
	| Do Dc DG 
		{ $$ = new yy.Column({columnid: $3, tableid: $1}); }	
	| DG 
		{ $$ = new yy.Column({columnid:$1}); }
	;

	: Do Dc Do Dc Do 
		{ $$ = new yy.Column({columnid: $5, tableid: $3, databaseid:$1});}	
	| Do Dc Do 
		{ $$ = new yy.Column({columnid: $3, tableid: $1});}	
	| Do Dc C2 
		{ $$ = new yy.Column({columnid: $3, tableid: $1});}	
	| Do 
		{ $$ = new yy.Column({columnid: $1});}	
	;

	: Eg 
		{ $$ = $1; }
	| Eo 
		{ $$ = $1; }
	| E1 
		{ $$ = $1; }
	| Ed 
		{ $$ = $1; }
	| Ec 
		{ $$ = $1; }
	| Eq 
		{ $$ = $1; }
	| Er 
		{ $$ = $1; }
	| Es 
		{ $$ = $1; }
	| Et 
		{ $$ = $1; }
	| Ew 
		{ $$ = $1; }
	| Eu 
		{ $$ = $1; }
	| Ev 
		{ $$ = $1; }
	| Ex 
		{ $$ = $1; }
	| Eh 
		{ $$ = $1; }
	| GD 
		{ $$ = new yy.Json({value:$1}); }			
/*	| AC GH 
		{ $$ = new yy.Json({value:$2}); }
*/	| Eg 
		{ $$ = $1; }
/*	| DW DU Ee DV 
		{ $$ = new yy.FuncValue({funcid: 'CLONEDEEP', args:[$3]}); }			
*/
/*	| DW DU GD DV 
		{ $$ = new yy.Json({value:$3}); }			
*/	| DU Dw DV 
		{
			if(!yy.queries) yy.queries = []; 
			yy.queries.push($2);
			$2.queriesidx = yy.queries.length;
			$$ = $2;
		}
	| DU E9 DV 
		{
			if(!yy.queries) yy.queries = []; 
			yy.queries.push($2);
			$2.queriesidx = yy.queries.length;
			$$ = $2;
		}
	| DU (Gv|Gz) DV 
		{
			if(!yy.queries) yy.queries = []; 
			yy.queries.push($2);
			$2.queriesidx = yy.queries.length;
			$$ = $2;
		}

	| Ef 
		{$$ = $1}
	| A0 
		{ $$ = new yy.FuncValue({funcid:'CURRENT_TIMESTAMP'});}
/*	| C0 
		{ $$ = new yy.FuncValue({funcid:'USER'});}
*/	;

	: AA 
		{ $$ = new yy.JavaScript({value:$1.substr(2,$1.length-4)}); }		
	;

	: Bv Do 
		{ $$ = new yy.FuncValue({funcid:$2, newid:true}); }
	| Bv Eo 
		{ $$ = $2; yy.extend($$,{newid:true}); }
	;


	: Ag DU Ee AW Fe DV 
		{ $$ = new yy.Convert({expression:$3}) ; yy.extend($$,$5) ; }
	| Ag DU Ee AW Fe Dd DA DV 
		{ $$ = new yy.Convert({expression:$3, style:$7}) ; yy.extend($$,$5) ; }
	| Au DU Fe Dd Ee DV 
		{ $$ = new yy.Convert({expression:$5}) ; yy.extend($$,$3) ; }
	| Au DU Fe Dd Ee Dd DA DV 
		{ $$ = new yy.Convert({expression:$5, style:$7}) ; yy.extend($$,$3) ; }
	;

	: Eq 
		{ $$ = $1; }
	| Es 
		{ $$ = $1; }
	| Er 
		{ $$ = $1; }
	| Et 
		{ $$ = $1; }
	| Ew 
		{ $$ = $1; }
	| Eo 
		{ $$ = $1; }
	| A0 
		{ $$ = new yy.FuncValue({funcid:'CURRENT_TIMESTAMP'}); }	
/*	| C0 
		{ $$ = new yy.FuncValue({funcid:'USER'}); }	
*/	;


	: En DU Ep DV Ek 
		{
		  if($3.length > 1 && ($1.toUpperCase() == 'MAX' || $1.toUpperCase() == 'MIN')) {
		  	$$ = new yy.FuncValue({funcid:$1,args:$3});
		  } else {
			$$ = new yy.AggrValue({aggregatorid: $1.toUpperCase(), expression: $3.pop(), over:$5}); 
		  } 
		}
	| En DU A9 Ee DV Ek 
		{ $$ = new yy.AggrValue({aggregatorid: $1.toUpperCase(), expression: $4, distinct:true, over:$6}); }
	| En DU AP Ee DV Ek 
		{ $$ = new yy.AggrValue({aggregatorid: $1.toUpperCase(), expression: $4,
		 over:$6}); }
	;

	:
		{$$ = undefined; }
	| B9 DU El DV 
		{ $$ = new yy.Over(); yy.extend($$,$3); }
	| B9 DU Em DV 
		{ $$ = new yy.Over(); yy.extend($$,$3); }
	| B9 DU El Em DV 
		{ $$ = new yy.Over(); yy.extend($$,$3); yy.extend($$,$4);}
	;

	: CB Ah ER 
		{ $$ = {partition:$3}; }
	;
	: B7 Ah EW 
		{ $$ = {order:$3}; }
	;
	: Ch { $$ = "SUM"; }
	| Aw { $$ = "COUNT"; } 
	| Bq { $$ = "MIN"; }
	| Bo { $$ = "MAX"; }
	| Ab { $$ = "AVG"; }
	| BM { $$ = "FIRST"; }
	| Bh { $$ = "LAST"; }
	| AO { $$ = "AGGR"; }
	| AV { $$ = "ARRAY"; }
/*	| CK { $$ = "REDUCE"; } */
	;

	: Do DU (A9|AP)? Ep DV 
		{ 
			var funcid = $1;
			var exprlist = $4;
			if(exprlist.length > 1 && (funcid.toUpperCase() == 'MIN' || funcid.toUpperCase() == 'MAX')) {
					$$ = new yy.FuncValue({funcid: funcid, args: exprlist}); 
			} else if(alasql.aggr[$1]) {
		    	$$ = new yy.AggrValue({aggregatorid: 'REDUCE', 
                      funcid: funcid, expression: exprlist.pop(),distinct:($3=='DISTINCT') });
		    } else {
			    $$ = new yy.FuncValue({funcid: funcid, args: exprlist}); 
			};
		}
	| Do DU DV 
		{ $$ = new yy.FuncValue({ funcid: $1 }) }
	;

	: Ee 
		{ $$ = [$1]; }
	| Ep Dd Ee 
		{ $1.push($3); $$ = $1 }
	;

	: DA 
		{ $$ = new yy.NumValue({value:+$1}); }
	;

	: Cu 
		{ $$ = new yy.LogicValue({value:true}); }
	| BK 
		{ $$ = new yy.LogicValue({value:false}); }
	;

	: AH 
		{ $$ = new yy.StringValue({value: $1.substr(1,$1.length-2).replace(/(\\\')/g,"'").replace(/(\'\')/g,"'")}); }
	| AF 
		{ $$ = new yy.StringValue({value: $1.substr(2,$1.length-3).replace(/(\\\')/g,"'").replace(/(\'\')/g,"'")}); }
	;

	: Bz 
		{ $$ = new yy.NullValue({value:undefined}); }
	;

	: DW Do 
		{ $$ = new yy.VarValue({variable:$2}); }
	;

	: BI DU Dw DV 
		{ 
			if(!yy.exists) yy.exists = [];
			$$ = new yy.ExistsValue({value:$3, existsidx:yy.exists.length}); 
			yy.exists.push($3);
		}
	;


	: Dh (Do|DA)
		{ $$ = new yy.ParamValue({param: $2}); }
/*	| Dh DA 
		{ $$ = new yy.ParamValue({param: $2}); }
*/	| Df Do 
		{ $$ = new yy.ParamValue({param: $2}); }
	| Di 
		{ 
			if(typeof yy.question == 'undefined') yy.question = 0; 
			$$ = new yy.ParamValue({param: yy.question++}); 
		}
	| AB 
		{ 
			if(typeof yy.question == 'undefined') yy.question = 0; 
			$$ = new yy.ParamValue({param: yy.question++, array:true}); 
		}
	;


	: Ai Ee Ey E0 BE 
		{ $$ = new yy.CaseValue({expression:$2, whens: $3, elses: $4}); }
	| Ai Ey E0 BE 
		{ $$ = new yy.CaseValue({whens: $2, elses: $3}); }
	;

	: Ey Ez 
		{ $$ = $1; $$.push($2); }
	| Ez 
		{ $$ = [$1]; }
	;

	: C5 Ee Co Ee 
		{ $$ = {when: $2, then: $4 }; }
	;

	: BG Ee 
		{ $$ = $2; }
	| 
		{ $$ = undefined; } 
	; 

	: Ee Bk Ee 
		{ $$ = new yy.Op({left:$1, op:'LIKE', right:$3}); }
	| Ee Ag Ee 
		{ $$ = new yy.Op({left:$1, op:'NOT LIKE', right:$3 }); }
	| Ee DE Ee 
		{ $$ = new yy.Op({left:$1, op:'+', right:$3}); }
	| Ee DF Ee 
		{ $$ = new yy.Op({left:$1, op:'-', right:$3}); }
	| Ee DG Ee 
		{ $$ = new yy.Op({left:$1, op:'*', right:$3}); }
	| Ee DH Ee 
		{ $$ = new yy.Op({left:$1, op:'/', right:$3}); }
	| Ee DI Ee 
		{ $$ = new yy.Op({left:$1, op:'%', right:$3}); }
	| Ee Dk Ee 
		{ $$ = new yy.Op({left:$1, op:'^', right:$3}); }

	| Ee DC Do 
		{ $$ = new yy.Op({left:$1, op:'->' , right:$3}); }
	| Ee DC Eq 
		{ $$ = new yy.Op({left:$1, op:'->' , right:$3}); }
	| Ee DC DU Ee DV 
		{ $$ = new yy.Op({left:$1, op:'->' , right:$4}); }
	| Ee DC Eo 
		{ $$ = new yy.Op({left:$1, op:'->' , right:$3}); }

	| Ee Dg Do 
		{ $$ = new yy.Op({left:$1, op:'!' , right:$3}); }
	| Ee Dg Eq 
		{ $$ = new yy.Op({left:$1, op:'!' , right:$3}); }
	| Ee Dg DU Ee DV 
		{ $$ = new yy.Op({left:$1, op:'!' , right:$4}); }
	| Ee Dg Eo 
		{ $$ = new yy.Op({left:$1, op:'!' , right:$3}); }




	| Ee DO Ee 
		{ $$ = new yy.Op({left:$1, op:'>' , right:$3}); }
	| Ee DN Ee 
		{ $$ = new yy.Op({left:$1, op:'>=' , right:$3}); }
	| Ee DR Ee 
		{ $$ = new yy.Op({left:$1, op:'<' , right:$3}); }
	| Ee DP Ee 
		{ $$ = new yy.Op({left:$1, op:'<=' , right:$3}); }
	| Ee DS Ee 
		{ $$ = new yy.Op({left:$1, op:'=' , right:$3}); }
	| Ee DM Ee 
		{ $$ = new yy.Op({left:$1, op:'==' , right:$3}); }
	| Ee DK Ee 
		{ $$ = new yy.Op({left:$1, op:'===' , right:$3}); }
	| Ee DQ Ee 
		{ $$ = new yy.Op({left:$1, op:'!=' , right:$3}); }
	| Ee DL Ee 
		{ $$ = new yy.Op({left:$1, op:'!==' , right:$3}); }
	| Ee DJ Ee 
		{ $$ = new yy.Op({left:$1, op:'!===' , right:$3}); }

	| Ee E3 E4 DU Dw DV 
		{ 
			if(!yy.queries) yy.queries = []; 
			$$ = new yy.Op({left:$1, op:$2 , allsome:$3, right:$5, queriesidx: yy.queries.length}); 
			yy.queries.push($5);  
		}

	| Ee E3 E4 DU Ep DV 
		{ 
			$$ = new yy.Op({left:$1, op:$2 , allsome:$3, right:$5}); 
		}

	| Ee AK Ee 
		{ 
			if($1.op == 'BETWEEN1') {

				if($1.left.op == 'AND') {
					$$ = new yy.Op({left:$1.left.left,op:'AND',right:
						new yy.Op({left:$1.left.right, op:'BETWEEN', 
							right1:$1.right, right2:$3})
					});
				} else {
					$$ = new yy.Op({left:$1.left, op:'BETWEEN', 
						right1:$1.right, right2:$3});
				}

			} else if($1.op == 'NOT BETWEEN1') {
				if($1.left.op == 'AND') {
					$$ = new yy.Op({left:$1.left.left,op:'AND',right:
						new yy.Op({left:$1.left.right, op:'NOT BETWEEN', 
							right1:$1.right, right2:$3})
					});
				} else {
					$$ = new yy.Op({left:$1.left, op:'NOT BETWEEN', 
						right1:$1.right, right2:$3});
				}
			} else {
				$$ = new yy.Op({left:$1, op:'AND', right:$3});
			}


		}
	| Ee AJ Ee 
		{ $$ = new yy.Op({left:$1, op:'OR' , right:$3}); }
	| By Ee 
		{ $$ = new yy.UniOp({op:'NOT' , right:$2}); }
	| DF Ee 
		{ $$ = new yy.UniOp({op:'-' , right:$2}); }
	| DE Ee 
		{ $$ = new yy.UniOp({op:'+' , right:$2}); }
	| DD Ee 
		{ $$ = new yy.UniOp({op:'#' , right:$2}); }
	| DU Ee DV 
		{ $$ = new yy.UniOp({right: $2}); }

	| Ee BY DU Dw DV 
		{ 
			if(!yy.queries) yy.queries = []; 
			$$ = new yy.Op({left: $1, op:'IN', right:$4, queriesidx: yy.queries.length});
			yy.queries.push($4);  
		}

	| Ee By BY DU Dw DV 
		{ 
			if(!yy.queries) yy.queries = []; 
			$$ = new yy.Op({left: $1, op:'NOT IN', right:$5, queriesidx: yy.queries.length});
			yy.queries.push($5);  
		}

	| Ee BY DU Ep DV 
		{ $$ = new yy.Op({left: $1, op:'IN', right:$4}); }

	| Ee By BY DU Ep DV 
		{ $$ = new yy.Op({left: $1, op:'NOT IN', right:$5}); }

	| Ee BY DU DV 
		{ $$ = new yy.Op({left: $1, op:'IN', right:[]}); }

	| Ee By BY DU DV 
		{ $$ = new yy.Op({left: $1, op:'NOT IN', right:[]}); }

	| Ee BY E2 
		{ $$ = new yy.Op({left: $1, op:'IN', right:$3}); }

	| Ee By BY E2 
		{ $$ = new yy.Op({left: $1, op:'NOT IN', right:$4}); }


	/* 
		Hack - it impossimle to parse Ad AK and AK expressions with grammar. 
		At least, I do not know how.
	*/
	| Ee Ad Ee 
		{ 	
/*			var expr = $3;
			if(expr.left && expr.left.op == 'AND') {
				$$ = new yy.Op({left:new yy.Op({left:$1, op:'BETWEEN', right:expr.left}), op:'AND', right:expr.right }); 
			} else {
*/
				$$ = new yy.Op({left:$1, op:'BETWEEN1', right:$3 }); 
//			}
		}
	| Ee Af Ee 
		{
//			var expr = $3;
//			if(expr.left && expr.left.op == 'AND') {
//				$$ = new yy.Op({left:new yy.Op({left:$1, op:'NOT BETWEEN', right:expr.left}), op:'AND', right:expr.right }); 
//			} else {
				$$ = new yy.Op({left:$1, op:'NOT BETWEEN1', right:$3 }); 
//			}
		}
	| Ee BX Ee 
		{ $$ = new yy.Op({op:'IS' , left:$1, right:$3}); }
	| Ee De Fe 
		{ $$ = new yy.Convert({expression:$1}) ; yy.extend($$,$3) ; }
	;

	: Ed 
		{ $$ = $1;}
	| Eo 
		{ $$ = $1;}
	| DW DU Ee DV 
		{ $$ = $3;}	
	;

	: DO { $$ = $1; }
	| DN { $$ = $1; }
	| DR { $$ = $1; }
	| DP { $$ = $1; }
	| DS { $$ = $1; }
	| DQ { $$ = $1; }
	;

	: AP 
		{ $$ = 'ALL'; }
	| Cd 
		{ $$ = 'SOME'; }
	| DW 
		{ $$ = 'ANY'; }
	;

/* PART TWO */

/* Cy */

	: Cy EI Ca E6 C6 Ee 
		{ $$ = new yy.Update({table:$2, columns:$4, where:$6}); }
	| Cy EI Ca E6 
		{ $$ = new yy.Update({table:$2, columns:$4}); }
	;

	: E7 
		{ $$ = [$1]; }
	| E6 Dd E7 
		{ $$ = $1; $1.push($3); }
	;

	: Ed DS Ee 
/* TODO Replace columnid with column */
		{ $$ = new yy.SetColumn({column:$1, expression:$3})}
	;

/* A5 */

	: A5 BO EI C6 Ee 
		{ $$ = new yy.Delete({table:$3, where:$5});}
	| A5 BO EI 
		{ $$ = new yy.Delete({table:$3});}
	;

/* Bb */

	: Bb FA EI C2 FC 
		{ $$ = new yy.Insert({into:$3, values: $5}); }
	| Bb FA EI A4 C2 
		{ $$ = new yy.Insert({into:$3, default: true}) ; }
	| Bb FA EI DU FF DV C2 FC 
		{ $$ = new yy.Insert({into:$3, columns: $5, values: $8}); }
	| Bb FA EI Dw 
		{ $$ = new yy.Insert({into:$3, select: $4}); }
	| Bb FA EI DU FF DV Dw 
		{ $$ = new yy.Insert({into:$3, columns: $5, select: $7}); }
	;

	:
	| Be 
	;
/*
	: EI 
		{ $$ = $1; }
	| Ew 
		{ $$ = $1; }
	| Eo 
		{ $$ = $1; }
	;
*/

	: DU FD DV 
		{ $$ = [$2]; }
	| GD 
		{ $$ = [$1]; }
	| Ew 
		{ $$ = [$1]; }
	| FC Dd DU FD DV 
		{$$ = $1; $1.push($4)}
	| FC Dd GD 
		{$$ = $1; $1.push($3)}
	| FC Dd Ew 
		{$$ = $1; $1.push($3)}
	;

	: Ee 
		{ $$ = [$1]; }
	| FD Dd Ee 
		{$$ = $1; $1.push($3)}
	;

	: Eq 
	| Es 
	| Er 
	| Et 
	| DateValue
	| Ew 
	;

	: Ed 
		{ $$ = [$1]; }
	| FF Dd Ed 
		{$$ = $1; $1.push($3)}
	;

/* Ax Ci */

	:  Ax FL FH FM EI DU FN DV FI 
		{ 
			$$ = new yy.CreateTable({table:$5}); 
			yy.extend($$,$2); 
			yy.extend($$,$3); 
			yy.extend($$,$4); 
			yy.extend($$,$7); 
			yy.extend($$,$9); 
		}
	| Ax FL FH FM EI 
		{ 
			$$ = new yy.CreateTable({table:$5}); 
			yy.extend($$,$2); 
			yy.extend($$,$3); 
			yy.extend($$,$4); 
		}		
;

	: Ci 
		{ $$ = undefined; }
	| Al 
		{ $$ = {class:true}; }
	;

	:
	| FJ 
	;

	: FJ FK 
	| FK 
	;

/* TODO: Remove this section */
	: A4 
	| BA DS Do 
	| Aa DS Eq 
	;

	: { $$ = undefined; }
	| Cl 
		{ $$ = {temporary:true}; }
	;

	: { $$ = undefined; }
	| BV By BI 
		{ $$ = {ifnotexists: true}; }
	;

	: Fc Dd FO 
		{ $$ = {columns: $1, constraints: $3}; }	
	| Fc 
		{ $$ = {columns: $1}; }	
	| AW Dw 
		{ $$ = {as: $2} }
	;

	: FP 
		{ $$ = [$1];}
	| FO Dd FP 
		{ $1.push($3); $$ = $1; }
	;

	: FQ FS 
		{ $2.constraintid = $1; $$ = $2; }
	| FQ FT 
		{ $2.constraintid = $1; $$ = $2; }
	| FQ FY 
		{ $2.constraintid = $1; $$ = $2; }
	| FQ FZ 
		{ $2.constraintid = $1; $$ = $2; }
	| FQ FR 
		{ $2.constraintid = $1; $$ = $2; }
	;

	:   { $$ = undefined; }
	| Ar Do 
		{ $$ = $2; }
	;

 	: Ak DU Ee DV 
		{ $$ = {type: 'CHECK', expression: $3}; }
	;

	: CE Bg Do? DU Fa DV 
		{ $$ = {type: 'PRIMARY KEY', columns: $5, clustered:($3+'').toUpperCase()}; }
	;

	: BN Bg DU Fa DV CL EI FU? 
	     FV 
		{ $$ = {type: 'FOREIGN KEY', columns: $4, fktable: $7, fkcolumns: $8}; }
	;

	: DU Fa DV 
		{ $$ = $2; }
	;

	:
		{ $$ = undefined; }
	| FW FX 
		{ $$ = undefined; }
	;

	: B1 A5 Bx AM 
		{$$ = undefined; }
	;
	: B1 Cy Bx AM 
		{$$ = undefined; }
	;

	: Cx Do? DU FF DV 
		{ 
			$$ = {type: 'UNIQUE', columns: $4, clustered:($2+'').toUpperCase()};
		}
	;

	: BZ Do DU FF DV 
	| Bg Do DU FF DV 
	;	
	: Do 
		{ $$ = [$1]; }
	| AH 
		{ $$ = [$1]; }
	| Fa Dd Do 
		{ $$ = $1; $1.push($3); }
	| Fa Dd AH 
		{ $$ = $1; $1.push($3); }
	;

/*
	: Do 
		{ $$ = [$1]; }
	| AH 
		{ $$ = [$1]; }
	| Fb Dd Do 
		{ $$ = $1; $1.push($3); }
	| Fb Dd AH 
		{ $$ = $1; $1.push($3); }
	;
*/
	: Fd 
		{ $$ = [$1];}
	| Fc Dd Fd 
		{ $1.push($3); $$ = $1; }
	;

	: Do Fe Fg 
		{ $$ = new yy.ColumnDef({columnid:$1}); yy.extend($$,$2); yy.extend($$,$3);}
	| Do ColumnConstraints
		{ $$ = new yy.ColumnDef({columnid:$1}); yy.extend($$,$2); }
	| Do 
		{ $$ = new yy.ColumnDef({columnid:$1, dbtypeid: ''}); }
	;

	: BA DU Ff Dd DA DV 
		{ $$ = {dbtypeid: $1, dbsize: $3, dbprecision: +$5} }
	| BA DU Ff DV 
		{ $$ = {dbtypeid: $1, dbsize: $3} }
	| BA 
		{ $$ = {dbtypeid: $1} }
	| BF DU FD DV 
		{ $$ = {dbtypeid: 'ENUM', enumvalues: $3} }
	;

	: DA 
		{ $$ = +$1; }
	| Bo 
		{ $$ = "MAX"; }
	;

	: {$$ = undefined}
	| Fh 
		{ $$ = $1; }
	;


	: Fh Fg 
		{ 
			yy.extend($1,$2); $$ = $1;
		}
	| Fg 
		{ $$ = $1; }
	;

	: DU Do DV 
		{ $$ = $2; }
	;

	: CE Bg 
		{$$ = {primarykey:true};}
	| BN Bg CL EI Fi?
		{$$ = {foreignkey:{table:$4, columnid: $5}};}
	| CL EI Fi?
		{$$ = {foreignkey:{table:$2, columnid: $3}};}
	| Aa DU Eq Dd Eq DV 
		{ $$ = {identity: {value:$3,step:$5}} }
	| Aa 
		{ $$ = {identity: {value:1,step:1}} }
	| A4 Ei 
		{$$ = {default:$2};}
	| A4 DU Ee DV 
		{$$ = {default:$3};}
	| Bz 
		{$$ = {null:true}; }
	| By Bz 
		{$$ = {notnull:true}; }
	| FR 
		{$$ = {check:$1}; }
	| Cx 
		{$$ = {unique:true}; }
	;

/* BB Ci */

	: BB (Ci|Al) Fl EI 
		{ $$ = new yy.DropTable({table:$4,type:$2}); yy.extend($$, $3); }
	;

	: { $$ = undefined; }
	| BV BI 
		{ $$ = {ifexists: true};}
	;

/* AQ Ci */

	: AQ Ci EI CO Cq Do 
		{ $$ = new yy.AlterTable({table:$3, renameto: $6});}
	| AQ Ci EI AN Ao Fd 
		{ $$ = new yy.AlterTable({table:$3, addcolumn: $6});}
	| AQ Ci EI Bs Ao Fd 
		{ $$ = new yy.AlterTable({table:$3, modifycolumn: $6});}
	| AQ Ci EI CO Ao Do Cq Do 
		{ $$ = new yy.AlterTable({table:$3, renamecolumn: $6, to: $8});}
	| AQ Ci EI BB Ao Do 
		{ $$ = new yy.AlterTable({table:$3, dropcolumn: $6});}
	;

	: CO Ci EI Cq Do 
		{ $$ = new yy.AlterTable({table:$3, renameto: $5});}
	;

/* DATABASES */

	: AZ Do A2 Do 
		{ $$ = new yy.AttachDatabase({databaseid:$4, engineid:$2.toUpperCase() });}
	| AZ Do A2 Do DU Ep DV 
		{ $$ = new yy.AttachDatabase({databaseid:$4, engineid:$2.toUpperCase(), args:$6 });}
	| AZ Do A2 Do AW Do 
		{ $$ = new yy.AttachDatabase({databaseid:$4, engineid:$2.toUpperCase(), as:$6 });}
	| AZ Do A2 Do DU Ep DV AW Do 
		{ $$ = new yy.AttachDatabase({databaseid:$4, engineid:$2.toUpperCase(), as:$9, args:$6});}
	;

	: A8 A2 Do 
		{ $$ = new yy.DetachDatabase({databaseid:$3});}
	;

	: Ax A2 FM Do 
		{ $$ = new yy.CreateDatabase({databaseid:$4 }); yy.extend($$,$4); }
	| Ax Do A2 FM Do Fr 
		{ $$ = new yy.CreateDatabase({engineid:$2.toUpperCase(), databaseid:$5, as:$6 }); yy.extend($$,$4); }
	| Ax Do A2 FM Do DU Ep DV Fr 
		{ $$ = new yy.CreateDatabase({engineid:$2.toUpperCase(), databaseid:$5, args:$7, as:$9 }); yy.extend($$,$4); }
	| Ax Do A2 FM Es Fr 
		{ $$ = new yy.CreateDatabase({engineid:$2.toUpperCase(), 
		    as:$6, args:[$5] }); yy.extend($$,$4); }
	;

	:	
		{$$ = undefined;}
	| AW Do 
		{ $$ = $1; }
	;
	
	: Cz A2 Do 
		{ $$ = new yy.UseDatabase({databaseid: $3 });}	
	| Cz Do 
		{ $$ = new yy.UseDatabase({databaseid: $2 });}	
	;

	: BB A2 Fl Do 
		{ $$ = new yy.DropDatabase({databaseid: $4 }); yy.extend($$,$3); }	
	| BB Do A2 Fl Do 
		{ $$ = new yy.DropDatabase({databaseid: $5, engineid:$2.toUpperCase() }); yy.extend($$,$4); }	
	| BB Do A2 Fl Es 
		{ $$ = new yy.DropDatabase({databaseid: $5, engineid:$2.toUpperCase() }); yy.extend($$,$4); }	
	;

/* INDEXES */

	:
	 Ax BZ Do B1 EI DU EW DV 
		{ $$ = new yy.CreateIndex({indexid:$3, table:$5, columns:$7})}
	| 

 Ax Cx BZ Do B1 EI DU EW DV 
		{ $$ = new yy.CreateIndex({indexid:$4, table:$6, columns:$8, unique:true})}
	;

	: BB BZ Do 
		{ $$ = new yy.DropIndex({indexid:$3});}
	;

/* Cc COMMAND */

	: Cc A2 
		{ $$ = new yy.ShowDatabases();}
	| Cc A2 Bk Es 
		{ $$ = new yy.ShowDatabases({like:$4});}
	| Cc Do A2 
		{ $$ = new yy.ShowDatabases({engineid:$2.toUpperCase() });}
	| Cc Do A2 Bk Es 
		{ $$ = new yy.ShowDatabases({engineid:$2.toUpperCase() , like:$5});}
	;

	: Cc Ci 
		{ $$ = new yy.ShowTables();}
	| Cc Ci Bk Es 
		{ $$ = new yy.ShowTables({like:$4});}
	| Cc Ci BO Do 
		{ $$ = new yy.ShowTables({databaseid: $4});}
	| Cc Ci BO Do Bk Es 
		{ $$ = new yy.ShowTables({like:$6, databaseid: $4});}
	;

	: Cc Ao BO EI 
		{ $$ = new yy.ShowColumns({table: $4});}
	| Cc Ao BO EI BO Do 
		{ $$ = new yy.ShowColumns({table: $4, databaseid:$6});}
	;

	: Cc BZ BO EI 
		{ $$ = new yy.ShowIndex({table: $4});}
	| Cc BZ BO EI BO Do 
		{ $$ = new yy.ShowIndex({table: $4, databaseid: $6});}
	;

	: Cc Ax Ci EI 
		{ $$ = new yy.ShowCreateTable({table: $4});}
	| Cc Ax Ci EI BO Do 
		{ $$ = new yy.ShowCreateTable({table: $4, databaseid:$6});}
	;

	:  Ax FL C4 FM EI DU FF DV AW Dw F2?
		{
			$$ = new yy.CreateTable({table:$5,view:true,select:$10,viewcolumns:$7}); 
			yy.extend($$,$2); 
			yy.extend($$,$4); 
		}
	| Ax FL C4 FM EI AW Dw F2?
		{ 
			$$ = new yy.CreateTable({table:$5,view:true,select:$7}); 
			yy.extend($$,$2); 
			yy.extend($$,$4); 
		}
	;

	: C8 CI B2 
	| C8 Ak B5 
	| C8 Ak B5 Ar FP 
	;


	: BB C4 Fl EI 
		{ $$ = new yy.DropTable({table:$4, view:true}); yy.extend($$, $3); }
	;
/*
	: A3 Do A1 FOR Dw 
		{ $$ = new yy.DeclareCursor({cursorid:$2, select:$5}); }
	;

	: B4 Do 
		{ $$ = new yy.OpenCursor({cursorid:$2}); }
	;

	: Am Do 
		{ $$ = new yy.CloseCursor({cursorid:$2}); }
	;

	: BL F8 BO Do 
		{ $$ = new yy.FetchCursor({cursorid:$4}); yy.extend($$,$2); }
	;

	: Bu 
		{ $$ = {direction: 'NEXT'}; }
	| CG 
		{ $$ = {direction: 'PRIOR'}; }
	| BM 
		{ $$ = {direction: 'FIRST'}; }
	| Bh 
		{ $$ = {direction: 'LAST'}; }
	| AL Eq 
		{ $$ = {direction: 'ABSOLUTE', num:$2}; }
	| CM Eq 
		{ $$ = {direction: 'RELATIVE', num:$2}; }
	;
*/

	: BU Es 
		{ $$ = new yy.Help({subject:$2.value.toUpperCase()} ) ; }
	| BU 
		{ $$ = new yy.Help() ; }
	;

	: DS Ee 
		{ $$ = new yy.ExpressionStatement({expression:$2}); }
	;

	: Ce Es 
		{ $$ = new yy.Source({url:$2.value}); }
	;

	: AX GD 
		{ $$ = new yy.Assert({value:$2}); }
	| AX Ei 
		{ $$ = new yy.Assert({value:$2.value}); }
	| AX AH Dd GD 
		{ $$ = new yy.Assert({value:$4, message:$2}); }
	;

	: DW DU Ee DV 
		{ $$ = $3; }
	| DW Es 
		{ $$ = $2.value; }
	| DW Eq 
		{ $$ = +$2.value; }
	| DW Er 
		{ $$ = (!!$2.value); }
	| DW Ew 
		{ $$ = $2; }
	| GG 
		{ $$ = $1; }
	| DW GG 
		{ $$ = $2; }
	| AC GH 
		{ $$ = $2; }
	;

	: GD 
		{ $$ = $1; }
	| GF 
		{ $$ = $1; }
	;

	: Eq 
		{ $$ = +$1.value; }
	| Es 
		{ $$ = ""+$1.value; }
	| Er 
		{ $$ = $1.value; }
	| Ed 
		{ $$ = $1; }	
	| Et 
		{ $$ = $1.value; }
	| Ew 
		{ $$ = $1; }
	| Eo 
		{ $$ = $1; }
	| DU Ee DV 
		{ $$ = $2}
	;


	: DX GI DY 
		{ $$ = $2; }
	| DX GI Dd DY 
		{ $$ = $2; }
	| DX DY 
		{ $$ = {}; }
	;

	: GK DZ 
		{ $$ = $1; } 
	| GK Dd DZ 
		{ $$ = $1; } 
	| DZ 
		{ $$ = []; }
	;

	: GI Dd GJ 
		{ yy.extend($1,$3); $$ = $1; }
	| GJ 
		{ $$ = $1; }
	;

	: AH Df GE 
		{ $$ = {}; $$[$1.substr(1,$1.length-2)] = $3; }
	| DA Df GE 
		{ $$ = {}; $$[$1] = $3; }		
	| Do Df GE 
		{ $$ = {}; $$[$1] = $3; }		
/*	| AH Df Ew 
		{ $$ = {}; $$[$1.substr(1,$1.length-2)] = $3; }	
	| DA Df Ew 
		{ $$ = {}; $$[$1] = $3; }		
	| BA Df Ew 
		{ $$ = {}; $$[$1] = $3; }		
*/	;

	: GK Dd GE 
		{ $1.push($3); $$ = $1; }
	| GE 
		{ $$ = [$1]; }
	;

	: Ca Do GP 
		{ $$ = new yy.SetVariable({variable:$2.toLowerCase(), value:$3});}
	| Ca GM Do DS Ee 
		{ $$ = new yy.SetVariable({variable:$3, expression:$5, method:$2});}
	| Ca GM Do GN DS Ee 
		{ $$ = new yy.SetVariable({variable:$3, props: $4, expression:$6, method:$2});}
	;

	: DW 
		{$$ = '@'; }
	| Dh 
		{$$ = '$'; }
	;

	: GN DC GO 
		{ $1.push($3); $$ = $1; }
	| DC GO 
		{ $$ = [$2]; }
	;

	: Do 
		{ $$ = $1; }
	| DA 
		{ $$ = $1; }
	| DU Ee DV 
		{ $$ = $2; }
	;

	: B1 
		{ $$ = true; }
	| B0 
		{ $$ = false; }
	;

	: Aq Cs 
		{ $$ = new yy.CommitTransaction(); }
	;

	: CT Cs 
		{ $$ = new yy.RollbackTransaction(); }
	;

	: Ac Cs 
		{ $$ = new yy.BeginTransaction(); }
	;

/*
	: Cg 
		{ $$ = new yy.Store(); }
	| Cg Do 
		{ $$ = new yy.Store({databaseid: $2}); }
	;

	: CQ 
		{ $$ = new yy.Restore(); }
	| CQ Do 
		{ $$ = new yy.Restore({databaseid: $2}); }
	;	
*/

	: 
/* BV Ee Dr 
		{ $$ = new yy.If({expression:$2,thenstat:$3}); 
			if($3.exists) $$.exists = $3.exists;
			if($3.queries) $$.queries = $3.queries;
		}
	| 

*/
 BV Ee Dr GW 
		{ $$ = new yy.If({expression:$2,thenstat:$3, elsestat:$4}); 
			if($3.exists) $$.exists = $3.exists;
			if($3.queries) $$.queries = $3.queries;
		}

	| BV Ee Dr 
		{ 
			$$ = new yy.If({expression:$2,thenstat:$3}); 
			if($3.exists) $$.exists = $3.exists;
			if($3.queries) $$.queries = $3.queries;
		}
	;

	: BG Dr 
		{$$ = $2;}
	;

	: C7 Ee Dr 
		{ $$ = new yy.While({expression:$2,loopstat:$3}); 
			if($3.exists) $$.exists = $3.exists;
			if($3.queries) $$.queries = $3.queries;
		}
	;

	: At 
		{ $$ = new yy.Continue(); } 
	;

	: Ae 
		{ $$ = new yy.Break(); } 
	;

	: Ac Dp BE 
		{ $$ = new yy.BeginEnd({statements:$2}); } 
	;

	: CF Ep 
		{ $$ = new yy.Print({exprs:$2});}	
	| CF Dw 
		{ $$ = new yy.Print({select:$2});}	
	;

	: CP Gf 
		{ $$ = new yy.Require({paths:$2}); }
	| CP Gg 
		{ $$ = new yy.Require({plugins:$2}); }
	;

/* For test plugin system */

	: BC {$$ = $1.toUpperCase(); }
	| Do {$$ = $1.toUpperCase(); }
	;

	: BC Ee 
		{ $$ = new yy.Echo({expr:$2}); }
	;


	: Gf Dd Es 
		{ $1.push($3); $$ = $1; }
	| Es 
		{ $$ = [$1]; }
	;

	: Gg Dd Gd 
		{ $1.push($3); $$ = $1; }
	| Gd 
		{ $$ = [$1]; }
	;


	: A3 Gi 
		{ $$ = new yy.Declare({declares:$2}); }
	;

	: Gg 
		{ $$ = [$1]; }
	| Gi Dd Gg 
		{ $1.push($3); $$ = $1; }
	;

	: DW Do Fe 
		{ $$ = {variable: $2}; yy.extend($$,$3); }
	| DW Do AW Fe 
		{ $$ = {variable: $2}; yy.extend($$,$4); }
	| DW Do Fe DS Ee 
		{ $$ = {variable: $2, expression:$5}; yy.extend($$,$3);}
	| DW Do AW Fe DS Ee 
		{ $$ = {variable: $2, expression:$6}; yy.extend($$,$4);}
	;

	: Cv Ci EI 
		{ $$ = new yy.TruncateTable({table:$3});}
	;

	: Bp Gm Gn Go Gp Gu 
		{ 
			$$ = new yy.Merge(); yy.extend($$,$2); yy.extend($$,$3); 
			yy.extend($$,$4);
			yy.extend($$,{matches:$5});yy.extend($$,$6);
		}
	;

	: EG 
		{ $$ = {into: $1}; }
	| Be EG 
		{ $$ = {into: $2}; }
	;

	: C1 EG 
		{ $$ = {using: $2}; }
	;

	: B1 Ee 
		{ $$ = {on:$2}; }
	;

	: Gp Gq 
		{ $$ = $1; $$.push($2); }
	| Gp Gs 
		{ $$ = $1; $$.push($2); }
	| Gq 
		{ $$ = [$1]; }
	| Gs 
		{ $$ = [$1]; }
	;

	: C5 Bm Co Gr 
		{ $$ = {matched:true, action:$4} }
	| C5 Bm AK Ee Co Gr 
		{ $$ = {matched:true, expr: $4, action:$6} }
	;

	: A5 
		{ $$ = {delete:true}; }
	| Cy Ca E6 
		{ $$ = {update:$3}; }
	;

	: C5 By Bm Co Gt 
		{ $$ = {matched:false, bytarget: true, action:$5} }
	| C5 By Bm Ah Ck Co Gt 
		{ $$ = {matched:false, bytarget: true, action:$7} }
	| C5 By Bm AK Ee Co Gt 
		{ $$ = {matched:false, bytarget: true, expr:$5, action:$7} }
	| C5 By Bm Ah Ck AK Ee Co Gt 
		{ $$ = {matched:false, bytarget: true, expr:$7, action:$9} }
	| C5 By Bm Ah Ce Co Gt 
		{ $$ = {matched:false, bysource: true, action:$7} }
	| C5 By Bm Ah Ce AK Ee Co Gr 
		{ $$ = {matched:false, bysource: true, expr:$7, action:$9} }
	;

	: Bb C2 FC 
		{ $$ = {insert:true, values:$3}; }
	| Bb DU FF DV C2 FC 
		{ $$ = {insert:true, values:$6, columns:$3}; }
	| Bb A4 C2 
		{ $$ = {insert:true, defaultvalues:true}; }
	| Bb DU FF DV A4 C2 
		{ $$ = {insert:true, defaultvalues:true, columns:$3}; }
	;

	: 
	| OUTPUT Ea 
		{ $$ = {output:{columns:$2}} }
	| OUTPUT Ea Be GM Do 
		{ $$ = {output:{columns:$2, intovar: $5, method:$4}} }
	| OUTPUT Ea Be EI 
		{ $$ = {output:{columns:$2, intotable: $4}} }
	| OUTPUT Ea Be EI DU FF DV 
		{ $$ = {output:{columns:$2, intotable: $4, intocolumns:$6}} }
	;

/*
	: Ax C3 
		{ $$ = new yy.CreateVertex(); }
	| Ax C3 Ca E6 
		{ $$ = new yy.CreateVertex({set: $4}); }
	| Ax C3 Do Ca E6 
		{ $$ = new yy.CreateVertex({class:$3, set: $5}); }
	| Ax C3 As Ep 
		{ $$ = new yy.CreateVertex({content: $4}); }
	| Ax C3 Do As Ep 
		{ $$ = new yy.CreateVertex({class:$3, content: $5}); }
	| Ax C3 Do Dw 
		{ $$ = new yy.CreateVertex({class:$3, select:$4}); }
	| Ax C3 Dw 
		{ $$ = new yy.CreateVertex({select:$4}); }
	;
*/
	: Ax C3 Do? Gx? Es? Gy 
		{
			$$ = new yy.CreateVertex({class:$3,sharp:$4, name:$5}); 
			yy.extend($$,$6); 
		}
	;

	: DD Do 
		{ $$ = $2; }
	;

	: 
		{$$ = undefined; }
	| Ca E6 
		{ $$ = {sets:$2}; }
	| As Ep 
		{ $$ = {content:$2}; }
	| Dw 
		{ $$ = {select:$1}; }
	;

	: Ax BD Es? BO Ee Cq Ee Gy 
		{
			$$ = new yy.CreateEdge({from:$5,to:$7,name:$3});
			yy.extend($$,$8); 
		}
/*	| Ax BD Es? BO Ee Cq Ee 
		{
			$$ = new yy.CreateEdge({from:$5,to:$7,name:$3});
		}
*/	;


/*
	: Ax BD Do? 
 BO Ee 
 Cq Ee 
	(SET E6 | As Expression)?

	{ 
		$$ = new yy.CreateEdge({class:$3, from:$5, to:$7}); 
		if(typeof $8 != 'undefined') {
			$$.type = $8;
			$$.expre = $9;
		}
	}

	;
*/

	: Ax BQ G2 
		{ $$ = new yy.CreateGraph({graph:$3}); }
	| Ax BQ BO Ee 
		{ $$ = new yy.CreateGraph({from:$4}); }
	;

	: G2 Dd G3 
		{ $$ = $1; $$.push($3); }
	| G3 
		{ $$ = [$1]; }
	;
	: G7 GD? G5? 
		{ 
			$$ = $1; 
			if($2) $$.json = new yy.Json({value:$2});
			if($3) $$.as = $3;
		}
	| (G7|G4) DO G7 GD? G5? DO (G7|G4) 
		{ 
			$$ = {source:$1, target: $7};
			if($4) $$.json = new yy.Json({value:$4});
			if($5) $$.as = $5;
			yy.extend($$,$3);
			;
		}
	| Do DU G2 DV 
	;

	: GM Do 
		{ $$ = {vars:$2, method:$1}; }
	;

	: AW GM Do 
		{ $$ = $3; }
	;

	: GM Do 
		{ $$ = $2; }
	;

	:  Do? G9? AH? G8? 
		{ 
			var s3 = $3;
			$$ = {prop:$1, sharp:$2, name:(typeof s3 == 'undefined')?undefined:s3.substr(1,s3.length-2), class:$4}; 
		}
	;

	: Df Do 
		{ $$ = $2; }
	;

	: DD Do 
		{ $$ = $2; }
	| DD DA 
		{ $$ = +$2; }
	;

	: A5 C3 Ee (WHERE Expression)?
	;

	: A5 BD Ee (FROM Expression)? (TO Expression)? (WHERE Expression)?
	;

	: HE Da HD 
		{ $$ = new yy.AddRule({left:$1, right:$3}); }
	| Da HD 
		{ $$ = new yy.AddRule({right:$2}); }
	;

	: HD Dd HE 
		{ $$ = $1; $$.push($3); } 
	| HE 
		{ $$ = [$1]; }
	;

	: Do 
		{ $$ = new yy.Term({termid:$1}); }
	| Do DU HD DV 
		{ $$ = new yy.Term({termid:$1,args:$3}); }
	;

	: Db Eo 
	;
