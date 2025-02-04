Create database practice
use practice

create table emp1
(
    RNo INT,
    Name char(30),
    Age int
);

insert into emp1 values
(1,'Rohit',49),
(2,'Mohit',29);

select * from emp1;

select RNo from emp1;



insert into emp1 (RNo, Name)
values(3,'KJO');

insert into emp1 (Name, RNo, Age)
values('r',4,33);

/*ASSIGNMENT - 1
# Create a database DEMO
Create table EMP with the following fields:
EID NAME ADDR CITY DOB PHONE EMAIL id should be like ‘E0001'
Insert 10 appropriate records in the Emp table
Use SELECT command to view the contents of emp table# */

create table EMP
(
    EID char(5),
    NAME Varchar(50),
    ADDR  Varchar(100),
    CITY  Varchar(50),
    DOB DATE,
    PHONE varchar(10),
    EMAIL varchar(100)
);

DROP TABLE EMP;
insert into EMP VALUES
('E0001','AMIT CHOBEY','545/20,RAJORI GARDEN','DELHI','1998-10-02','8778996560','amit1@hotmail.com' ),
('E0002','ADITYA SINGH','414,RAMESH NAGAR','DELHI','1990-11-12','8766228018','adi9976@aol.com'),
('E0003','LOKESH SHARMA','20/13,DWARKA','DELHI','1994-01-22','9677382281','lokesh21@gmail.com' ),
('E0004','AYUSH MAKHIJA','71/11,NEHRU NAGAR','GHAZIABAD','1991-05-09','9711183399','au123@gmail.com' ),
('E0005','MOHIT KAPOOR','101-33,OSWALD PARADISE','PUNE','1987-04-22','9347889291','mohit211@hotmail.com' ),
('E0006','ROHIT DARUWALA','101-B,GYAN KHAND','GHAZIABAD','1990-10-09','8667788122','ro990@yahoo.com' ),
('E0007','TANDON SHARMA','45/20,NAZAFGARH','DELHI','1989-01-09','9359378821','tandon_shar@ymail.com' ),
('E0008','RICHA CHAUDHARI','30-D,PALASIA','INDORE','1984-05-01','9789665560','richa89@gmail.com' ),
('E0009','KALPANA KUMAR','58,BRIJ VIHAR','PATNA','1978-11-28','9318869033','kumar_kalp1@gmail.com' ),
('E0010','NARAYAN GOSWAMI','45/20,RAJ NAGAR','GHAZIABAD','1996-07-22','9889991001','goswami_n@hotmail.com' );

select * from EMP;

SELECT * FROM EMP 
WHERE CITY='DELHI';

SELECT * FROM EMP 
WHERE NAME LIKE '%SHARMA';

SELECT * FROM EMP 
WHERE NAME LIKE '_M%';

SELECT TOP 3 * FROM EMP;

SELECT TOP 3 NAME FROM EMP;

SELECT * FROM EMP;

UPDATE EMP SET NAME = 'SANJU CHAUDHARY'
WHERE EID='E0008';

SELECT * FROM EMP1

UPDATE EMP1 SET NAME='RAMESH', AGE = 99;

UPDATE EMP1 SET NAME='HIMESH', AGE = 22
WHERE RNO=4;

DELETE FROM EMP1 WHERE NAME='HIMESH';

DELETE EMP1;

ALTER TABLE EMP1
ADD GENDER CHAR(1);

SELECT * FROM EMP1

ALTER TABLE EMP1
DROP COLUMN AGE

ALTER TABLE EMP1
ALTER COLUMN NAME VARCHAR(30);

TRUNCATE TABLE EMP1

SELECT * FROM EMP1

/*ASSIGNMENT – 2
In the DEMO database create table EMP _SAL with the following fields:
• EID DEPT DESI DOJ SALARY
• Insert 7 appropriate records in the EMP _SAL table
• Use SELECT command to view the contents of EMP _SAL table
From the EMP table list all the employees with last name as Sharma.
Increase the salary of all Managers by 10% */

CREATE TABLE EMP_SAL
(
    EID CHAR(5),
    DEPT VARCHAR(30),
    DESI VARCHAR(30),
    DOJ  DATE,
    SALARY INT
)

INSERT INTO EMP_SAL VALUES
('E0001','OPERATIONS', 'ASSOCIATE', '07-19-2010',120000),
('E0002', 'MIS','MANAGER','2017-01-03', 323000),
('E0003', 'HR','SENIOR ASSOCIATE','2020-06-23', 170000),
('E0004', 'OPERATIONS','SENIOR MANAGER','2015-02-24', 385000),
('E0005', 'MIS','AVP','2013-01-13',390000),
('E0006', 'OPERATIONS','DIRECTOR','2014-03-10', 425000),
('E0007', 'HR','MANAGER','2016-04-03', 350000);

SELECT * FROM EMP_SAL;

SELECT * FROM EMP
WHERE NAME LIKE '%SHARMA';

UPDATE EMP_SAL SET SALARY = SALARY + 0.1*SALARY
WHERE DESI LIKE '%MANAGER%';

SELECT 20/3;

SELECT * FROM EMP_SAL 
WHERE SALARY>300000;

SELECT * FROM EMP
WHERE CITY = 'DELHI' AND ADDR LIKE '%DWARKA%';

SELECT * FROM EMP_SAL

SELECT * FROM EMP_SAL
WHERE DEPT IN ('MIS','HR')

SELECT DISTINCT DEPT FROM EMP_SAL;

SELECT * FROM EMP1


ALTER TABLE EMP1
ALTER COLUMN NAME VARCHAR(30) NOT NULL

ALTER TABLE EMP1
ADD SALARY DECIMAL DEFAULT 50000

SELECT * FROM EMP1

UPDATE EMP1 SET SALARY= 100000

SELECT * FROM EMP1

INSERT INTO EMP1 VALUES (4,'ROHAN','M', 40000)

UPDATE EMP1 SET GENDER = 'M'

INSERT INTO EMP1 (RNO,NAME,GENDER)
VALUES (4,'SHAKSHI','F')

ALTER TABLE EMP1
ADD CONSTRAINT F UNIQUE(NAME)

INSERT INTO EMP1 (RNO,NAME,GENDER)
VALUES (6,'SHAKSHI','F')

ALTER TABLE EMP1
DROP CONSTRAINT F

ALTER TABLE EMP1
ADD CONSTRAINT S CHECK(SALARY>1000)

INSERT INTO EMP1
VALUES (8,'SHAKSHITA','F',100)

SELECT * FROM EMP1;

UPDATE EMP1 SET NAME='ROSHNI' WHERE RNO=4 AND GENDER='F'
UPDATE EMP1 SET RNO=5 WHERE NAME='ROSHNI';


ALTER TABLE EMP1
ALTER COLUMN RNO VARCHAR(4) NOT NULL

ALTER TABLE EMP1
ADD CONSTRAINT P PRIMARY KEY(RNO)

