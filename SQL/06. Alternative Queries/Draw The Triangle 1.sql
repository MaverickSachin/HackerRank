Declare @Count Int = 20;
While (@Count > 0)
Begin
	Print Replicate(' * ', @Count);
	Set @Count = @Count - 1
End