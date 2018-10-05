Select
	Cast(
		SQRT(
			Square(Min(Lat_N) - Max(Lat_N)) + 
			Square(Min(Long_W) - Max(Long_W))
			)
	As Decimal(9, 4))
From Station;