/* ASSIGNMENT – 3
CREATE TWO TABLES EMP & EMP_SAL AS PER THE BELOW STRUCTURE:
EMP
EMPID >Primary Key
NAME >NOT NULL
ADDR > No employee from UTTAM NAGAR
CITY > DEL, GGN, FBD, NOIDA
PHNO >UNIQUE
EMAIL >Should be on Gmail / Yahoo Domain
DOB <= '1-Jan-2000'

EMP_SAL
EMPID > Foreign Key
DEPT > HR, MIS, OPS , IT ADMIN, TEMP and By default DEPT should be TEMP
DESI > ASSO, MGR, VP, DIR
BASIC -> >=20000
DOJ -  
*/

SELECT* FROM EMP
SELECT* FROM EMP_SAL

/* STARTING WITH EMP
*/
ALTER TABLE EMP
ALTER COLUMN EID CHAR(5) NOT NULL
ALTER TABLE EMP
ADD CONSTRAINT PKEY PRIMARY KEY(EID)

ALTER TABLE EMP
ALTER COLUMN NAME VARCHAR(100) NOT NULL

ALTER TABLE EMP
ADD CONSTRAINT CHK CHECK(ADDR NOT LIKE '%UTTAM NAGAR%')

ALTER TABLE EMP
ADD CONSTRAINT CI CHECK(CITY IN('DELHI','GURGAON','FARIDABAD','NOIDA'))

SELECT * FROM EMP

ALTER TABLE EMP
ADD CONSTRAINT UU UNIQUE(PHONE)

alter table emp
add CONSTRAINT jj check(email like '%gmail.com' or email like '%yahoo.com')

ALTER TABLE EMP
ADD CONSTRAINT OKO CHECK (DOB <='01-JAN-2000')

/*ABOUT TABLE EMP_SAL*/

ALTER TABLE EMP_SAL
ADD CONSTRAINT FKEY FOREIGN KEY(EID)
REFERENCES EMP(EID)
ON DELETE CASCADE;

ALTER TABLE EMP_SAL
ADD CONSTRAINT DD CHECK(DEPT IN ('HR', 'MIS','OPERATIONS','IT','ADMIN','TEMP'))

ALTER TABLE EMP_SAL
ADD CONSTRAINT OOP DEFAULT 'TEMP' FOR DEPT;

SELECT * FROM EMP_SAL

ALTER TABLE EMP_SAL
ADD CONSTRAINT DKAD CHECK(DESI IN ('ASSOCIATE', 'MANAGER','VP','DIRECTOR'))

ALTER TABLE EMP_SAL
ADD CONSTRAINT IIO CHECK( SALARY>=20000)

SELECT * FROM EMP

SELECT * FROM EMP_SAL

select * from emp

select * from emp_Sal
where dept in ('HR','MIS');

select * from emp_Sal
where salary between 100000 and 200000;

select count(*) 'No of Employee' from emp_Sal;

select distinct desi from emp_sal;

select * from emp_sal 
where dept = 'hr'
order by salary desc

select * from emp_sal
order by dept desc, salary

select dept, sum(salary) 'Total Salary' from emp_sal
group by dept

Select dept, desi, sum(salary) 'total' from emp_sal
group by dept,desi;

select dept, desi, count(eid) 'No of Employees', sum(salary) 'Total' from emp_sal
group by dept, desi;

select dept, count(eid) 'Employees in Dept',sum(salary) 'Combine Salary' from emp_sal
group by dept
having sum(salary)>735000

select dept, count(eid) 'No of Team Members', sum(salary) 'Combine Salary' from emp_sal
group by dept

select dept, desi, count(eid) 'Total No. of Managers' , sum(salary) 'total salary' from emp_sal
where desi = 'Manager'
group by dept,desi

select dept, sum(salary) 'Total Salary' from emp_sal
where desi = 'Manager'
group by dept
having sum(salary)>200000

select dept, count(eid) 'Total Manager', sum(Salary) 'Total Salary' from emp_sal    
where desi = 'Manager'
group by dept 
having sum(salary)>375000 
order by dept desc

/*
ASSIGNMENT – 4
In the EMP table display :
CITY WISE COUNT OF EMPLOYEES ARRANGED IN DESCENDING ORDFER
DETAILS OF THE EMPLOYEES WHO DOES NOT HAVE AN ACCOUNT ON YAHOO
DOMAIN
From the Emp_Sal table display:
DESIGNATION WISE TOTAL COST AND NUMBER OF MEMBERS ARRANGED IN DESCENDING ORDER OF THE 
TOTAL COST
*/

select* from emp

select city , count(eid) 'No. of Employees' from emp
group by city
order by city desc

select * from emp
where email not like '%yahoo%'

select desi, count(eid) 'No. of members', sum(Salary) 'Total Cost' from emp_sal
group by desi 
order by sum(salary) desc

select * from emp

select * from emp_sal

select emp.eid, Name, City , Dept, Desi, Salary from emp
Inner join emp_Sal
On emp.eid = emp_sal.eid

select emp.eid, Name, City , Dept, Desi, Salary from emp
Join emp_Sal
On emp.eid = emp_sal.eid

select emp.eid, name, city, dept , salary, dob from emp
left join emp_sal
on emp.eid = emp_Sal.eid
Union

select emp.eid, name, city, dept , salary, dob from emp
right join emp_sal
on emp.eid = emp_Sal.eid


select emp.eid, name, city, dept , salary, dob from emp
full join emp_sal
on emp.eid = emp_Sal.eid



select emp.eid, name, city, dept , salary, dob from emp
cross join emp_sal
where emp.eid = emp_Sal.eid

select * from emp
select * from emp_Sal

select a.eid, a.name, b.name 'BossID' from emp
left join emp
on a.bossid = ab.eid

select emp.eid, name, city, dept , salary, dob from emp
left join emp_sal
on emp.eid = emp_Sal.eid
Union
select emp.eid, name, city, dept , salary, dob from emp
right join emp_sal
on emp.eid = emp_Sal.eid

select emp.eid, name, city, dept , salary, dob from emp
left join emp_sal
on emp.eid = emp_Sal.eid
Union All
select emp.eid, name, city, dept , salary, dob from emp
right join emp_sal
on emp.eid = emp_Sal.eid

select emp.eid, name, city, dept , salary, dob from emp
left join emp_sal
on emp.eid = emp_Sal.eid
Intersect
select emp.eid, name, city, dept , salary, dob from emp
right join emp_sal
on emp.eid = emp_Sal.eid

select emp.eid, name, city, dept , salary, dob from emp
left join emp_sal
on emp.eid = emp_Sal.eid
Except
select emp.eid, name, city, dept , salary, dob from emp
right join emp_sal
on emp.eid = emp_Sal.eid

/*
ASSIGNMENT – 5
IN THE EMP TABLE DISPLAY :
1 ) EID NAME CITY DOJ DEPT DESI SALARY OF THE DELHI EMPLOYEES
2 ) DETAILS OF ALL THE EMPLOYEES WHOSE SALARY DETAILS ARE NOT AVAILABLE.

IN THE INVENTORY STRUCTURE DISPLAY :
1) PID, PDESC, CATEGORY, SNAME, SCITY
2 ) DISPLAY OID , ODATE , CNAME, CADDRESS, CPHONE, PDESC, PRICE,OQTY, AMT*/

