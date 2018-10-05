Select Cast(
((
	(Select Max(Lat_N) From
	(Select Top 50 Percent Lat_N From Station Order By Lat_N) As BottomHalf)
	+
	(Select Min(Lat_N) From
	(Select Top 50 Percent Lat_N From Station Order By Lat_N Desc) As UpperHalf)
) / 2)
As Decimal(9, 4));
