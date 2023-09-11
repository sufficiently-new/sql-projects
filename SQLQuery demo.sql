--										/*creating table employeedemographics */
--create table employeedemographics
--(
--employeeid int,
--firstname varchar(50),
--lastname varchar(50),
--age int,
--gender varchar(50))
--											/*creating table employeesalary */
--create table employeesalary
--(employeeid int,
--jobtitle varchar(50),
--salary int)
--										/*inserting values to employeedemographics */
--insert into employeedemographics values(
--1001,'jim','halpert',30, 'male')
--insert into employeedemographics values(
--1002,'pam', 'beasley',30,'female')
--insert into employeedemographics values(
--1003,'dwight','schrute', 29,'male')
--insert into employeedemographics values(
--1004,'angela','martin',31,'female')
--insert into employeedemographics values(
--1005,'toby', 'flenderson',32,'male')
--insert into employeedemographics values(
--1006,'michael', 'scott', 35,'male')
--insert into employeedemographics values(
--1007,'meredith', 'palmer',32,'female')
--insert into employeedemographics values(
--1008,'stanley', 'hudson',38, 'male')
--insert into employeedemographics values(
--1009,'kevin', 'malone', 31,'male')
--										/*inserting values into employeesalary*/
--insert into employeesalary values(
--1001,'saleman',45000)
--insert into employeesalary values(
--1002,'receptionist', 36000)
--insert into employeesalary values(
--1003,'salesman', 63000)
--insert into employeesalary values(
--1004,'accountant', 47000)
--insert into employeesalary values(
--1005, 'hr', 50000)
--insert into employeesalary values(
--1006,'regional manager', 65000)
--insert into employeesalary values(
--1007,'supplier relations', 41000)
--insert into employeesalary values(
--1008,'salesman', 48000)
--insert into employeesalary values(
--1009, 'accountant', 42000)
--select * from employeesalary
--select * from employeedemographics
--									/*the where ststement  (the where statement limits the amount of data and specifys what data an
--									-individual wants returned. it includes <>,=, and,or,like,null,not null,in.) */
--select * from employeedemographics
--where firstname = 'jim'

--select * from employeedemographics
--where firstname <> 'jim'

--select * from employeedemographics
--where age >30

--select * from employeedemographics
--where age <=32 and gender='male'
--select * from employeedemographics
--where age <=32 or gender='male'

--select * from employeedemographics
--where lastname like 's%'

--select * from employeedemographics
--where lastname like '%s%'
--select * from employeedemographics
--where lastname like '%s%o%'
--select * from employeedemographics
--where lastname is null
--select * from employeedemographics
--where lastname is not null

--select * from employeedemographics
--where firstname in ('jim','michael')
--										/*
--										groupby and orderby
--										*/
--select gender,count(gender)from employeedemographics
--group by gender
--select gender, age, count(gender)from employeedemographics
--group by gender, age
--select * from employeedemographics
--order by age
--									/* joins*/
--									/* inner join,outer join,left/right join*/
--select * from employeedemographics
--inner join employeesalary
--on employeedemographics.employeeid =employeesalary.employeeid

--select * from employeedemographics
--left join employeesalary
--on employeedemographics.employeeid =employeesalary.employeeid
--order by age 

--select * from employeedemographics
--right join employeesalary
--on employeedemographics.employeeid =employeesalary.employeeid

--select * from employeedemographics
--full outer join employeesalary
--on employeedemographics.employeeid =employeesalary.employeeid
----select * from employeesalary

--select employeedemographics.employeeid,firstname,jobtitle,age, lastname,salary from employeedemographics
--inner join employeesalary
--on employeedemographics.employeeid =employeesalary.employeeid
--order by age
--select jobtitle, salary  from employeedemographics
--inner join employeesalary
--on employeedemographics.employeeid =employeesalary.employeeid
--where jobtitle ='salesman'
											


--											/*case statement*/


--select firstname, lastname , age,
--case when age> 30 then 'old'
--else 'young'end 

--from employeedemographics
--where age is not null
--order by age



--select firstname,lastname,jobtitle, salary,
--case when jobtitle = 'salesman' then salary + (salary*.10)
----when jobtitle = 'accountant' then salary + (salary*.05)
----when jobtitle ='hr' then salary + (salary* .000001)
--else salary + (salary * .03)
--end


--from employeedemographics
--join employeesalary on employeedemographics.employeeid =employeesalary.employeeid

--																				/*updating*/
--update  employeesalary
--set jobtitle='salesman'
--where salary =45000

--select * from employeesalary
----																	/* having clause*/
--select jobtitle, avg(salary)
--from employeedemographics

--inner join employeesalary
--on  employeedemographics.employeeid =employeesalary.employeeid
--group by jobtitle
--having avg(salary) > 45000
--order by avg(salary)