select emp.EID, Name, City, DOJ, Dept , Desi from emp
join emp_sal
on emp.eid=emp_sal.eid
where city='Delhi'

select emp.eid, Name, addr, city, dob, phone, email from emp 
full join emp_sal
on emp.eid = emp_sal.eid
where salary is null

select * from emp

create index i1 on emp(city);
create index i2 on emp(addr)

select * from emp
where city = 'Delhi' and addr like '%Dwarka';

create CLUSTERED index ci on emp(city);

drop index i2 on emp;

create view temp
AS
    select * from emp 
    where city = 'Delhi';

insert into temp
values('E0011','PUSHPA KAUR','99/288, ARYA NAGAR','FARIDABAD','02-08-1998','9888922872','pushpa.raj@yahoo.com')

select * from temp;

select * from emp

create view t2
as 
select * from emp_sal
where dept = 'HR'
with check option;

select * from emp_sal

insert into t2 values('E0009','HR','VP','03-14-2014', '450000')

create view TEMPORARY
as 
select Dept, sum(salary) 'Total Salary' from emp_sal
group by dept 
having sum(salary)>500000

select * from TEMPORARY;

/*ASSIGNMENT – 6
1 ) CREATE A VIEW EMP_SAL_DETAILS TO GET EID NAME DOJ DEPT DESI SALARY
AS BASIC. ALSO CALCULATE HRA (15% OF BASIC), PF (9% OF BASIC),
NET(BASIC+HRA+PF), GROSS(NET-PF).
2) CREATE A VIEW TO DISPLAY EID,NAME, DOJ, DESI, DEPT OF ALL THE
MANAGERS JOINED IN 2019.
3) CREATE A VIEW TO HOW MANY TEAM MEMBERS ARE THERE IN EACH
DEPARTMENTS IN EACH CITY, ALONG WITH THERE TOTAL & AVERAGE SALARY.
4) IN THE INVENTORY STRUCTURE GENERATE A VIEW BILL. IT SHOULD DISPLAY
OID,ODATE,CNAME,ADDRESS,PHONE,PDESC, PRICE, OQTY, AMOUNT*/

create view v1
as
select emp.EID , Name ,DOJ, Dept, Salary 'Basic', 0.15 * salary 'HRA', 0.09* salary 'PF', 
Salary + 0.15 * salary + 0.09* salary as 'NET', Salary + 0.15 * salary as 'GROSS' from emp
join emp_sal
on emp.eid = emp_sal.eid;

select * from v1

create view v2
as 
    select emp.eid,name, doj,desi, dept from emp
    join emp_sal
    on emp.eid = emp_sal.eid
    where desi = 'Manager' and doj like '%2019'

create view v3
as 
select Dept , City, count(Emp.EID) 'No.of Employess',sum(salary) 'Total Salary', avg(salary)'AVG Salary' 
from emp 
join emp_sal 
on emp.eid = emp_Sal.eid
group by Dept, CITY ;

SELECT * FROM EMP1

SELECT NAME , RANK() OVER (ORDER BY SALARY DESC) 'POS' FROM EMP1;

SELECT NAME , DENSE_RANK() OVER (ORDER BY SALARY DESC) 'POS' FROM EMP1;

SELECT NAME , row_number() OVER (ORDER BY SALARY DESC) 'POS'  FROM EMP1;

Select  charindex('i','betichod');

select substring('Windmill ka choda',3,10);

select REVERSE('ABA')

select stuff('Welcome',1,99,'OKOO')

select EID , CONCAT(addr,',' ,city) 'Address' from emp;

select left(Name,1) 'First Initial' from emp;

select Name, left(Name, charindex(' ',name)) as 'First Name', right(Name, (len(name)-charindex(' ',name))) as 'Last Name' from emp;


select right(Name, charindex(' ',name)) as 'Last Name' from emp;

select EID, concat(left(name,1), right(name, len(name)-charindex(' ', name)), '@gmail.com') 'Corp Email' from emp;

select getdate();

select DATEADD(D,1,getdate())

select DATEADD(M,1,getdate())

select EID, DATEDIFF(YY, doj,getdate()) 'Tenure(in Month)' from emp_sal;

select day('02/14/2033')
select CONVERT(varchar(100), '1995/2/2')

select format(getdate(), 'Y')

select EID, DOJ, dateadd(D,90,DOJ) 'Confirmation Date' from emp_sal;

select EID, DOB from emp 
where Month(DOB) = '11'

select Year(DOJ), count(EID) from emp_sal 
group by year(Doj) 

/*
ASSIGNMENT – 6
A-1: DEPARTMENT WISE TEAM SIZE AND AVERAGE SALARY OF ALL EMPLOYEES.
A-2 : COUNT OF MANAGERS IN THE COMPANY.
A-3: MAXIMUM & MINIMUM SALARY OF AN ASSOCIATE.
A-4: DEPARTMENT WISE TEAM SIZE AND AVERAGE SALARY OF DELHI EMPLOYEES.
A-5: GENERATE OFFICIAL EMAIL OF THE EMPLOYEE TAKING 1ST CHARATCET OF FIRST
NAME , 1ST CHARATCER OF LAST NAME , LAST 3 DIGITS OF EID, FOLLED BY ‘RCG.COM’.
EMAIL SHOULD BE IN A UPPER CASE.
A-6: NAME,CITY , PHNO & EMAIL OF THE EMPLOYEES WHOSE AGE >=40.
A-7 EID, NAME DOJ OF EMPLOYEES WHO HAVE COMPLETED 5 YEARS IN THE
COMPANY
A-8: DETAILS OF THE MANAGERS HAVING BIRTHDAY IN THE CURRENT MONTH
A-9 : EID, DEPT , DESI , SALARY OF THE EMPLOYEE WHO IS GETTING THE MAXIMUM
SALARY
A-10 : EID, NAME OF EMPLOYEE WHO HAS LONGEST NAME */

Select Dept, Count(EID) 'TEAM SIZE', Avg(Salary) 'AVG SALARY' from emp_sal
group by Dept

select count(EID) 'No. of Managers' from emp_sal
where desi = 'Manager'

select  min(salary)'Min_Salary',max(salary)'Max_Salary' from emp_Sal
where desi = 'Associate'

select Dept, Count(emp.EID) 'Team Size', avg(salary) 'AVG Salary' from emp 
join emp_sal 
on emp.EID = emp_sal.EID
where city = 'Delhi'
group by Dept


select dept,city ,count(emp_sal.eid) as 'Total Members', avg(salary) as 'Avg Salary' 
from emp
Inner Join emp_sal
on emp.EID = emp_sal.EID
group by dept, city
having city= 'Delhi';

select EID, NAME, upper(concat(left(name,1),left(right(name, len(name)-charindex(' ',name)),1), right(EID,3), '@RCG.COM'))
as 'CORP EMAIL' from emp;

