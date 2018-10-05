Select
	Cast(Long_W As Decimal(9, 4))
From Station
Where Lat_N = (Select Max(Lat_N) From Station Where Lat_N < 137.2345);

