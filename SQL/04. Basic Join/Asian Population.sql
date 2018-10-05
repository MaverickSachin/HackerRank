Select 
	Sum(C1.Population)
From City C1
Inner Join Country C2
On C1.CountryCode = C2.Code
Where C2.Continent = N'Asia';