Select Name, City, Phone, Email, datediff(yy,dob, getdate()) 'AGE' from emp 
where datediff(yy,dob, getdate())>=40;

select emp.EID, NAME, DOJ,datediff(yy, doj, getdate()) 'TENURE' from emp 
join emp_sal 
on emp.eid = emp_sal.eid 
where datediff(yy, doj, getdate())>=5;

select emp.EID, NAME, DEPT, DESI,DOB,DOJ,SALARY from emp
join emp_sal
on emp.eid = emp_sal.eid
where desi = 'Manager' and Month(dob) = Month(getdate())

select EID, DEPT , DESI, SALARY from emp_sal
where salary = (select max(salary) from emp_sal)

select EID, NAME from emp 
where len(name) = (select max(len(name)) from emp);

create function mysum1(@a int,@b int)
returns INT
As 
    BEGIN
    declare @c int;
    set @c = @a + @b;
    return @c;
end;

select dbo.mysum(10,2)

create function cal(@x int, @y int, @o char(1))
returns int 
as 
    BEGIN
    declare @z int
    if @o = '+'
       set @z= @x+@y
    else if @o = '-'
       set @z= @x-@y
    else if @o = '*'
       set  @z = @x * @y
    else if @o = '/'
        set @z = @x /@y
    else 
        set @z=0
    return @z
end;

select dbo.cal(90,10,'/')

create function eml(@f char(1),@l char(1),@ei char(3))
returns varchar(200)
AS
    begin 
    return concat(@f,@l,@ei,'@outlook.com')
end;

drop function eml

select dbo.eml('a','g','003')

create function corp_email(@id char(5),@name varchar(100))
returns varchar(100)
as 
    BEGIN
    declare @f char(1), @l char(1) , @e char(3)
    set @f = left(@name,1)
    set @l = left(right(@name,len(@name)-charindex(' ',@name)),1)
    set @e = right(@id,3)
    return upper(concat(@f,@l,@e,'@outlook.com'))
end;


select EID, NAME, dbo.corp_email(eid,name) 'Corp Email' from emp;


create function f1(@d varchar(20))
returns TABLE
as 
return (select * from emp_sal where dept = @d)

select * from dbo.f1('HR');

create function f2(@c varchar(20))
returns TABLE
as 
return (select * from emp where city = @c)

select * from f2('Noida')
select * from emp

/*ASSIGNMENT – 7
A-1: CREATE A FUNCTION CALC TO PERFORM THE SPECIFIED OPERATION ON THE
GIVEN TWO NUMBERS .
A-2: FUNCTION TO GENERATE THE EMAIL ID BY ACCEPTING NAME & EID. EMAIL
SHOULD CONTAIN 1ST CHARACTER OF 1ST NAME , 1ST CHARACTER OF LAST NAME, LAST
3 DIGITS OF EMP ID FOLLOWED BY @RCG.COM;
A-3: FUNCTION TO RETURN EID, NAME, DESI, DEPT ,SALARY OF THE EMPLOYEES OF A
SPECIFIED DEPARTMENT.
A-4: FUNCTION TO DISPLAY THE NAME , DEPT . DESI , CITY OF THE EMPLOYEES WHO
HAVE THE BIRTHDAY IN THE CURRENT MONTH.
A-5: FUNCTION TO DISPLAY THE NAME, DEPT & DOJ OF EMPLOYEES WHO HAVE
COMPLETED 5 YEARS IN THE COMPANY**/
create function calc(@x int, @y int, @o char(1))
returns int 
as 
    BEGIN
    declare @z int
    if @o = '+'
       set @z= @x+@y
    else if @o = '-'
       set @z= @x-@y
    else if @o = '*'
       set  @z = @x * @y
    else if @o = '/'
        set @z = @x /@y
    else 
        set @z=0
    return @z
end;

select dbo.calc(30,20,'*');

create function email(@id char(5),@name varchar(100))
returns varchar(100)
as 
    BEGIN
    declare @f char(1), @l char(1) , @e char(3)
    set @f = left(@name,1)
    set @l = left(right(@name,len(@name)-charindex(' ',@name)),1)
    set @e = right(@id,3)
    return upper(concat(@f,@l,@e,'@RCG.com'))
end;

select EID, NAME, dbo.email(EID, NAME) 'COPR EMAIL' from emp;

create function s1(@d varchar(50))
returns table
as 
return (select emp.EID, NAME,DESI, DEPT,SALARY from emp 
join emp_sal
on emp.eid=emp_sal.eid
where dept = @d)

select * from dbo.s1('OPERATIONS')

create function birthday()
returns TABLE
as 
return ( select Name , Dept, Desi,City,DOB from emp 
join emp_sal 
on emp.eid = emp_sal.eid 
where month(DOB) = month(getdate()))

select * from dbo.birthday()

create function tenure()
returns TABLE
as 
return (select Name, Dept ,DOJ, datediff(yy, doj,getdate()) 'Tenure(YR)' from emp
join emp_sal 
on emp.eid=emp_sal.eid 
where datediff(yy, doj,getdate())>=5)

drop function tenure
select * from dbo.tenure()

select EID, Name , City from emp
where EID IN (select eid from emp_sal where desi = 'Manager')

select EID, Desi, Dept, Salary from emp_sal
where EID in (select eid from emp where city = 'Delhi')

select emp.EID, Name, Desi, Dept from emp 
join emp_sal 
on emp.eid = emp_sal.eid 
where dept = 'MIS'

create table Training (
    EID char(5),
    Name varchar(50),
    Module varchar(50) default('SQL'),
    Dept varchar(50),
    Desi varchar(50)
)
drop table training

insert into Training(EID,Name,Dept,Desi)
(select EMP.EID, Name, Dept, Desi from emp
join emp_sal 
on emp.eid = emp_sal.eid 
where dept = 'MIS')

select * from Training

delete training
where Desi = 'Manager';

update emp_sal set salary = salary + 5000
where eid in(select EID from emp where city = 'NOIDA')

select * from emp_sal;

select count(EID), Avg(salary) from emp_sal;

select count(EID) 'Team Size', Avg(Salary) 'AVG Salary' from emp_sal 
where EID in (select EID from emp where city = 'Delhi');


select count(EID) 'Team Size', Avg(Salary) 'AVG Salary' from emp_sal 
where EID in (select EID from emp where city = 'Delhi') and EID in(select EID from emp_sal where salary>=300000);

select * from emp_sal 
where dept = 'HR' and EXISTS (select * from emp_sal where salary >300000)

select EID, Name, City from emp 
where EID in (select Eid from emp_sal where salary = (select max(salary) from emp_sal));

