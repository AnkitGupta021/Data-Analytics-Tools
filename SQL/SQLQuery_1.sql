/*ASSIGNMENT - 1
# Create a database DEMO
Create table EMP with the following fields:
EID NAME ADDR CITY DOB PHONE EMAIL id should be like ‘E0001'
Insert 10 appropriate records in the Emp table
Use SELECT command to view the contents of emp table# */

create table employe
(
    EID char(5),
    EName varchar(20),
    Addres varchar(100),
    City varchar(20),
    DOB DATE,
    Phone_No VARCHAR(15),
    Email varchar(30),

);

insert into employe
VALUES('E0001','AMIT','545/20,RAJORI GARDEN','DELHI','1998-10-02','8778996560','amit1@hotmail.com' )

insert into employe VALUES
('E0002','ADITYA SINGH','414,RAMESH NAGAR','DELHI','1990-11-12','8766228018','adi9976@aol.com' ),
('E0003','LOKESH SHARMA','20/13,DWARKA','DELHI','1994-01-22','9677382281','lokesh21@gmail.com' ),
('E0004','AYUSH MAKHIJA','71/11,NEHRU NAGAR','GHAZIABAD','1991-05-09','9711183399','au123@gmail.com' ),
('E0005','MOHIT KAPOOR','101-33,OSWALD PARADISE','PUNE','1987-04-22','9347889291','mohit211@hotmail.com' ),
('E0006','ROHIT DARUWALA','101-B,GYAN KHAND','GHAZIABAD','1990-10-09','8667788122','ro990@yahoo.com' ),
('E0007','TANDON SHARMA','45/20,NAZAFGARH','DELHI','1989-01-09','9359378821','tandon_shar@ymail.com' ),
('E0008','RICHA CHAUDHARI','30-D,PALASIA','INDORE','1984-05-01','9789665560','richa89@gmail.com' ),
('E0009','KALPANA KUMAR','58,BRIJ VIHAR','PATNA','1978-11-28','9318869033','kumar_kalp1@gmail.com' ),
('E0010','NARAYAN GOSWAMI','45/20,RAJ NAGAR','GHAZIABAD','1996-07-22','9889991001','goswami_n@hotmail.com' );

select * from employe;


Alter table employe
Alter column 

/*ASSIGNMENT – 2
In the DEMO database create table EMP _SAL with the following fields:
• EID DEPT DESI DOJ SALARY
• Insert 7 appropriate records in the EMP _SAL table
• Use SELECT command to view the contents of EMP _SAL table
From the EMP table list all the employees with last name as Sharma.
Increase the salary of all Managers by 10% */

create table EMP_SAL
(
    EID Char(5),
    DEPT VARCHAR(20),
    DESI VARCHAR(20),
    DOJ DATE,
    SALARY INT,
);

insert into EMP_SAL values
('E0001','OPERATIONS', 'ASSOCIATE', '2019-10-07',120000),
('E0002', 'MIS','MANAGER','2017-01-03', 323000),
('E0003', 'HR','SENIOR ASSOCIATE','2020-06-23', 170000),
('E0004', 'OPERATIONS','SENIOR MANAGER','2015-02-24', 385000),
('E0005', 'MIS','AVP','2013-01-13',390000),
('E0006', 'OPERATIONS','DIRECTOR','2014-03-10', 425000),
('E0007', 'HR','MANAGER','2016-04-03', 350000);

/* Use SELECT command to view the contents of EMP _SAL table*/

SELECT * FROM EMP_SAL;

/*From the EMP table list all the employees with last name as Sharma. */

SELECT * FROM EMPLOYE
WHERE ENAME LIKE '%SHARMA';

/*Increase the salary of all Managers by 10% */

UPDATE EMP_SAL SET SALARY = SALARY + SALARY*0.10
WHERE DESI LIKE '%MANAGER%';

SELECT * FROM EMP_SAL;


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

/* Lets start with Employe Table */

select * from employe;

/* a.Making EID as primary key */
Alter table employe
Alter column EID char(5) Not Null;

Alter table employe
Add constraint pkey Primary Key (EID);

/* b.Making Ename as Not Null*/

Alter table employe
Alter column EName varchar(20) not null;

/*c.Adding conditon to the Address as No employe shouldn't be from Uttam Nagar*/

