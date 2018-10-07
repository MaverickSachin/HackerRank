Declare @Count Int = 1;
While (@Count <= 20)
Begin
	Print Replicate(' * ', @Count);
	Set @Count = @Count + 1
End