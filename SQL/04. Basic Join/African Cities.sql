Select 
	C1.Name
From City C1
Inner Join Country C2
On C1.CountryCode = C2.Code
Where C2.Continent = N'Africa';
