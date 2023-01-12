--uc1 create database
create database Payroll_Service

--uc2 create table
create table EmployeePayroll(ID bigint identity(1,1)primary key,Name varchar(100),Salary bigint,Start date)

--uc3 insert values into table
insert into EmployeePayroll values ('Hemant', 500000, '2021-05-01'), ('Reena', 100000, '2021-09-09'), ('Prabhu', 340000, '2022-04-04'),
('Sakhi', 340000, '2022-04-04'),('Vinesh', 340000, '2022-04-04')

--uc4 retrieve table
select * from EmployeePayroll

--uc5 retrieve specific data from table
select * from EmployeePayroll where Name='Prabhu'
select * from EmployeePayroll where Start between cast ('2021-01-01' as date) and Getdate()

--uc6 alter table 
alter table EmployeePayroll add Gender varchar(10) 
update EmployeePayroll set Gender = 'M' where Name = 'Prabhu' or Name = 'Hemant' or Name = 'Vinesh' or Name = 'Sunil'
update EmployeePayroll set Gender = 'F' where Name = 'Reena' or Name = 'Sakhi'

--uc7 use aggregate function
select Gender,count(Salary) as No_Of_Employees from EmployeePayroll group by Gender
select Gender,sum(Salary) as Total_Salary_Of_Employees from EmployeePayroll group by Gender
select Gender,avg(Salary) as Average_Salary_Of_Employees from EmployeePayroll group by Gender
select Gender,min(Salary) as Minimum_Salary_Of_Employees from EmployeePayroll group by Gender
select Gender,max(Salary) as Maximum_Salary_Of_Employees from EmployeePayroll group by Gender

--uc8 extend data in table
alter table EmployeePayroll add PhoneNumber bigint, Address varchar(100), Department varchar(50) not null default 'Test'
update EmployeePayroll set PhoneNumber = 123456789, Address = 'Moradabad', Department = 'HR' WHERE Name = 'Prabhu'
update EmployeePayroll set PhoneNumber = 234567891, Address = 'Delhi', Department = 'Developer' WHERE Name = 'Reena'
update EmployeePayroll set PhoneNumber = 345678912, Address = 'Bangalore', Department = 'IT' WHERE Name = 'Hemant'
update EmployeePayroll set PhoneNumber = 456789123, Address = 'Kanpur', Department = 'Data Analyst' WHERE Name = 'Sakhi'
update EmployeePayroll set PhoneNumber = 567891234, Address = 'Bihar', Department = 'Desiger' WHERE Name = 'Vinesh'

--uc9 extend table 
alter table EmployeePayroll add Basic_Pay bigint, Deductions bigint, Taxable_Pay bigint, Income_Tax bigint, Net_Pay bigint
update EmployeePayroll set Basic_Pay = 10000, Deductions = 2000, Taxable_Pay = 1000, Income_Tax = 1000, Net_Pay = 25000 where Name = 'Prabhu'
update EmployeePayroll set Basic_Pay = 10000, Deductions = 2000, Taxable_Pay = 1000, Income_Tax = 1500, Net_Pay = 30000 where Name = 'Reena'
update EmployeePayroll set Basic_Pay = 10000, Deductions = 2200, Taxable_Pay = 1000, Income_Tax = 1800, Net_Pay = 35000 where Name = 'Hemant'
update EmployeePayroll set Basic_Pay = 10000, Deductions = 2200, Taxable_Pay = 1500, Income_Tax = 1800, Net_Pay = 40000 where Name = 'Sakhi'
update EmployeePayroll set Basic_Pay = 10000, Deductions = 3000, Taxable_Pay = 2000, Income_Tax = 2000, Net_Pay = 50000 where Name = 'Vinesh'

--uc10 update employee data
update EmployeePayroll set Department='Sales and Marketing' where Name='Sakhi'