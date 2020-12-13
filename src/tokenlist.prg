&& ======================================================================== &&
&& TokenList Template Class
&& Use this class as a template for listing your tokens literals.
&& ======================================================================== &&
Define Class TokenList As Custom
	EndOfStream 		= 0
	Number				= 1
	Variable			= 2
	Let					= 3
	Equal				= 4
	lParen				= 5
	rParen				= 6
	plus				= 7
	minus				= 8
	mult				= 9
	div					= 10
	power				= 11
&& ======================================================================== &&
&& ToString
&& ======================================================================== &&
	Function ToString(toToken As Object) As String
		lcTokenStr = ""
		With This
			Do Case
			Case toToken.Code = This.EndOfStream
				lcTokenStr = "EndOfStream: <'EOF'>"
			Case toToken.Code = This.Number 
				lcTokenStr = "number: <'" + Transform(toToken.Value) + "'>"
			Case toToken.Code = This.Variable
				lcTokenStr = "variable: <'" + Transform(toToken.Value) + "'>"
			Case toToken.Code = This.Let
				lcTokenStr = "keyword: <'let'>"
			Case toToken.Code = This.Equal
				lcTokenStr = "special: <'='>"
			Case toToken.Code = This.LParen
				lcTokenStr = "Left Parenthesis: <'('>"
			Case toToken.Code = This.RParen
				lcTokenStr = "Right Parenthesis: <')'>"
			Case toToken.Code = This.Plus
				lcTokenStr = "Plus: <'+'>"
			Case toToken.Code = This.Minus
				lcTokenStr = "Minus: <'-'>"
			Case toToken.Code = This.Mult
				lcTokenStr = "Multiplication: <'*'>"
			Case toToken.Code = This.Div
				lcTokenStr = "Division: <'/'>"
			Case toToken.Code = This.Div
				lcTokenStr = "Power: <'^'>"
			Otherwise
				lcTokenStr = "unknown token code: <'" + Transform(toToken.Code) + "'>"
			Endcase
		Endwith
		Return lcTokenStr
	Endfunc
Enddefine