/*ASSIGNMENT – 8
A-1 : EID, NAME, CITY OF GURGAON EMPLOYEES
A-2 : EID, NAME , DOJ ,DEPT, DESI & SALARY OF ALL MANAGERS
A-3: REDUCE THE SALARY OF ALL DELHI EMPLOYEES BY 10%.
A-4 : DISPLAY THE EID, NAME , CITY, DOJ ,DEPT, DESI & SALARY OF THE TEAM
MEMBERS OF DAVID & RAMESH GUPTA.
A-5: CREATE A TRAINING TABLE CONTAINING EID, NAME, DEPT. INSERT THE DETAILS
OF OPS TEAM MEMBERS IN THE TRAINING TABLE.
A-6: DETAILS OF DIRECTORS SHOULD BE DELETED FROM THE TRAINING TABLE.
A-7: DISPLAY THE SALARY DETAILS OFF ALL EMPLOYES IF ANY OF THE TEAM MEMBER
HAS SALARY MORE THAN 200000 */

select EID, Name, City from emp where EID in (select EID from emp where City = 'Gurgaon')

select emp.EID, Name, DOJ, DEPT, DESI, Salary from emp 
join emp_sal 
on emp.eid = emp_sal.eid 
where emp.EID in (select EID from emp_sal where Desi = 'Manager')/* where desi = 'Manager' */

update emp_sal set salary = salary - 0.10* salary
where EID in (select EID from emp where city ='Delhi')

select * from emp_sal;

select emp.EID, Name, City,DOJ,Dept, Desi,Salary from emp 
join emp_sal 
on emp.eid = emp_sal.eid 
where emp.EID in (select EID from emp where name in('David Kumar', 'Ramesh Gupta'))/*name in('David Kumar', 'Ramesh Gupta)
*/

select * from emp

update emp set name = 'Ramesh Gupta' where EID = 'E0002'

create table Training (
    EID char(5),
    Name varchar(50),
    Module varchar(50) default('SQL'),
    Dept varchar(50),
    Desi varchar(50)
)
drop table training

insert into Training(EID,Name,Dept,Desi)
(select EMP.EID, Name, Dept, Desi from emp
join emp_sal 
on emp.eid = emp_sal.eid 
where dept = 'OPERATIONS')

select * from training

delete training where EID in (select EID from emp_sal where Desi = 'Director')

select * from emp_sal
where exists (select * from emp_sal where salary>200000)

create procedure p1 
as 
begin 
select * from emp where city = 'Delhi'
end;

execute p1
p1

drop PROCEDURE p1

create procedure p2(@va varchar(30))
as
begin  
select * from emp where city = @va;
end;

p2 'Faridabad'

create procedure p3(@c varchar(100))
AS
begin 
Exec('select * from ' + @c)
end;

p3 'emp';

create procedure p5(@e char(5),@name varchar(100),@add varchar(100),@city varchar(40),@dob date,@phone char(10),
 @em varchar(100))
As 
    BEGIN
    insert into emp values(@e,@name,@add,@city,@dob,@phone,@em)
    select * from emp
end;

p5 'E0012','CHOBEY SINGH', '34,RAM NAGAR','NOIDA','10-12-1999','6684430991','cho_bey@yahoo.com'

/*
ASSIGNMENT – 9
A-1 : CREATE BELOW PROCEDURES IN THE INVENTORY DATABASE AS SPECIFIED :
ADDSUPPLIER – SHOULD ADD THE SUPPLIER IN THE SUPLIER TABLE AND DISPLAY THE
DETAILS OF THE NEW SUPPLIER ADDED.
ADDPRO – SHOULD ADD THE PRODUCT IN THE PRODUCT TABLE AND DISPLAY THE
DETAILS OF THE NEW PRODUCT ADDED.
ADDCUST – SHOULD ADD THE CUSTOMER IN THE CUSTOMER TABLE AND DISPLAY THE
DETAILS OF THE NEW CUSTOMER ADDED.
ADDORDER – SHOULD ADD THE ORDER IN THE ORDERS TABLE AND DISPLAY THE DETAILS
OF THE ORDER. ORDER DATE SHOULD BE CURRENT DATE AND SHOULD COME
AUTOMATICALLY. */

create table temp1 (
    rno INT,
    name varchar(30)
);

insert into temp1 VALUES
(1,'a'),
(2,'b'),
(3,'c'),
(4,'d');

select * from temp1

begin TRANSACTION
delete temp1 
where rno=4

rollback

insert into temp1 VALUES
(5,'e'),
(6,'f'),
(7,'g'),
(8,'h');

begin TRANSACTION
SAVE TRANSACTION t1
delete temp1 where rno = 5
save transaction t2
delete temp1 where rno = 6
save transaction t3
delete temp1 where rno = 7
delete temp1 where rno = 8

select * from temp1;

rollback transaction t2

rollback transaction t1

rollback

alter table temp1
alter column rno int IDENTITY(1,1)

create table hand(
    ID int identity(1,1) Unique,
    Name varchar(30)
)

insert into hand values('Kanika')
select * from hand

delete hand where id = 2

create sequence seq1 
as INT
start with 1
Increment by 1


select next value for seq1;
drop sequence seq1

create sequence seq1 
as INT
start with 1
Increment by 1
Maxvalue 10
minvalue 1
cycle

select next value for seq1;

create sequence seq2
as INT
start with 1
Increment by 1
Maxvalue 10
minvalue 1
cycle
cache 5

select next value for seq2;

create sequence new1
as INT
start with 1
increment by 1

create table ta1
(
    ID INT,
    Name varchar(30)
)

insert into ta1 values(next value for new1,'Ankit')
select * from ta1

create procedure pro1(@name varchar(30))
as 
begin 
    insert into ta1 values(next value for new1, @name)
    select * from ta1
end;

drop table ta1

pro1 'Aditya'
pro1 'Minakshi'
pro1 'Mishika'


delete ta1 where ID=6

pro1 'Kamalaa'

select * from emp1

insert into emp1 values(next value for new1, 'Rohit','M',40000)

drop sequence seq1

create sequence seq1
as INT
start with 1
increment by 1

create table demo1(
    EID char(5) UNIQUE,
    Name Varchar(100),
    Age int
)

SELECT * FROM DEMO1
create PROCEDURE alpha_value(@n as varchar(20), @a as int )
AS
    BEGIN
    declare @i int, @c  char(5)
    set @i = (next value for seq1)
    if @i<10
        set @c = concat('C000',@i)
    else if @i<100
        set @c = concat('C00',@i)
    else if @i<1000
        set @c = concat('C0',@i)
    else if @i<10000
        set @c = concat('C',@i)
    
    insert into demo1 values(@c, @n, @a)
    select * from demo1
end;

alpha_value 'Ram Kapoor', 54

create function func(@f char(1), @I AS INT)
RETURNS CHAR(5)
AS 
    BEGIN
    DECLARE @ID AS CHAR(5)
    IF @I<10
        SET @ID = CONCAT(@F,'000',@I)
    ELSE IF @I<100
        SET @ID = CONCAT(@F,'00',@I)
    ELSE IF @I<1000
        SET @ID = CONCAT(@F ,'0', @I)
    ELSE IF @I<10000
        SET @ID = CONCAT(@F, @I)
    RETURN @ID 
END;

DROP FUNCTION FUNC

SELECT DBO.FUNC('Z',1900)

