Declare @Count Int, @i Int, @Result Varchar(Max) = REPLICATE(CAST('X' AS VARCHAR(MAX)), 92681); 
Declare @Number Int
Set @Number = 2
While(@Number <= 1000)
Begin
	Set @Count = 1
	Set @i = 0
	If (@Number = 2)
		Set @Result = Cast(@Number as Varchar(Max)) + ' & '
	Else
	Begin
		While (@Count <= @Number)
		Begin
			If(@Number % @Count = 0)
				Set @i = @i + 1
			Set @Count = @Count + 1
		End
		If(@i = 2)
			Set @Result = @Result + Cast(@Number as Varchar(Max)) + ' & '
	End
	Set @Number = @Number + 1
End
Select Left(@Result, Len(@Result) -1)