Alter table employe
Add constraint ad check(Addres Not like '%UTTAM NAGAR%')


/*d.Adding constraint to the city that it has to be Delhi, Gurgoan, Faridabad, Noida */

Alter table employe
Add constraint cty check(City in('Delhi', 'Gurgaon', 'Faridabad','Noida'));

/*e.Adding unique constraint to phone number */

Alter table employe
Add constraint ph Unique(Phone_No);

/*f.Adding constraint to email making domain to gmail and yahoo only*/

Alter table employe
Add constraint em check(Email like '%gmail.com' or Email like '%yahoo.com');

/*g. Adding constrain to the DOB*/

Alter table employe
Add constraint dt check(DOB <='1-Jan-2000');

insert into employe VALUES
('E0011','Akash Mishra','44,YAM NAGAR','DELHI','2002-01-14','8775033038','a_mish@gmail.com' );


/*LETS COME TO EMP_SAL TABEL*/

select * from emp_sal;

/*a. Adding constraint to EID and making it foreign key*/

Alter table emp_sal
Add constraint fkey Foreign Key(EID) references employe(EID);

/*b.Adding Constrain to department making in among HR, MIS, OPERARTIONS, IT ADMIN ,TEMP 
 and making TEMP as default*/

Alter table emp_sal
Add constraint dep check( DEPT in('HR', 'MIS', 'OPERATIONS', 'IT ADMIN', 'TEMP'));

alter table emp_Sal
DROP CONSTRAINT te;

Alter table emp_sal
Add constraint te default 'TEMP' for DEPT;

select * from emp_sal;

/*c.Adding constraint to Designation maing it among Associate, Manager, VP,Director*/

Alter table emp_sal
Add constraint deg check (DESI in('ASSOCIATE', 'MANAGER', 'VP', 'DIRECTOR'));

/*d.Adding Constraint to the salary >=200000*/

Alter table emp_sal
Add constraint sal check(salary >= 20000);


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

/*CITY WISE COUNT OF EMPLOYEES ARRANGED IN DESCENDING ORDFER */

select City, count(EID) as 'No. of Employees' from employe
group by city
order by city desc;

/*DETAILS OF THE EMPLOYEES WHO DOES NOT HAVE AN ACCOUNT ON YAHOO DOMAIN*/

select * from employe
where Email not like '%yahoo.com';

/* DESIGNATION WISE TOTAL COST AND NUMBER OF MEMBERS ARRANGED IN DESCENDING ORDER OF 
THE TOTAL COST */

select Desi, count(EID) as 'Total Members' , sum(salary) as 'Total Cost' from emp_sal
group by desi 
order by 'Total Cost' desc;


/*
ASSIGNMENT – 5
IN THE EMP TABLE DISPLAY :
1 ) EID NAME CITY DOJ DEPT DESI SALARY OF THE DELHI EMPLOYEES
2 ) DETAILS OF ALL THE EMPLOYEES WHOSE SALARY DETAILS ARE NOT AVAILABLE.

IN THE INVENTORY STRUCTURE DISPLAY :
1) PID, PDESC, CATEGORY, SNAME, SCITY
2 ) DISPLAY OID , ODATE , CNAME, CADDRESS, CPHONE, PDESC, PRICE,OQTY, AMT*/

/* 1 ) EID NAME CITY DOJ DEPT DESI SALARY OF THE DELHI EMPLOYEES */

select employe.eid , Ename, city, doj, dept, desi salary
from employe
Inner join emp_sal
on employe.eid= emp_sal.eid
where city='Delhi';

/* 2 ) DETAILS OF ALL THE EMPLOYEES WHOSE SALARY DETAILS ARE NOT AVAILABLE. */

select employe.eid , Ename, city, doj, dept, desi salary
from employe
full join  emp_sal
on employe.eid= emp_sal.eid
where salary is null;

/** IN THE INVENTORY STRUCTURE DISPLAY :
1) PID, PDESC, CATEGORY, SNAME, SCITY
2 ) DISPLAY OID , ODATE , CNAME, CADDRESS, CPHONE, PDESC, PRICE,OQTY, AMT */


create database INVENTORY

USE INVENTORY

/** Download project Image from the below link */
/*https://drive.usercontent.google.com/download?id=1kBeY7F7A-B_EvFzvdD7bT3L0ud9C6EhZ&export=download&authuser=0&confirm=t&uuid=13b97228-c64b-43b0-8c01-92e2b0fd13a6&at=APZUnTXfYfwr0D6DPvCCPp2O5yjH:1709461840258*/

