

create database practice

use practice
create table emp1
(
    RNo INT,
    Name char(30),
    Age int
);

insert into emp1 VALUES
(1,'Rohit',23)
select * from emp1

select RNO from emp1;

insert into emp1 (RNo, Name)
VALUES(1,'Karan');
select * from emp1;

create table EMP
(
    EID char(5),
    Name varchar(100),
    Addr varchar(100),
    City varchar(100),
    DOB date,
    Phone varchar(10),
    Email varchar(100)
);

drop table emp

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


select * from EMP

select * from emp where name like 'R%'

select * from emp where name like '_____'

select top 1 * from emp

update emp set city = 'Gurgaon' where eid = 'E0001'

select * from emp1

delete emp1 where name like 'k%'

alter table emp1
add addre varchar(100)

alter table emp1
drop column addre

select Distinct name from emp

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

select * from emp_sal


select * from emp
select * from emp_sal

alter table emp
alter column EID char(5) not null;

alter table emp
add CONSTRAINT pkey Primary Key(EID)

alter table emp
alter column Name varchar(100) not null;

alter table emp 
add CONSTRAINT chek Check(Addr not like '%Uttan Nagar%')

select * from emp

alter table emp 
add CONSTRAINT cheiik Check(City in('Delhi','Gurgaon','Faridabad','Noida'))

alter table emp 
add CONSTRAINT ui Unique(Phone)


ALTER TABLE EMP
ADD CONSTRAINT OKO CHECK (DOB <='01-JAN-2000')

update emp set email = 'adi9976@yahoo.com'
where eid = 'E0002'

update emp set email = 'mohit211@yahoo.com'
where eid = 'E0005'

update emp set email = 'tandon_shar@yahoo.com'
where eid = 'E0007'


update emp set email = 'goswami_n@yahoo.com'
where eid = 'E0010'

alter table emp
add CONSTRAINT jj check(email like '%gmail.com' or email like '%yahoo.com')

select * from emp_sal

alter table emp_sal 
add CONSTRAINT fkey Foreign Key(EID) REFERENCES emp(EID) on delete cascade
ALTER TABLE EMP_SAL
ADD CONSTRAINT DD CHECK(DEPT IN ('HR', 'MIS','OPERATIONS','IT','ADMIN','TEMP'))

ALTER TABLE EMP_SAL
ADD CONSTRAINT OOP DEFAULT 'TEMP' FOR DEPT;

ALTER TABLE EMP_SAL
ADD CONSTRAINT DKAD CHECK(DESI IN ('ASSOCIATE', 'MANAGER','VP','DIRECTOR'))

alter table emp_sal
add CONSTRAINT dfe check(salary>=20000)

select * from EMP_SAL
where Dept ='HR'
order by salary desc


select * from EMP_SAL
order by dept, salary desc

select dept, sum(salary) as 'Total' from EMP_SAL
group by dept
having sum(salary) >200000

select dept,desi, sum(salary) as 'Total' from EMP_SAL
group by dept, desi

select dept, desi, count(eid) 'Members', sum(salary) 'Total' from EMP_SAL
group by dept,desi 

select Dept,count(EID) 'TO_MEM', Sum(Salary) 'TOT_SAL' from emp_sal
group by DEPT

select Dept,count(EID) 'No of Manager',sum(salary) 'Total Salary' from EMP_SAL
where desi = 'Manager'
group by dept

select Dept, sum(salary) 'Total' from EMP_SAL
where Desi = 'Manager'
group by DEPT
having sum(salary)>200000


select Dept, sum(salary) 'Total' from EMP_SAL
where Desi = 'Manager'
group by DEPT
having sum(salary)>200000
order by dept desc

select Emp.EID, Name , Dept, Desi, Salary from emp
join EMP_SAL
on emp.eid = emp_sal.eid


select Emp.EID, Name , Dept, Desi, Salary from emp
left join EMP_SAL
on emp.eid = emp_sal.eid


select Emp.EID, Name , Dept, Desi, Salary from emp
right join EMP_SAL
on emp.eid = emp_sal.eid


select Emp.EID, Name , Dept, Desi, Salary from emp
full join EMP_SAL
on emp.eid = emp_sal.eid


select Emp.EID, Name , Dept, Desi, Salary from emp
cross join EMP_SAL

create view v1 as 
select * from emp where city = 'Delhi'

select * from v1

insert into v1
values('E0011','PUSHPA KAUR','99/288, ARYA NAGAR','FARIDABAD','02-08-1998','9888922872','pushpa.raj@yahoo.com')

select * from emp

select * from emp,emp_sal

create view v2
as
select emp.EID , Name ,DOJ, Dept, Salary 'Basic', 0.15 * salary 'HRA', 0.09* salary 'PF', 
Salary + 0.15 * salary + 0.09* salary as 'NET', Salary + 0.15 * salary as 'GROSS' from emp
join emp_sal
on emp.eid = emp_sal.eid;

select * from v2

create view v3
as 
select Dept , City, count(Emp.EID) 'No.of Employess',sum(salary) 'Total Salary', avg(salary)'AVG Salary' 
from emp 
join emp_sal 
on emp.eid = emp_Sal.eid
group by Dept, CITY ;

select * from v3

select CHARINDEX('b', 'voovb')

select left('Welcome',3)

select right('Wlcomem',19)

select substring('Welcome',2,4)

select replace('Weclome','l','adkadk')

select stuff('Wlomceskke',3,7,'pi')

select left(name,CHARINDEX(' ',name)) as 'First Name' from emp;

select right(name, (len(name)-CHARINDEX(' ',name))) 'Last' from emp;

select * from emp

select Name, left(Name, charindex(' ',name)) as 'First Name', right(Name, (len(name)-charindex(' ',name))) as 'Last Name' from emp;

