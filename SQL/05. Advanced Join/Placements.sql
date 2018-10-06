Select
	S.Name
From Students S
Inner Join Packages P
On S.ID = P.ID
Inner Join Friends F
On S.ID = F.Id
Inner Join Packages P2
On P2.ID = F.Friend_Id
Where P.Salary < P2.Salary
Order By P2.Salary;