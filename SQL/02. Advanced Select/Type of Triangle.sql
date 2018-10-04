Create Table Triangles
(
	[A] Int,
	[B] Int,
	[C] Int
);


Insert Into Triangles Values 
(20, 20, 23),
(20, 20, 20),
(20, 21, 22),
(13, 14, 30);

Select * From Triangles;

------------------------------------------------------------

Select
	Case
		When (A + B) > C And (B + C) > A And (A + C) > B Then
			Case
				When A = B And B = C And A = C Then 'Equilateral'
				When A = B Or B = C Or A = C Then 'Isosceles'
				Else 'Scalene'
			End
		Else 'Not A Triangle'
	End
From Triangles;

------------------------------------------------------------