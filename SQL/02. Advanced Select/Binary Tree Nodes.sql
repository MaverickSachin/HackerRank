Create Table BST
(
	[N] Int,
	[P] Int
);

Insert Into BST Values
(1, 2),
(3, 2),
(6, 8),
(9, 8),
(2, 5),
(8, 5),
(5, NULL);

-----------------------------------------

Select 
	Distinct B1.N,
	Case
		When B1.P Is Null Then 'Root'
		When B2.N Is Null Then 'Leaf'
		When B1.N = B2.P Then 'Inner'
	End
From BST B1
Left Join BST B2
On B1.N = B2.P
Order By B1.N;