/*Creating Supplier's Table*/

create table SUPPLIER 
(
    SID char(5) Primary key,
    SNAME varchar(30) Not Null,
    SADD varchar(100) Not null,
    SCITY varchar(20) default 'Delhi',
    SPHONE char(20) Unique,
    SEMAIL varchar(50)
);

/*Creating Product Table*/

create table PRODUCT
(
    PID char(5) primary key,
    PDESC varchar(200) Not null,
    PRICE int check(PRICE>0),
    CATEGORY char(10) check(CATEGORY in('IT','HA','HC')), /*IT- IT Product, HA- Home Appliance Product, HC- Health Care Product */
    SID char(5) REFERENCES SUPPLIER (SID)  /*SID of Supplier Table is Foreign Key to Product Table */
);

/*Creating Customer Table*/

create table CUST 
(  
    CID char(5) primary key,
    CNAME varchar(30) not null,
    ADDRESS varchar(100) not null,
    CITY varchar(20) not null,
    PHONE char(20) not null,
    EMAIL varchar(60) not null,
    DOB date check(DOB<'1-JAN-2000')
);

/*Creating Stock Table*/

create table STOCK 
(
    PID char(5) REFERENCES PRODUCT(PID),
    SQTY int check( SQTY>=0), /*Stock Quantity*/
    ROL int check(ROL>0), /*REORDER LEVEL- Benchmark which when reach we need re-order the product from supplier*/
    MOQ int check (MOQ>=5) /*MINIMUM ORDER QUANTITY - Minimum Quantity which we will be ordering in one go from supplier*/
);

/*Creating Orders Table*/

create table ORDERS
(
    OID char(5) primary key,
    ODATE Date,
    PID char(5) REFERENCES PRODUCT(PID),
    CID char(5) REFERENCES CUST(CID),
    OQTY int check(OQTY>=1)
);

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

/*Create a View for the below queries:
From the employee salary table, we need to see the total salary as “TOTAL
COST” for each department arranged in the descending order of total salary .
Also just show only those departments where “TOTAL COST” is greater than
50000. */

select * from employe;
select * from emp_sal;

create view SALARY
AS
select dept , sum(salary) as 'TOTAL COST' from emp_sal
group by dept
having sum(salary) > 50000;

select * from Salary;

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

/*1 ) CREATE A VIEW EMP_SAL_DETAILS TO GET EID NAME DOJ DEPT DESI SALARY
AS BASIC. ALSO CALCULATE HRA (15% OF BASIC), PF (9% OF BASIC),
NET(BASIC+HRA+PF), GROSS(NET-PF).
*/

create view V1
AS
Select employe.EID, Ename as 'NAME',DOJ, DESI, DEPT, salary as 'BASIC', salary*0.15 as 'HRA', salary*0.09 as 'PF', 
salary + salary*0.15 + salary*.09 as 'NET', (salary + salary*0.15 + salary*.09)- salary*0.9 as 'GROSS'
from employe
Inner Join emp_sal
ON employe.EID = emp_sal.EID;

select * from v1;

/*2) CREATE A VIEW TO DISPLAY EID,NAME, DOJ, DESI, DEPT OF ALL THE
MANAGERS JOINED IN 2019.*/

create view V2
AS
select Employe.EID, Ename as 'NAME', DOJ,DESI,DEPT 
from employe
Inner Join emp_sal
On employe.EID = emp_sal.EID
where DOJ like '2019%' AND desi = 'Manager';

select * from v2;

/*3) CREATE A VIEW TO HOW MANY TEAM MEMBERS ARE THERE IN EACH
DEPARTMENTS IN EACH CITY, ALONG WITH THERE TOTAL & AVERAGE SALARY.
*/

create view v3
as
select Dept ,City ,count(emp_sal.EID) as 'Total Members', sum(Salary) as 'Total Salary', sum(salary)/count(emp_sal.EID) as 'Average Salary'
from employe
Inner Join emp_Sal
On employe.EID= emp_sal.EID
group by city,dept; 

SELECT * FROM v3;

