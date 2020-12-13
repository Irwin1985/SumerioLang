&& ======================================================================== &&
&& Class Token
&& ======================================================================== &&
Define Class Token As Custom
* Hidden properties (for debugging purposes)
	Hidden BaseClass, ;
		class, ;
		classlibrary, ;
		comment, ;
		controlcount, ;
		controls, ;
		height, ;
		helpcontextid, ;
		left, ;
		name, ;
		objects, ;
		parent, ;
		parentclass, ;
		picture, ;
		tag, ;
		top, ;
		whatsthishelpid, ;
		width
	oTokenList 	 = .Null.

* Token properties
	Code 		 = 0
	LineNumber 	 = 0
	ColumnNumber = 0
	Value 		 = .Null.

&& ======================================================================== &&
&& Function Init
&& ======================================================================== &&
	Function Init(toTokenList As Object)
		If !Isnull(toTokenList)
			This.SetTokenList(toTokenList)
		Endif
	Endfunc
&& ======================================================================== &&
&& Function SetTokenList
&& ======================================================================== &&
	Function SetTokenList(toTokenList As Object)
		If !Isnull(toTokenList)
			This.oTokenList = toTokenList
		Endif
	Endfunc
&& ======================================================================== &&
&& Function This_Access
&& ======================================================================== &&
	Function This_Access(tcMember As String)
		If Pemstatus(This, tcMember, 5)
			Return This
		Else
			Return This.oTokenList
		Endif
	Endfunc
&& ======================================================================== &&
&& Function Clone
&& ======================================================================== &&
	Function Clone As Object
		Local loClone As Object
		loClone = Createobject("Empty")
		=AddProperty(loClone, "LineNumber",   This.LineNumber)
		=AddProperty(loClone, "ColumnNumber", This.ColumnNumber)
		=AddProperty(loClone, "Code", 		  This.Code)
		=AddProperty(loClone, "Value", 		  This.Value)
		Return loClone
	Endfunc
&& ======================================================================== &&
&& Function Update
&& ======================================================================== &&
	Function Update (toRefToken As Object) As Void
		With This
			.LineNumber   = toRefToken.LineNumber
			.ColumnNumber = toRefToken.ColumnNumber
			.Code 		  = toRefToken.Code
			.Value 		  = toRefToken.Value
		Endwith
	Endfunc
Enddefine