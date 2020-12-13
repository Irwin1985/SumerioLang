&& ======================================================================== &&
&& Sumerio Lexer
&& ======================================================================== &&
Define Class Lexer As Custom
	Reader 	  = .Null.
	FoxLib 	  = .Null.
	Token  	  = .Null.
	TokenList = .Null.
&& ======================================================================== &&
&& Function Init
&& ======================================================================== &&
	Function init
		Set Procedure To "FoxLibManager" Additive
		This.FoxLib = CreateObject("FoxLibManager")
		This.FoxLib.AddBoth("FoxQueue")
		this.FoxLib.AddBoth("StreamReader")
		This.FoxLib.AddBoth("Token")
		This.FoxLib.AddBoth("TokenList")
		This.FoxLib.LoadProcedures()
		This.TokenList = CreateObject("TokenList")
		This.Token = CreateObject("Token", This.TokenList)
	EndFunc
EndDefine