select concat(left(Name,1),left(right(Name, (len(name)-charindex(' ',name))),1),right(eid,3),'@outlook.com') from emp

select getdate()

select dateadd(D,90,getdate())

select dateadd(yy,9,getdate())

select datediff(yy,DOJ,getdate()) from emp_Sal

select year(doj),count(eid) from emp_sal
group by year(doj)

select Name, City, Phone, Email from emp
where datediff(y,dob,getdate())>=40;

create FUNCTION f1(@a int, @b int)
returns int
as 
begin
declare @c INT;
set @c = @a + @b; 
return @c
end;

select dbo.f1(10,20)

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

select dbo.cal(10,100,'-')

create function eml(@f char(1),@l char(1),@ei char(3))
returns varchar(200)
AS
    begin 
    return concat(@f,@l,@ei,'@outlook.com')
end;

create function f123(@id char(5),@name varchar(100))
returns varchar(100)
as 
BEGIN
Declare @f char(1),@l char(1), @email varchar(1000)
set @f = left(@name,1)
set @l = left(right(@name, (len(@name)-charindex(' ',@name))),1)
set @email= concat(@f,@l,right(@id,3),'@aol.com')
return @email
end;

drop function f123

select dbo.f123('E0012','Chaman Chaudhari')

create function r()
returns TABLE
as 
return select * from emp_Sal where dept ='HR';

select * from dbo.r()

create function fuc12(@dep varchar(10))
returns TABLE
as 
return (select emp.eid, name, desi, dept,salary from emp join emp_sal on emp.eid = emp_sal.eid where dept = @dep);

select * from fuc12('HR')

create function birthday()
returns table 
as 
return select Name, Dept, Desi, City from emp join emp_sal on emp.eid=emp_sal.eid where month(dob)= month(getdate())

select * from dbo.birthday()

create function ten()
returns TABLE
as 
return select Name, Dept,DOJ from emp join emp_sal on emp.eid = emp_sal.eid where datediff(yy, doj, getdate())>=5

select * from dbo.ten()

select Name, City, EID from emp
where eid IN (select EID from emp_sal where desi= 'Manager')

select eid , dept, desi from EMP_SAL
where eid in(select eid from emp where city='Noida')

select Name, City, EID from emp
where eid IN (select EID from emp_sal where desi= 'Manager')


create table Training
(
    EID char(5) unique,
    Name varchar(100) not NULl,
    Module varchar(100) default('SQL'),
    Dept varchar(100)

)
drop table Training
insert into Training(EID, NAme, Dept)
(select Emp.EID, Name, Dept from emp join emp_sal on emp.eid = emp_Sal.eid where dept = 'MIS')

select * from training

delete training
where EID in(select eid from emp_sal where desi = 'Manager')

select * from training

Select * from emp_sal

update emp_sal set salary = salary + 50000
where EID in (select EID from emp where city ='Delhi')

select avg(salary) from EMP_SAL
where eid in(select eid from emp where city = 'Delhi') AND
eid in(select eid from emp_sal where salary>100000)

select count(EID), Avg(salary) from EMP_SAL

select count(EID), Avg(Salary) from EMP_SAL 
where EID in (select EID from emp where city='Delhi')

select count(EID), Avg(Salary) from EMP_SAL 
where EID in (select EID from emp where city='Delhi')
and EID in (select EID from emp_sal where salary>300000)


select Salary from EMP_SAL
where Dept = 'HR'
And exists (select * from emp_sal where salary>300000)

select EID, Name, City from emp 
where EID = (select EID from emp_Sal where salary = (select max(salary)from emp_Sal));


select emp.EID, Name, City,DOJ,Dept, Desi,Salary from emp 
join emp_sal 
on emp.eid = emp_sal.eid 
where name in('Rohit Daruwala', 'Amit Chobey')

select * from emp

create PROCEDURE p1 
as 
BEGIN
select * from emp where city= 'Noida'
end;

p1

create function noida()
returns TABLE
as 
return select * from emp where city='Noida'

select * from dbo.noida()


create PROCEDURE p2(@c varchar(100)) 
as 
BEGIN
select * from emp where city= @c
end;

p2 'Delhi'


create PROCEDURE p1223(@t varchar(100))
as 
begin 
EXEC('select * from '+@t)
end;

p1223 'emp'



create procedure p5(@e char(5),@name varchar(100),@add varchar(100),@city varchar(40),@dob date,@phone char(10),
 @em varchar(100))
As 
    BEGIN
    insert into emp values(@e,@name,@add,@city,@dob,@phone,@em)
    select * from emp
end;

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

ROLLBACK


select * from emp1

alter TABLE emp1
alter column RNo int IDENTITY(2,1)


create procedure auto(@N varchar(20),@a int)
As 
BEGIN
insert into emp1

create sequence s2
as INT
start with 1
increment BY 1
Minvalue 1
maxvalue 10
cycle ;

select next value for s2

create table t4
(
    EID char(5),
    Name varchar(100),
    Age int
)

create sequence s
as INT
start with 1
increment by 1

create PROCEDURE aut_emp @N as VARCHAR(100), @a as INT
as 
BEGIN
declare @I as INT,@id as char(5)
set @I = (Next Value for s)
If @I<10
    set @ID =  concat('E000',@I);
else if @I<100
    set @ID = concat('E00',@I);
else if @I<1000
    set @ID = concat('E0',@I);
else if @I<10000
    set @ID = concat('E',@I);
else 
    set @ID = 'NA';
insert into t4 values(@ID,@n,@a);
select * from t4;
end;

aut_emp 'Ayush Mittal', 35

aut_emp 'Pinky Chadd', 22;

5TG6G