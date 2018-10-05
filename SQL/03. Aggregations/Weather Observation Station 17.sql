Select
	Cast(Sum(Long_W) As Decimal(9, 4))
From Station
Where Lat_N = (Select Min(Lat_N) From Station Where Lat_N > 38.7880);
