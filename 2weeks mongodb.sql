create database Practical;
use Practical;
create Table mech(s_id int,_s_name varchar(25));
START TRANSACTION;
INSERT into mech VALUES (101,'Aditya');
savepoint a;
insert into mech values(192,'Kamlesh');
savepoint b;
insert into mech values(103,'Karthik');
savepoint c;
select * from mech;

rollback to b;
CREATE TABLE Student (
    sno INT PRIMARY KEY,
    sname VARCHAR(20),
    age INT
);
create database saturday;
use saturday;

create table category(
c_id int primary key,
c_name varchar(25) not null unique,
c_decrp varchar(250) not null
);

insert into category values (101, 'electronics', 'it stores all set of electronics items');
select * from category;
desc category;

CREATE TABLE Products (
    P_ID int primary key,
    p_Name varchar(250) NOT NULL,
    c_id int ,
    CONSTRAINT c_id FOREIGN KEY (c_id)
    REFERENCES category(c_id) on delete cascade
);

insert into products values (904, 'INTEL I5 Processor', 101);
select * from products;
delete from category where c_id=101;
select * from category;

Create table Salary (
	salary int
	Check (salary >=20000 and salary<=40000)
);
drop table student;
create table student(
s_id int primary key,
s_name varchar(25) not null,
s_department varchar(25) not null
);

insert into student values (1001,"Jayanth","ECE"),(1002,"Praveen","CSE"),(1003,"Logesh","Mech"),(1006,'karthick','Aero'),(1007,"Mahesh","Civil");

select * from student;
drop table vit;
create table VIT(
s_id int primary key,
s_cgpa varchar(5) not null
);
insert into vit values (1001,'7.2'),(1002,'8.6'),(1007,'9.25');
select * from vit;
select* from student cross join vit;
select * from student Inner join vit where student.s_id=VIT.s_id;