/**
IN THE INVENTORY STRUCTURE GENERATE A VIEW BILL. IT SHOULD DISPLAY
OID,ODATE,CNAME,ADDRESS,PHONE,PDESC, PRICE, OQTY, AMOUNT */

use Inventory


create view BILL
AS
select OID,ODATE, CNAME, ADDRESS,PHONE,OQTY, PDESC, PRICE, PRICE*OQTY AS 'AMOUNT' FROM ORDERS
INNER JOIN CUST
ON ORDERS.CID=CUST.CID
INNER JOIN PRODUCT
ON ORDERS.PID = PRODUCT.PID;

SELECT * FROM BILL;

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

/*A-1: DEPARTMENT WISE TEAM SIZE AND AVERAGE SALARY OF ALL EMPLOYEES. */

select dept, count(EID) as 'Total Members', Avg(Salary) as 'Average Salary'
from emp_sal
group by dept;

/*A-2 : COUNT OF MANAGERS IN THE COMPANY. */

select * from emp_sal;

select count(EID) as 'No. of Manager' from emp_sal
where desi= 'Manager';

/*A-3: MAXIMUM & MINIMUM SALARY OF AN ASSOCIATE.*/

Select min(salary) as 'Min Salary', Max(salary) as 'Max Salary' from emp_sal
where desi = 'Associate';

/*A-4: DEPARTMENT WISE TEAM SIZE AND AVERAGE SALARY OF DELHI EMPLOYEES. */

select dept,city ,count(emp_sal.eid) as 'Total Members', avg(salary) as 'Avg Salary' 
from employe
Inner Join emp_sal
on employe.EID = emp_sal.EID
group by dept, city
having city= 'Delhi';

/*A-5: GENERATE OFFICIAL EMAIL OF THE EMPLOYEE TAKING 1ST CHARATCET OF FIRST
NAME , 1ST CHARATCER OF LAST NAME , LAST 3 DIGITS OF EID, FOLLED BY ‘RCG.COM’.
EMAIL SHOULD BE IN A UPPER CASE. */

select * from employe;

select upper(concat(left(EName,1),  /*For First Initial*/
    left(right(ename, len(ename)-charindex(' ',ename)),1), /*For Second Initial*/
    right(EID,3), 
    '@RCG.COM')) as 'CORP EMAIL' from employe;

/*A-6: NAME,CITY , PHNO & EMAIL OF THE EMPLOYEES WHOSE AGE >=40. */

select ENAME as 'NAME', City , Phone_No , Email , datediff(YY, Dob, getdate()) as 'AGE' from employe
where datediff(YY, Dob, getdate())>=40;

select * from employe;

/*A-7 EID, NAME DOJ OF EMPLOYEES WHO HAVE COMPLETED 5 YEARS IN THE COMPANY*/

select employe.EID, Ename, Doj ,datediff(yy,doj,getdate()) as 'Tenure' from employe
inner join emp_sal
on employe.eid=emp_sal.eid
where datediff(yy,doj,getdate())>=5;

/*A-8: DETAILS OF THE MANAGERS HAVING BIRTHDAY IN THE CURRENT MONTH*/

select Employe.eid, Ename, DOJ, Dept, Desi from employe
join emp_sal
on employe.eid=emp_sal.eid
where desi='Manager' and month(Dob)=month(getdate());

/*A-9 : EID, DEPT , DESI , SALARY OF THE EMPLOYEE WHO IS GETTING THE MAXIMUM SALARY*/

select * from emp_sal
where salary = (select max(salary)from emp_sal); /*NESTED QUERY*/

/*A-10 : EID, NAME OF EMPLOYEE WHO HAS LONGEST NAME */

select eid, ename from employe
where len(ename)=(select max(len(Ename)) from employe); /*Nested Query*/

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

/*A-1: CREATE A FUNCTION CALC TO PERFORM THE SPECIFIED OPERATION ON THE
GIVEN TWO NUMBERS .*/

create function cal(@x int, @y int, @a as char(1))
returns INT
AS
Begin 
declare @z as int;
    if @a='+' 
    set @z = @x + @y;
    else if @a='-' 
    set @z = @x - @y;
    else if @a='*'
    set @z = @x * @y;
    else if @a='/'
    set @z = @x / @y;
    else if @a='%'        
    set @z = @x % @y;
    else set @z=0;
    return @z;
end;

