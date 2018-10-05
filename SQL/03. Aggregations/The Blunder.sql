Create Table Employees
(
	ID Int,
	[Name] Varchar(20),
	Salary Int
);

Insert Into Employees Values
(1, 'Kristeen', 1420),
(2, 'Ashley', 2006),
(3, 'Julia', 2210),
(4, 'Maria', 3000);

Select * From Employees;

---------------------------------------------

Select
	Ceiling(Avg(Cast(Salary As Decimal(9,2))) - Avg(Cast(Replace(Cast(Salary As Varchar(20)), '0', '') As Decimal(9,2))))
From Employees;