CREATE PROCEDURE FINAL(@NAME AS VARCHAR(1000),@AGE AS INT)
AS 
    BEGIN
    DECLARE @I INT , @ID CHAR(5)
    SET @I = (NEXT VALUE FOR SEQ1)
    SET @ID = DBO.FUNC('C', @I)
    INSERT INTO DEMO1 VALUES(@ID, UPPER(@NAME), @AGE)
    SELECT * FROM DEMO1
END;

drop PROCEDURE final

FINAL 'AKRITI',33

FINAL 'KUSHA KAPILA',44

final 'Abhishek Sharma',28


create database inventory1
use inventory1

create table SUPPLIER
(
    SID CHAR(5) PRIMARY KEY,
    SNAME VARCHAR(100) NOT NULL,
    SADD VARCHAR(200) NOT NULL,
    SCITY VARCHAR(100) DEFAULT 'DELHI',
    SPHONE CHAR(10) UNIQUE,
    EMAIL VARCHAR(100)
)

CREATE TABLE PRODUCT
(
    PID CHAR(5) PRIMARY KEY,
    PDESC VARCHAR(500) NOT NULL,
    PRICE INT CHECK(PRICE>0),
    CATEGORY CHAR(2) CHECK (CATEGORY IN ('IT','HA','HC')),
    SID CHAR(5) REFERENCES SUPPLIER(SID) ON DELETE CASCADE
)

CREATE TABLE STOCK
(
    PID CHAR(5) REFERENCES PRODUCT(PID) ON DELETE CASCADE,
    SQTY INT CHECK(SQTY>=0), /*STOCK QUNATITY*/
    ROL INT CHECK(ROL>0), /*REORDER LEVEL- Benchmark which when reach we need re-order the product from supplier*/
    MOQ INT CHECK(MOQ>=5) /*MINIMUM ORDER QUNTITY - Minimum Quantity which we will be ordering in one go from supplier */
)

CREATE TABLE CUST(
    CID CHAR(5) PRIMARY KEY,
    CNAME VARCHAR(100) NOT NULL,
    ADDRESS VARCHAR(500) NOT NULL,
    CITY VARCHAR(50) NOT NULL,
    PHONE CHAR(10) NOT NULL,
    EMAIL VARCHAR(100) NOT NULL,
    DOB DATE CHECK(DOB<'01/01/2000')
)

CREATE TABLE ORDERS(
    OID CHAR(5) PRIMARY KEY,
    ODATE DATE,
    PID CHAR(5) REFERENCES PRODUCT(PID) ON DELETE CASCADE,
    CID CHAR(5) REFERENCES CUST(CID) ON DELETE CASCADE,
    OQTY INT CHECK(OQTY>=1)
)

/*Adding data to supplier table*/

select * from supplier;

insert into Supplier VALUES
('S0001','RAMESH GUPTA','SECTOR 7','DELHI','9999002727','RK@YAHOO.CO.IN'),
('S0002','Sandeep Sharma','SECTOR 2','GURGAON','9567890010','SAM1@YAHOO.COM'),
('S0003','Rajesh Sharma','Sector 11','DELHI','9999001001','RSharma56@gmail.com'),
('S0004','Manoj Kumar','Jay Maa Apartments Flat 32','PUNE','9999001099','mKumar@gmail.com'),
('S0005','Ranjeeta Goyal','Flat No 6A','DEHRADUN','9999002700','rgoyal@gmail.com'),
('S0006','Komal Singh','Sector 64','GURGAON','7285912349','ksing@gmail.com'),
('S0007','MONIKA ARORA','B1/45 JANAKPURI','DELHI','9999999234','MA@GMAIL.COM'),
('S0008','Monika Bajaj','DLF PHASE 5','GURGAON','9898101089','MBAJAJ@GMAIL.COM'),
('S0009','RAJAT MAHAJAN','B321 POCKET 1','NOIDA','9899654540','RM@YAHOO.CO.IN'),
('S0010','GAGAN KAPOOR','C2/15 JANAK PURI','DELHI','9877687657','GK@GMAIL.COM');

/*Adding data to CUST table*/

SELECT * FROM CUST;

insert into CUST VALUES
('C0001','RAJAT SHARMA','A101 RAJPUR ROAD','DEHRADUN','9888786540','RS@EMAIL.COM','1991/10/05'),
('C0002','KOMAL KAPOOR','B2-101 SECTOR 62','NOIDA','9888221140','KK@GMAIL.COM','1991/12/10'),
('C0003','MANIK NARULA','SECTOR 2','PUNE','9888767567','MN@GMAIL.COM','1992/1/15'),
('C0004','MOHIT SHARMA','SECTOR 16','PUNE','9111000567','MS01@GMAIL.COM','1992/05/12'),
('C0005','RAVINDER KAPOOR','B302 PRAGYA APT','DELHI','9111000111','RK01@GMAIL.COM','1994/12/12'),
('C0006','ABHAS KUMAR SHARMA','SECTOR 2','PUNE','7677567690','AS50@YAHOO.CO.IN','1997/11/01'),
('C0007','RONITA TAMBA','JANAK PURI','DELHI','8767756111','RONI@YAHOO.CO.IN','1995/4/01'),
('C0008','MAHENDER SINGH','B65 SECTOR 2','PUNE','9899099098','MS52@OUTLOOK.COM','1984/01/8'),
('C0009','RANJITA SHARMA','SECTOR 13 DWARKA','DELHI','9999898870','RA54@OUTLOOK.COM','1998/10/19'),
('C0010','ASHUTOSH KUMAR','B2/204 JANAK PURI WEST','DELHI','9991111170','AK55@OUTLOOK.COM','1986/10/1');


/*Creating Product table*/

select * from PRODUCT;

insert into PRODUCT VALUES
('P0001','Garlic Oil - Vegetarian Capsule 500 mg ',220,'HC','S0001'),
('P0002','Water Bottle - Orange',180,'HC','S0002'),
('P0003','Brass Angle Deep - Plain, No.2',119,'HA','S0003'),
('P0004','Cereal Flip Lid Container/Storage Jar - Assorted Colour',176,'HA','S0004'),
('P0005','Creme Soft Soap - For Hands & Body',162,'HC','S0005'),
('P0006','Germ - Removal Multipurpose Wipes',199,'HA','S0006'),
('P0007','Multani Mati',69,'HC','S0007'),
('P0008','Hand Sanitizer - 70% Alcohol Base',299,'HC','S0008'),
('P0009','Dove Plastic Soap Case - Assorted Colour',59,'HC','S0009'),
('P0010','TCL D310 81.28cm (32 Inch) HD LED TV (Dolby Audio, 32D310, Black)',13490,'HA','S0010'),
('P0011','LG 108cm (43 Inch) Full HD LED Smart TV (43LM5600PTC, Black)',33990,'HA','S0010'),
('P0012','boAt Rockerz 335 In-Ear Wireless Earphone with Mic ',1999,'HA','S0004'),
('P0013','Apple Watch Series 6 Smartwatch (GPS, 44mm)',43999,'IT','S0002'),
('P0014','Apple 44 mm Apple Watch Strap (MTPL2ZM/A, Black)',3900,'IT','S0002'),
('P0015','Apple iPhone SE (128GB ROM, 3GB RAM, MXD12HN/A, White)',44900,'IT','S0002'),
('P0016','Dell USB Wired Gaming Headphones (AE2, Black)',4124,'IT','S0005'),
('P0017','3M LX500 Laptop Stand For Laptop (Height Adjustable, Kanfa052, Black)',2399,'IT','S0006'),
('P0018','Asus ROG Zephyrus G14 GA401IV-HE182TS (90NR03F6-M04910) Ryzen 9 Windows 10 Home Gaming Laptop',140999,'IT','S0007'),
('P0019','Dell Inspiron 3501 (D560385WIN9S) Core i5 11th Gen Windows 10 Home Notebook ',63990,'IT','S0008'),
('P0020','Nomarks - Antimarks Soap For Oily Skin',40,'HC','S0008');