/*A-2: FUNCTION TO GENERATE THE EMAIL ID BY ACCEPTING NAME & EID. EMAIL
SHOULD CONTAIN 1ST CHARACTER OF 1ST NAME , 1ST CHARACTER OF LAST NAME, LAST
3 DIGITS OF EMP ID FOLLOWED BY @RCG.COM; */

create function corpmail(@name varchar(100), @eid char(5))
returns varchar(100)
AS
BEGIN
    declare @fname as varchar(100);
    set @fname = left(@name, charindex(' ',@name));
    declare @lname as varchar(200);
    set @lname = right(@name, len(@name)-charindex(' ',@name));

    return upper(concat(left(@fname,1),left(@lname,1),right(@eid,3),'@rcg.com'));
end;

select EID, Ename, dbo.corpmail(Ename, EID) as 'CORP EMAIL' from employe;

/*A-3: FUNCTION TO RETURN EID, NAME, DESI, DEPT ,SALARY OF THE EMPLOYEES OF A
SPECIFIED DEPARTMENT.*/

create function info(@d as varchar(20))
returns TABLE
As 
return (Select Employe.EID,EName as 'NAME', DESI, DEPT, SALARY from employe
inner join emp_sal
On employe.EID=emp_Sal.EID
where dept = @d);

select * from dbo.info('HR');


/*A-4: FUNCTION TO DISPLAY THE NAME , DEPT . DESI , CITY OF THE EMPLOYEES WHO
HAVE THE BIRTHDAY IN THE CURRENT MONTH.*/

create function bday()
returns TABLE
AS
return(select EName, DEPT,DOB, DESI, CITY from employe 
join emp_sal
on employe.EID= emp_sal.EID
where month(dob)=month(getdate()));

select * from dbo.bday();


/*A-5: FUNCTION TO DISPLAY THE NAME, DEPT & DOJ OF EMPLOYEES WHO HAVE
COMPLETED 5 YEARS IN THE COMPANY**/

create function tenure(@t int)
returns TABLE
AS
return(select Ename, Dept, DOJ, datediff(yy,doj,getdate()) as 'TENURE' from employe
join emp_sal 
on employe.eid=emp_sal.eid
where datediff(yy,doj,getdate())>=@t);

select * from dbo.tenure(10);


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

--A-1 : EID, NAME, CITY OF GURGAON EMPLOYEES--

select EID, ENAME, CITY from employe
where EID in(select EID from employe where city='GURGAON');

-- OR --

select EID, ENAME, CITY from employe
where city ='Gurgaon';

-- A-2 : EID, NAME , DOJ ,DEPT, DESI & SALARY OF ALL MANAGERS --

select employe.EID, ENAME, DOJ, DEPT, DESI, SALARY from employe
join emp_sal
ON employe.EID=emp_sal.EID
where DESI='Manager';

-- A-3: REDUCE THE SALARY OF ALL DELHI EMPLOYEES BY 10%. --

update emp_sal set salary = salary - salary*0.1
where EID in (select EID from employe where city='DELHI');


/* A-4 : DISPLAY THE EID, NAME , CITY, DOJ ,DEPT, DESI & SALARY OF THE TEAM
MEMBERS OF DAVID & RAMESH GUPTA. */

select Employe.EID, ENAME, CITY, DOJ, DEPT, DESI, SALARY from employe
join emp_sal
on employe.EID= emp_sal.EID
where Dept in( select dept from emp_sal
where EID in (select EID from employe where EName in ('Ramesh Gupta', 'David Gupta')));

select * from employe;
select * from emp_sal;

/* A-5: CREATE A TRAINING TABLE CONTAINING EID, NAME, DEPT. INSERT THE DETAILS
OF OPS TEAM MEMBERS IN THE TRAINING TABLE. */

create table TRAINING 
( 
    EID char(5),
    NAME Varchar(100),
    DEPT varchar(30)
    );

select * from training;

insert into training(EID, NAME, DEPT) 
(select employe.EID, ENAME, DEPT from employe
join emp_sal 
on employe.eid= emp_sal.eid
where dept='Operations');

select * from training;


-- A-6: DETAILS OF DIRECTORS SHOULD BE DELETED FROM THE TRAINING TABLE. --

delete from training 
where EID in(select eid from emp_sal where desi='Director' and dept='operations');

SELECT * FROM TRAINING;

