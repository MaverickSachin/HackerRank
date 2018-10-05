Select
	Cast(Min(Lat_N) As Decimal(9, 4))
From Station
Where Lat_N > 38.7880;
