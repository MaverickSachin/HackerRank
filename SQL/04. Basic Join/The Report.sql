Create Table Students
(
	ID Int,
	Name Varchar(100),
	Marks Int
);

Insert Into Students Values
(1, 'Julia', 88),
(2, 'Samantha', 68),
(3, 'Maria', 99),
(4, 'Scarlet', 78),
(5, 'Ashley', 63),
(6, 'Jane', 81);

Select * From Students;

------------------------------------------

Create Table Grades
(
	Grade Int,
	Min_Mark Int,
	Max_Mark Int
);

Insert Into Grades Values
(1, 0, 9),
(2, 10, 19),
(3, 20, 29),
(4, 30, 39),
(5, 40, 49),
(6, 50, 59),
(7, 60, 69),
(8, 70, 79),
(9, 80, 89),
(10, 90, 100);

Select * From Grades;

------------------------------------

Select 
	Case
		When G.Grade >= 8 Then S.Name
		Else Null
	End As Name,
	G.Grade,
	S.Marks
From Students S
Inner Join Grades G
On S.Marks >= G.Min_Mark And S.Marks <= G.Max_Mark
Order By G.Grade Desc, S.Name;
