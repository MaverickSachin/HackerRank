Create Table tblEmployee
(
	employee_id Int,
	name Varchar(20),
	months Int,
	salary Int
);

Insert Into tblEmployee Values
(12228, 'Rose', 15, 1968),
(33645, 'Angela', 1, 3443),
(45692, 'Frank', 17, 1608),
(56118, 'Patrick', 7, 1345),
(59725, 'Lisa', 11, 2330),
(74197, 'Kimberly', 16, 4372),
(78454, 'Bonnie', 8, 1771),
(83565, 'Michael', 6, 2017),
(98607, 'Todd', 5, 3396),
(99989, 'Joe', 9, 3573);

Select * From tblEmployee;

-------------------------------------------

Select Top(1)
	(months * salary) As Total_Earnings, 
	Count(employee_id)
From tblEmployee
Group By (months * salary)
Order By Total_Earnings Desc;

