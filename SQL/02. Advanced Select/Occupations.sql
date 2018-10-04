;With PivotData
As
(
	Select
		Row_Number() Over(Partition By Occupation Order By Name) As RowNum, -- grouping element
		[Name], -- aggregating element
		Occupation -- spreading element
	From Occupations
)
Select 
	Doctor, 
	Professor, 
	Singer, 
	Actor 
From PivotData
Pivot (Max(Name) For Occupation In (Doctor, Professor, Singer, Actor)) As P;