/*CREATING STOCK TABLE*/

select * from stock;

insert into Stock VALUES
('P0001',100,10,50),
('P0002',150,15,100),
('P0003',70,5,40),
('P0007',120,30,200),
('P0008',200,50,300),
('P0009',175,20,150),
('P0012', 40,5, 50),
('P0013', 10,3,10),
('P0016',15,5,25),
('P0020',70,25,100);

/*CREATING ORDERS TABLE*/

select * from orders;

insert into orders VALUES
('O0001','2024-02-12','P0007','C0002',10),
('O0002','2023-11-03','P0002','C0003',5),
('O0003','2023-12-09','P0020','C0010',7),
('O0004','2024-01-27','P0012','C0004',2),
('O0005','2024-01-16','P0015','C0007',1); 

/** IN THE INVENTORY STRUCTURE DISPLAY :
1) PID, PDESC, CATEGORY, SNAME, SCITY */

SELECT PID, PDESC, CATEGORY, SNAME, SCITY FROM PRODUCT 
JOIN SUPPLIER 
ON PRODUCT.SID = SUPPLIER.SID ;

/*2) DISPLAY OID , ODATE , CNAME, CADDRESS, CPHONE, PDESC, PRICE,OQTY, AMT */

SELECT OID,ODATE,CNAME, ADDRESS,PHONE,PDESC, PRICE, OQTY FROM ORDERS 
JOIN CUST 
ON ORDERS.CID = CUST.CID 
JOIN PRODUCT 
ON PRODUCT.PID = ORDERS.PID

/* CREATE BELOW PROCEDURES IN THE INVENTORY DATABASE AS SPECIFIED 

ADDSUPPLIER – SHOULD ADD THE SUPPLIER IN THE SUPLIER TABLE AND DISPLAY THE
DETAILS OF THE NEW SUPPLIER ADDED. */

CREATE PROCEDURE ADDSUPPLIER(@S CHAR(5),@NAME VARCHAR(100),@ADD VARCHAR(500),@CITY VARCHAR(100), @PHONE CHAR(10),
@EMAIL VARCHAR(100))
AS
    BEGIN 
    INSERT INTO SUPPLIER VALUES(@S,@NAME,@ADD,@CITY,@PHONE,@EMAIL);
    SELECT * FROM SUPPLIER
END;


/*ADDPRO – SHOULD ADD THE PRODUCT IN THE PRODUCT TABLE AND DISPLAY THE
DETAILS OF THE NEW PRODUCT ADDED.*/

CREATE PROCEDURE ADDPRO(@P CHAR(5),@DESC VARCHAR(100),@PRICE INT, @CAT CHAR(2),@SID CHAR(5))
AS
    BEGIN 
    INSERT INTO PRODUCT VALUES(@P,@DESC,@PRICE,@CAT,@SID);
    SELECT * FROM PRODUCT
END;


/*ADDCUST – SHOULD ADD THE CUSTOMER IN THE CUSTOMER TABLE AND DISPLAY THE
DETAILS OF THE NEW CUSTOMER ADDED.*/

CREATE PROCEDURE ADDCUST(@C CHAR(5),@NAME VARCHAR(100),@ADD VARCHAR(500),@CITY VARCHAR(100), @PHONE CHAR(10),
@EMAIL VARCHAR(100), @DOB DATE)
AS
    BEGIN 
    INSERT INTO CUST VALUES(@C,@NAME,@ADD,@CITY,@PHONE,@EMAIL,@DOB);
    SELECT * FROM CUST
END;

/*ADDORDER – SHOULD ADD THE ORDER IN THE ORDERS TABLE AND DISPLAY THE DETAILS
OF THE ORDER. ORDER DATE SHOULD BE CURRENT DATE AND SHOULD COME
AUTOMATICALLY. */

CREATE PROCEDURE ADDORDER(@O CHAR(5),@PID CHAR(5),@CID CHAR(5),@QTY INT)
AS
    BEGIN 
    INSERT INTO ORDERS VALUES(@O,GETDATE(),@PID,@CID,@QTY);
    SELECT * FROM ORDERS
END;


/* CREATE A FUNCTION FOR AUTOGENERATION OF 5 CHARACTERS ALPHA NUMERIC ID. IT
SHOULD ACCEPT 2 PARAMETERS A CHARACTER AND THE NUMBER AND RETURN THE ID BY
CONCANATING THE CHARACTER , REQUIRED ZEROS AND THE SPECIFIED NUMBER. */

CREATE FUNCTION IDS(@C CHAR(1), @N INT)
RETURNS CHAR(5)
AS 
    BEGIN
    DECLARE @ID CHAR(5)
    IF @N<10
        SET @ID = CONCAT(@C,'000',@N)
    ELSE IF @N<100
    SET @ID = CONCAT(@C,'00',@N)
    ELSE IF @N<1000
    SET @ID = CONCAT(@C,'0',@N)
    ELSE IF @N<10000
    SET @ID = CONCAT(@C,@N)
    RETURN @ID
END;

SELECT DBO.IDS('K',192);

/*RECREATE BELOW PROCEDURES IN THE INVENTORY DATABASE AS SPECIFIED (ALL THE ID s SHOULD BE
AUTOMATICALLY GENERATED USING ABOVE CREATED FUNCTION AND SEQUENCES) :
ADDSUPPLIER – SHOULD ADD THE SUPPLIER IN THE SUPLIER TABLE AND DISPLAY THE DETAILS OF THE
NEW SUPPLIER ADDED.*/

DROP PROCEDURE ADDSUPPLIER

CREATE SEQUENCE SUPPLIER_SEQ 
AS INT 
START WITH 11
INCREMENT BY 1;

SELECT* FROM SUPPLIER

CREATE PROCEDURE ADDSUPPLIER(@NAME VARCHAR(100),@ADD VARCHAR(500),@CITY VARCHAR(100), @PHONE CHAR(10),
@EMAIL VARCHAR(100))
AS
    BEGIN 
    DECLARE @I AS INT , @ID AS CHAR(5)
    SET @I = NEXT VALUE FOR SUPPLIER_SEQ
    SET @ID = DBO.IDS('S',@I)
    INSERT INTO SUPPLIER VALUES(@ID,UPPER(@NAME),UPPER(@ADD),UPPER(@CITY),@PHONE,UPPER(@EMAIL));
    SELECT * FROM SUPPLIER