/*A-7: DISPLAY THE SALARY DETAILS OFF ALL EMPLOYES IF ANY OF THE TEAM MEMBER
HAS SALARY MORE THAN 200000 */

SELECT * FROM EMP_SAL 
WHERE EXISTS (SELECT * FROM EMP_SAL WHERE SALARY>20000); 

select * from employe;

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

use inventory;
--A-1 : CREATE BELOW PROCEDURES IN THE INVENTORY DATABASE AS SPECIFIED :--

/*ADDSUPPLIER – SHOULD ADD THE SUPPLIER IN THE SUPLIER TABLE AND DISPLAY THE 
DETAILS OF THE NEW SUPPLIER ADDED.*/

create procedure ADDSUPPLIER @S Char(5),@n varchar(100),@ad varchar(200),@c varchar(20), @ph char(20), @em varchar(100)
AS
BEGIN 
    insert into supplier
    values(@S,@n,@ad,@c,@ph,@em) ;
    select * from supplier where SID=@S;
END;

Addsupplier 'S0011','Kuldeep Kumar', '23B/D Sector 55','Gurgaon', '8776560210','kumar_k@gmail.com';

select * from product;

/*ADDPRO – SHOULD ADD THE PRODUCT IN THE PRODUCT TABLE AND DISPLAY THE
DETAILS OF THE NEW PRODUCT ADDED.
*/

create procedure ADDPRO @p char(5), @ds varchar(200), @pr int, @c char(2), @s char(5)
AS
BEGIN
    insert into product 
    values(@p,@ds,@pr,@c,@s);
    select * from product where PID=@p;
END;

ADDPRO 'P0021', 'Samsung 7 Series 163cm (65 Inch) Ultra HD 4K QLED Smart TV', 206900,'HA','S0002';

/*ADDCUST – SHOULD ADD THE CUSTOMER IN THE CUSTOMER TABLE AND DISPLAY THE
DETAILS OF THE NEW CUSTOMER ADDED.*/

create procedure ADDCUST @c char(5),@n varchar(100),@ad varchar(200),@ct varchar(20),@ph char(20),@em varchar(100),@d DATE
AS
begin 
    insert into cust 
    values(@c,@n,@ad,@ct,@ph,@em,@d);
    select * from cust where CID = @c;
end;

ADDCUST 'C0011','NARAYAN SHARMA','J-56 SECTOR 14','NOIDA','7877981230','N1.SHARMA@YAHOO,COM','1996-05-10';


select * from Cust;

/*
ADDORDER – SHOULD ADD THE ORDER IN THE ORDERS TABLE AND DISPLAY THE DETAILS
OF THE ORDER. ORDER DATE SHOULD BE CURRENT DATE AND SHOULD COME
AUTOMATICALLY. */

SELECT * FROM ORDERS;

CREATE PROCEDURE ADDORDER @O AS CHAR(5), @P AS CHAR(5), @C AS CHAR(5), @Q INT
AS
BEGIN
    INSERT INTO ORDERS
    VALUES(@O, GETDATE(),@P, @C, @Q);
    SELECT * FROM ORDERS WHERE OID=@O;
END;


ADDORDER 'O0006', 'P0021','C0011',1;



/* ASSIGNMENT – 10
A-1 : CREATE A FUNCTION FOR AUTOGENERATION OF 5 CHARACTERS ALPHA NUMERIC ID. IT
SHOULD ACCEPT 2 PARAMETERS A CHARACTER AND THE NUMBER AND RETURN THE ID BY
CONCANATING THE CHARACTER , REQUIRED ZEROS AND THE SPECIFIED NUMBER.
RECREATE BELOW PROCEDURES IN THE INVENTORY DATABASE AS SPECIFIED (ALL THE ID s SHOULD BE
AUTOMATICALLY GENERATED USING ABOVE CREATED FUNCTION AND SEQUENCES) :
ADDSUPPLIER – SHOULD ADD THE SUPPLIER IN THE SUPLIER TABLE AND DISPLAY THE DETAILS OF THE
NEW SUPPLIER ADDED.
ADDPRO – SHOULD ADD THE PRODUCT IN THE PRODUCT TABLE AND DISPLAY THE DETAILS OF THE
NEW PRODUCT ADDED.
ADDCUST – SHOULD ADD THE CUSTOMER IN THE CUSTOMER TABLE AND DISPLAY THE DETAILS OF
THE NEW CUSTOMER ADDED.
ADDORDER – SHOULD ADD THE ORDER IN THE ORDERS TABLE AND DISPLAY THE DETAILS OF THE
ORDER. ORDER DATE SHOULD BE CURRENT DATE AND SHOULD COME AUTOMATICALLY. */

