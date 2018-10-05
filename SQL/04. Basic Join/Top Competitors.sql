Create Table Hackers
(
	hacker_id Int,
	name Varchar(20)
);

Insert Into Hackers Values
(5580, 'Rose'),
(8439, 'Angela'),
(27205, 'Frank'),
(52243, 'Patrick'),
(52348, 'Lisa'),
(57645, 'Kimberly'),
(77726, 'Bonnie'),
(83082, 'Michael'),
(86870, 'Todd'),
(90411, 'Joe');

Select * From Hackers;

----------------------------------------------

Create Table Difficulty
(
	difficulty_level Int,
	score Int
);

Insert Into Difficulty Values
(1, 20),
(2, 30),
(3, 40),
(4, 60),
(5, 80),
(6, 100),
(7, 120);

Select * From Difficulty;

----------------------------------------------

Create Table Challenges
(
	challenge_id Int,
	hacker_id Int,
	difficulty_level Int
);

Insert Into Challenges Values
(4810, 77726, 4),
(21089, 27205, 1),
(36566, 5580, 7),
(66730, 52243, 6),
(71055, 52243, 2);

Select * From Challenges;

----------------------------------------------

Create Table Submissions
(
	submission_id Int,
	hacker_id Int,
	challenge_id Int,
	score Int
);

Insert Into Submissions Values
(68628, 77726, 36556, 30),
(65300, 77726, 21089, 10),
(40326, 52243, 36556, 77),
(8941, 27205, 4810, 4),
(83554, 77726, 66730, 30),
(43353, 52243, 66730, 0),
(55385, 52348, 71055, 20),
(39784, 27205, 71055, 23),
(94613, 86870, 71055, 30),
(45788, 52348, 36566, 0),
(93058, 86870, 36566, 30),
(7344, 8439, 4810, 36),
(523, 5580, 71055, 4),
(49105, 52348, 66730, 0),
(55877, 57645, 66730, 80),
(38355, 27205, 66730, 35),
(3924, 8439, 36566, 80),
(97397, 90411, 66730, 100),
(84162, 83082, 4810, 40),
(97431, 90411, 71055, 30);

Select * From Submissions;

----------------------------------------------

Select 
	H.hacker_id,
	H.name
From Hackers H
Inner Join Submissions S
On H.hacker_id = S.hacker_id
Inner Join Challenges C
On S.challenge_id = C.challenge_id
Inner Join Difficulty D
On C.difficulty_level = D.difficulty_level
And D.score = S.score
Group By H.hacker_id, H.name
Having Count(H.hacker_id) > 1
Order By Count(H.hacker_id) Desc, H.hacker_id;