END;

ADDSUPPLIER 'ABHINAV RATHORE', '313E/44, PATEL CHOWK','DELHI','9811789980','ABHI_1977@YAHOO.COM'



/* ADDPRO – SHOULD ADD THE PRODUCT IN THE PRODUCT TABLE AND DISPLAY THE DETAILS OF THE
NEW PRODUCT ADDED.*/

DROP PROCEDURE ADDPRO

CREATE SEQUENCE PRO_SEQ
AS INT
START WITH 21 
INCREMENT BY 1;

CREATE PROCEDURE ADDPRO(@DESC VARCHAR(100),@PRICE INT, @CAT CHAR(2),@SID CHAR(5))
AS
    BEGIN 
    DECLARE @I INT, @ID AS CHAR(5)
    SET @I = NEXT VALUE FOR PRO_SEQ;
    SET @ID = DBO.IDS('P',@I)
    INSERT INTO PRODUCT VALUES(UPPER(@ID),UPPER(@DESC),@PRICE,UPPER(@CAT),UPPER(@SID));
    SELECT * FROM PRODUCT
END;

ADDPRO 'Lenovo IdeaPad 4 15ITL05 (82FG0116IN) Core i5 10th Gen Windows 10 Home Laptop ',72990,'IT','S0004';

/*ADDCUST – SHOULD ADD THE CUSTOMER IN THE CUSTOMER TABLE AND DISPLAY THE DETAILS OF
THE NEW CUSTOMER ADDED. */

DROP PROCEDURE ADDCUST

CREATE SEQUENCE CUST_SEQ 
AS INT 
START WITH 11
INCREMENT BY 1

SELECT * FROM CUST

CREATE PROCEDURE ADDCUST(@NAME VARCHAR(100),@ADD VARCHAR(500),@CITY VARCHAR(100), @PHONE CHAR(10),
@EMAIL VARCHAR(100), @DOB DATE)
AS
    BEGIN 
    DECLARE @I AS INT, @ID AS CHAR(5);
    SET @I = NEXT VALUE FOR CUST_SEQ;
    SET @ID = DBO.IDS('C',@I);
    INSERT INTO CUST VALUES(@ID,UPPER(@NAME),UPPER(@ADD),UPPER(@CITY),@PHONE,UPPER(@EMAIL),@DOB);
    SELECT * FROM CUST
END;

ADDCUST 'RADHIKA BAJAJ','C/93 RAM NAGAR','DELHI', '7688541290','RADHIKA_B@YAHOO.COM','1996/09/04';


/*ADDORDER – SHOULD ADD THE ORDER IN THE ORDERS TABLE AND DISPLAY THE DETAILS OF THE
ORDER. ORDER DATE SHOULD BE CURRENT DATE AND SHOULD COME AUTOMATICALLY. */

DROP PROCEDURE ADDORDER;

CREATE SEQUENCE ORDER_SEQ 
AS INT 
START WITH 6
INCREMENT BY 1;

SELECT * FROM ORDERS;

CREATE PROCEDURE ADDORDER(@PID CHAR(5),@CID CHAR(5),@QTY INT)
AS
    BEGIN 
    DECLARE @I INT, @ID CHAR(5);
    SET @I = NEXT VALUE FOR ORDER_SEQ;
    SET @ID = DBO.IDS('O',@I);
    INSERT INTO ORDERS VALUES(@ID,GETDATE(),UPPER(@PID),UPPER(@CID),@QTY);
    SELECT * FROM ORDERS
END;

ADDORDER 'P0021','C0011',2;

--ADDING TRIGGER FOR TAKING ORDER--

CREATE TRIGGER T1 
ON ORDERS 
FOR INSERT 
AS 
    BEGIN
    DECLARE @R AS INT, @S AS INT;
    SET @R = (SELECT OQTY FROM INSERTED) ;
    SET @S = (SELECT SQTY FROM STOCK WHERE PID = (SELECT PID FROM INSERTED));

    IF @S>=@R 
        BEGIN 
        UPDATE STOCK SET SQTY = @S - @R 
        WHERE PID = (SELECT PID FROM INSERTED);
        COMMIT;
        PRINT('ORDER ACCEPTED!');
        END;
    ELSE
        BEGIN
        ROLLBACK;
        PRINT('ORDER CANNOT BE ACCEPTED DUE TO STOCKS SHORTAGE!')
        END;
    END;

DROP TRIGGER T1

ADDORDER 'P0002' ,'C0001',20;

SELECT * FROM ORDERS

ADDORDER 'P0013','C0002',1;

SELECT * FROM STOCK

--ADDING UPDATE TRIGGER TO THE ORDER TABLE --

CREATE TRIGGER T2 
ON ORDERS
FOR UPDATE 
AS 
BEGIN 

    DECLARE @OQ AS INT, @NQ AS INT, @AS AS INT;
    SET @OQ = (SELECT OQTY FROM DELETED);
    SET @NQ = (SELECT OQTY FROM INSERTED);
    SET @AS = (SELECT SQTY FROM STOCK WHERE PID = (SELECT PID FROM ORDERS WHERE OID =(SELECT OID FROM INSERTED)));
    IF @AS>=@NQ-@OQ
        BEGIN
        UPDATE STOCK SET SQTY = @AS+@OQ-@NQ WHERE PID = (SELECT PID FROM ORDERS WHERE OID = (SELECT OID FROM INSERTED));
        COMMIT;
        PRINT('ORDER UPDATED!')
        END;
    ELSE
        BEGIN
        ROLLBACK;
        PRINT('ORDER CANNOT BE UPDATED DUE TO STOCK SHORTAGE!')
        END;
    END;        


SELECT * FROM ORDERS;
SELECT * FROM STOCK;

UPDATE ORDERS SET OQTY=250 WHERE OID='O0013';

UPDATE STOCK SET SQTY = 550 WHERE PID = 'P0013'

--DELETE TRIGGER ON PRODUCT--

CREATE TRIGGER T3 
ON PRODUCT 
FOR DELETE 
AS 
 BEGIN 
 DELETE FROM STOCK WHERE PID = (SELECT PID FROM DELETED)
END;

SELECT * FROM PRODUCT;
SELECT * FROM STOCK;

DELETE PRODUCT WHERE PID = 'P0020';

DELETE PRODUCT WHERE PID = 'P0016';

select * from emp_Sal;

select distinct salary from emp_sal
order by salary desc 
limit 1 offset 1;

SELECT MAX(SALARY) FROM EMP_SAL
WHERE SALARY< (SELECT MAX(SALARY) FROM EMP_SAL);

SELECT Salary FROM emp_sal
ORDER BY salary DESC
Limit 1 OFFSET 1;


SELECT DISTINCT salary
FROM EMP_SAL
ORDER BY salary DESC
OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY;
