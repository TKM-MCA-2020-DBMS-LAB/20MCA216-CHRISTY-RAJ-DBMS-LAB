create database college;
use college;
create table Student (sid int, sname varchar(50), sex varchar(20), dob date,dno varchar(20));
create table Department(dno varchar(20),dname varchar(50));
create table Faculty (F_id INT  NOT NULL , fname VARCHAR(50), designation VARCHAR(100), salary INT ,dno VARCHAR(20));
create table Course (cid INT NOT NULL, cname VARCHAR(100), credits INT ,dno VARCHAR(20));
create table Register (sid INT NOT NULL,cid INT NOT NULL,sem VARCHAR(30)); 
create table Teaching (f_id INT NOT NULL ,cid INT NOT NULL,sem VARCHAR(30)); 
create table Hostel(hid INT NOT NULL,hname VARCHAR(100),seats INT);

SHOW TABLES;
SELECT *FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='college'
alter table Student add grade VARCHAR(50);

describe course;
insert into course(cid,cname,credits,dno)values(1,'MCA',5,100);
insert into course(cid,cname,credits,dno)values(2,'MSC',4,455);
insert into course(cid,cname,credits,dno)values(3,'MBA',7,471);
insert into course(cid,cname,credits,dno)values(4,'MCOM',8,487);
insert into course(cid,cname,credits,dno)values(5,'MSW',6,232);
select * from course;


insert into faculty(F_id,fname,designation,salary,dno)values(122,'sarangi','lectr',50000,100);
insert into faculty(F_id,fname,designation,salary,dno)values(712,'keerthi','prof',60000,455);
insert into faculty(F_id,fname,designation,salary,dno)values(512,'Ravi','lect',20000,487);
insert into faculty(F_id,fname,designation,salary,dno)values(452,'Navidha','Lab assitant.',30000,100);
insert into faculty(F_id,fname,designation,salary,dno)values(352,'rakhi','Prof.',79000,232);
select * from faculty;



insert into register(sid,cid,sem)values(101,1,'I');
insert into register(sid,cid,sem)values(102,2,'III');
insert into register(sid,cid,sem)values(103,3,'II');
insert into register(sid,cid,sem)values(104,4,'IV');
insert into register(sid,cid,sem)values(105,5,'VI');
 -- select * from REGISTER;


insert into teaching(f_id,cid,sem)values(352,1,'I');
insert into teaching(f_id,cid,sem)values(452,2,'II');
insert into teaching(f_id,cid,sem)values(512,3,'II');
insert into teaching(f_id,cid,sem)values(712,4,'IV');
insert into teaching(f_id,cid,sem)values(122,5,'VI');



insert into hostel(hid,hname,seats)values(344,'Main hostel',250);
insert into hostel(hid,hname,seats)values(675,'Modern hostel',370);
insert into hostel(hid,hname,seats)values(125,'Flat',430);
insert into hostel(hid,hname,seats)values(525,'jubile',530);
insert into hostel(hid,hname,seats)values(885,'old',220);
select * from hostel;



insert into student(sid,sname,sex,dob,dno,grade)values(1,'Ajith','M','1999-04-13',232,'A');
insert into student(sid,sname,sex,dob,dno,grade)values(2,'Athul','M','1999-05-24',111,'D');
insert into student(sid,sname,sex,dob,dno,grade)values(3,'Sangetha','F','1999-09-30',222,'B');
insert into student(sid,sname,sex,dob,dno,grade)values(4,'Titus','M','1999-07-31',212,'B');
insert into student(sid,sname,sex,dob,dno,grade)values(5,'Linta','F','1999-02-22',322,'C');
select * from student;
insert into department(dno,dname)values(100,'MCA');
insert into department(dno,dname)values(455,'MSC');
insert into department(dno,dname)values(471,'MBA');
insert into department(dno,dname)values(487,'MCOM');
insert into department(dno,dname)values(232,'MSW');
select * from department;

select * from student order by dob desc;
select * from student where dno=222;
select * from faculty order by salary desc;
select dno,count(*)student from student group by dno;
select fname from faculty where salary >25000;


