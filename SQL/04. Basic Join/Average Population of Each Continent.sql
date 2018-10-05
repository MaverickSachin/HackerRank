Select 
	C2.Continent,
	Floor(Avg(C1.Population))
From City C1
Inner Join Country C2
On C1.CountryCode = C2.Code
Group By C2.Continent;
