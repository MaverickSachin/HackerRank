Create Table Occupations
(
	[Name] Varchar(20),
	Occupation Varchar(20)
);


Insert Into Occupations Values
('Samantha', 'Doctor'),
('Julia', 'Actor'),
('Maria', 'Actor'),
('Meera', 'Singer'),
('Ashley', 'Professor'),
('Ketty', 'Professor'),
('Christeen', 'Professor'),
('Jane', 'Actor'),
('Jenny', 'Doctor'),
('Priya', 'Singer')

Select * From Occupations;

------------------------------------------------

Select 
	[Name] + '(' +  Left(Occupation, 1) + ')' 
From Occupations
Order By [Name]

Select 
	'There are a total of ' + Cast(Count(Occupation) As Varchar) + ' ' + Lower(Occupation) + 's.'
From Occupations
Group By Occupation
Order By Count(Occupation), Occupation;
