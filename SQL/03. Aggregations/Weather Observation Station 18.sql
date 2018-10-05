Select
	Cast(
		Abs(Min(Lat_N) - Max(Lat_N)) + Abs(Min(Long_W) - Max(Long_W))
	As Decimal(9, 4))
From Station;
