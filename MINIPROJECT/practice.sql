-- create database school;
use school;
-- create table student(sid int,sname varchar(50),sex varchar(50),dateofbirth date,dname varchar(50));
-- create table department(deptno varchar(30),dname varchar(50));
-- show tables;
-- insert into student values(11,"priya","female",'1999-04-21',"cs");
-- insert into student values(12,"sarangi","female",'1999-05-12',"cs");
-- insert into department values(102,"cs");
-- select *from student;
-- select * from department;
-- alter table student add column pname varchar(50);

-- drop table department;
-- show tables;
-- select * from student where sid=11;
-- select * from department where deptno>101;
-- select * from student order by dateofbirth desc;
select dateofbirth,count(*)student from student group by dateofbirth;