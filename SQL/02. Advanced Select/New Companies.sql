Create Table Company
(
	company_code Varchar(5),
	founder Varchar(20)
);

Insert Into Company Values
('C1', 'Monika'),
('C2', 'Samantha');

Select * From Company;

---------------------------------------

Create Table Lead_Manager
(
	lead_manager_code Varchar(5),
	company_code Varchar(5)
);

Insert Into Lead_Manager Values
('LM1', 'C1'),
('LM2', 'C2');

Select * From Lead_Manager;

--------------------------------------

Create Table Senior_Manager
(
	senior_manager_code Varchar(5),
	lead_manager_code Varchar(5),
	company_code Varchar(5)
);

Insert Into Senior_Manager Values
('SM1', 'LM1', 'C1'),
('SM2', 'LM1', 'C1'),
('SM3', 'LM2', 'C2');

Select * From Senior_Manager;

-------------------------------------

Create Table Manager
(
	manager_code Varchar(5),
	senior_manager_code Varchar(5),
	lead_manager_code Varchar(5),
	company_code Varchar(5)
);

Insert Into Manager Values
('M1', 'SM1', 'LM1', 'C1'),
('M2', 'SM3', 'LM2', 'C2'),
('M3', 'SM3', 'LM2', 'C2');

Select * From Manager;

-------------------------------------

Create Table Employee
(
	employee_code Varchar(5),
	manager_code Varchar(5),
	senior_manager_code Varchar(5),
	lead_manager_code Varchar(5),
	company_code Varchar(5)
);

Insert Into Employee Values
('E1', 'M1', 'SM1', 'LM1', 'C1'),
('E2', 'M1', 'SM1', 'LM1', 'C1'),
('E3', 'M2', 'SM3', 'LM2', 'C2'),
('E4', 'M3', 'SM3', 'LM2', 'C2');

Select * From Employee;

-------------------------------------

Select Distinct
	C.company_code,
	C.founder,
	Count(Distinct LM.lead_manager_code),
	Count(Distinct SM.senior_manager_code),
	Count(Distinct M.manager_code),
	Count(Distinct E.employee_code)
From Company C
Left Join Lead_Manager LM
On C.company_code = LM.company_code
Left Join Senior_Manager SM
On LM.lead_manager_code = SM.lead_manager_code
Left Join Manager M
On SM.senior_manager_code = M.senior_manager_code
Left Join Employee E
On M.manager_code = E.manager_code
Group By C.company_code, C.founder
Order By C.company_code;

