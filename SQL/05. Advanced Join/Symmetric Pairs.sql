;With CTE
As
(
	Select X, Y,
		Row_Number() Over(Order By X) As RowNum
	From Functions
)
Select 
	Distinct T1.X, T1.Y
From CTE T1
Inner Join CTE T2
On T1.X = T2.Y And T1.Y = T2.X
Where T1.RowNum <> T2.RowNum
And T1.X <= T1.Y
Order By T1.X;