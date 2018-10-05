Select
	Cast(Sum(Lat_N) As Decimal(9, 4))
From Station
Where Lat_N > 38.7880 And Lat_N < 137.2345;