/*A-1 : CREATE A FUNCTION FOR AUTOGENERATION OF 5 CHARACTERS ALPHA NUMERIC ID. IT
SHOULD ACCEPT 2 PARAMETERS A CHARACTER AND THE NUMBER AND RETURN THE ID BY
CONCANATING THE CHARACTER , REQUIRED ZEROS AND THE SPECIFIED NUMBER. */


use inventory;

create function ID(@c char(1),@I Int)
Returns Char(5)
AS
Begin 
    Declare @ID as char(5);
    if @I <10
        set @ID = concat(@c,'000',@I);
    Else if @I <100
        set @ID = concat(@c,'00',@I);
    Else if @I <1000
        set @ID = concat(@c,'0',@I);
    Else if @I <10000
        set @ID = concat(@c,@I);
    ELSE 
        set @ID = 'NA';
    return @ID;
End;

/*AUTOMATICALLY GENERATED USING ABOVE CREATED FUNCTION AND SEQUENCES) :
ADDSUPPLIER – SHOULD ADD THE SUPPLIER IN THE SUPLIER TABLE AND DISPLAY THE DETAILS OF THE
NEW SUPPLIER ADDED.*/

Drop PROCEDURE ADDSUPPLIER; --Dropping the Procedure last one talking SID Manually

create sequence Supp
As INT
Start with 12
Increment by 1;

select * from supplier;

create procedure ADDSUPPLIER @n varchar(100), @ad varchar(200),@c varchar(20), @ph char(20), @em varchar(100)
AS
BEGIN 
    declare @I as INT;
    declare @s as Char(5)
    set @I = (next value for supp);
    set @s = dbo.ID('S',@I);
    insert into supplier
    values(@s,@n,@ad,@c,@ph,@em) ;
    select * from supplier;
END;

Addsupplier 'VINAYAK KAPOOR','SECTOR 14','GURGAON','9978212890','v_nayak2@gmail.com';

/*ADDPRO – SHOULD ADD THE PRODUCT IN THE PRODUCT TABLE AND DISPLAY THE DETAILS OF THE
NEW PRODUCT ADDED.*/

Drop procedure ADDPRO;

select* from product;

create sequence pr 
AS INT
start with 22
increment by 1;

create procedure ADDPRO @ds varchar(200), @pr int, @c char(2), @s char(5)
AS
BEGIN
    declare @I as INT;
    Declare @p as char(5);
    set @I=(Next value for pr);
    set @p = dbo.ID('P',@I);
    insert into product 
    values(@p,@ds,@pr,@c,@s);
    select * from product;
END;

ADDPRO 'Lenovo IdeaPad 4 15ITL05 (82FG0116IN) Core i5 10th Gen Windows 10 Home Laptop ',72990,'IT','S0004';

DROP SEQUENCE PR;

/*ADDCUST – SHOULD ADD THE CUSTOMER IN THE CUSTOMER TABLE AND DISPLAY THE DETAILS OF
THE NEW CUSTOMER ADDED.*/

DROP PROCEDURE ADDCUST;

CREATE SEQUENCE CS 
AS INT
START WITH 12 
INCREMENT BY 1; 



create procedure ADDCUST @n varchar(100),@ad varchar(200),@ct varchar(20),@ph char(20),@em varchar(100),@d DATE
AS
begin 
    declare @I as int;
    declare @c as char(5);
    set @I = (next value for cs);
    set @c = dbo.ID('C',@I);
    insert into cust 
    values(@c,@n,@ad,@ct,@ph,@em,@d);
    select * from cust;
end;


ADDCUST 'RADHIKA BAJAJ','C/93 RAM NAGAR','DELHI', '7688541290','RADHIKA_B@YAHOO.COM','1996/09/04';

/* ADDORDER – SHOULD ADD THE ORDER IN THE ORDERS TABLE AND DISPLAY THE DETAILS OF THE
ORDER. ORDER DATE SHOULD BE CURRENT DATE AND SHOULD COME AUTOMATICALLY. */

