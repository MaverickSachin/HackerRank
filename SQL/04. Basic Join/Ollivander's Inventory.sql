Create Table Wands
(
	ID Int,
	Code Int,
	Coins_Needed Int,
	[Power] Int
);

Insert Into Wands Values
(1, 4, 3688, 8),
(2, 3, 9365, 3),
(3, 3, 7187, 10),
(4, 3, 734, 8),
(5, 1, 6020, 2),
(6, 2, 6773, 7),
(7, 3, 9873, 9),
(8, 3, 7721, 7),
(9, 1, 1647, 10),
(10, 4, 504, 5),
(11, 2, 7587, 5),
(12, 5, 9897, 10),
(13, 3, 4651, 8),
(14, 2, 5408, 1),
(15, 2, 6018, 7),
(16, 4, 7710, 5),
(17, 2, 8798, 7),
(18, 2, 3312, 3),
(19, 4, 7651, 6),
(20, 5, 5689, 3);

Select * From Wands;

----------------------------------------------------

Create Table Wands_Property
(
	Code Int,
	Age Int,
	Is_Evil Int
);

Insert Into Wands_Property Values
(1, 45, 0),
(2, 40, 0),
(3, 4, 1),
(4, 20, 0),
(5, 17, 0);

----------------------------------------------------

;With CTE
As
(
	Select 
		W.ID,
		WP.Age,
		W.Coins_Needed,
		W.[Power],
		ROW_NUMBER() Over(Partition By W.[Power], WP.Age Order By W.Coins_Needed) As RowNum
	From Wands W
	Inner Join Wands_Property WP
	On W.Code = WP.Code
	Where WP.Is_Evil = 0
)
Select
	ID,
	Age,
	Coins_Needed,
	[Power]
From CTE
Where RowNum = 1
Order By [Power] Desc, Age Desc;