DROP PROCEDURE ADDORDER;

CREATE SEQUENCE ORD
AS INT 
START WITH 7 
INCREMENT BY 1;

CREATE PROCEDURE ADDORDER @P AS CHAR(5), @C AS CHAR(5), @Q INT
AS
BEGIN
    DECLARE @I AS INT;
    DECLARE @O AS CHAR(5);
    SET @I =(NEXT VALUE FOR ORD);
    SET @O= DBO.ID('O',@I);
    INSERT INTO ORDERS
    VALUES(@O, GETDATE(),@P, @C, @Q);
    SELECT * FROM ORDERS;
END;

ADDORDER 'P0022','C0012',2;

--ADDING TRIGGER FOR TAKING ORDER--

SELECT * FROM ORDERS;
SELECT * FROM STOCK;

CREATE TRIGGER ORD_IN
ON ORDERS
FOR INSERT 
AS 
BEGIN 
     DECLARE @R AS INT;
     DECLARE @S AS INT;
     SET @R = (SELECT OQTY FROM INSERTED);
     SET @S = (SELECT SQTY FROM STOCK WHERE PID = (SELECT PID FROM INSERTED));

     IF @S>=@R 
     BEGIN 
        UPDATE STOCK SET SQTY= @S-@R WHERE PID = (SELECT PID FROM INSERTED);
        COMMIT;
        PRINT('ORDER ACCEPTED!');
     END;
    ELSE
    BEGIN
        ROLLBACK;
        PRINT('ORDER NOT ACCEPTABLE DUE TO STOCK SHORTAGE');
    END;
END;

ADDORDER 'P0002' ,'C0001',20;

ADDORDER 'P0013','C0002',20;

--ADDING UPDATE TRIGGER TO THE ORDER TABLE --

SELECT * FROM ORDERS;
SELECT * FROM STOCK;


CREATE TRIGGER OR_UP
ON ORDERS
FOR UPDATE 
AS 
BEGIN 
    DECLARE @OQ AS INT; --OLD ORDER QUANTIY--
    DECLARE @NQ AS INT; -- NEW ORDER QUANTITY--
    DECLARE @AS AS INT; --AVAIABLE STOCK FOR THE ORDERED PRODUCT--
    SET @OQ = (SELECT OQTY FROM DELETED);
    SET @NQ = (SELECT OQTY FROM INSERTED);
    SET @AS = (SELECT SQTY FROM STOCK WHERE PID=(SELECT PID FROM ORDERS WHERE OID=(SELECT OID FROM INSERTED)));
    IF @NQ-@OQ<=@AS 
    BEGIN 
        UPDATE STOCK SET SQTY=SQTY+@OQ-@NQ WHERE PID =(SELECT PID FROM ORDERS WHERE OID=(SELECT OID FROM INSERTED));
        COMMIT;
        PRINT('ORDER UPDATED!');
    END;
    ELSE 
    BEGIN 
        ROLLBACK;
        PRINT('ORDER CANNOT BE UPDATED DUE TO LIMITED STOCK!')
    END;
END;

DROP TRIGGER OR_UP;

ADDORDER 'P0009','C0007',10;

UPDATE ORDERS SET OQTY=500 WHERE OID='O0013';

SELECT * FROM ORDERS;
SELECT * FROM STOCK;

UPDATE STOCK SET SQTY=20 WHERE PID='P0013';

--DELETE TRIGGER ON PRODUCT--

CREATE TRIGGER PD_DEL
ON PRODUCT
FOR DELETE 
AS 
BEGIN
    DELETE FROM STOCK WHERE PID = (SELECT PID FROM DELETED);
END;

SELECT * FROM PRODUCT;

DROP TRIGGER PD_DEL;

ADDPRO 'DELL MOUSE', 600, 'IT', 'S0003';

INSERT INTO STOCK VALUES('P0026',100,30,50);

DELETE FROM PRODUCT WHERE PID= 'P0026';

DELETE FROM STOCK WHERE PID= 'P0024';

DBCC CHECKDB;

Alter table Stock
Add constraint FKID Foreign Key (PID) REFERENCES Product(PID) ON DELETE CASCADE;

Alter table Stock
Drop CONSTRAINT FK__STOCK__PID__4222D4EF;

use Demo

select * from employe;

select * from EMP_SAL;