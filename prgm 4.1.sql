mysql> use list;
Database changed
mysql> select * from employee;
+--------+----------+------------+----------------+------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address        | doj        | mobile_no  | dept_no | salary |
+--------+----------+------------+----------------+------------+------------+---------+--------+
|      2 | Nandana  | 2000-05-23 | Nandanam house | 2020-02-11 | 956345412  | 102     |  88000 |
|      3 | Parvathy | 1995-06-29 | Kavila house   | 2021-01-14 | 9912120010 | 103     |  20000 |
+--------+----------+------------+----------------+------------+------------+---------+--------+
2 rows in set (0.02 sec)
delimiter //
create Trigger inserting before insert on employee for each row
	begin
    if new.emp_no <0 then set new.emp_no=0;
     end if;
    end //
mysql> insert into employee values(1,"Sarangi",'1996-04-20',"Sarangi villa",'2020-01-10',9785439910,101,10000);
Query OK, 1 row affected (0.02 sec)

mysql> select * from employee;
+--------+----------+------------+----------------+------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address        | doj        | mobile_no  | dept_no | salary |
+--------+----------+------------+----------------+------------+------------+---------+--------+
|      1 | Sarangi  | 1996-04-20 | Sarangi villa  | 2020-01-10 | 9785439910 | 101     |  10000 |
|      2 | Nandana  | 2000-05-23 | Nandanam house | 2020-02-11 | 956345412  | 102     |  88000 |
|      3 | Parvathy | 1995-06-29 | Kavila house   | 2021-01-14 | 9912120010 | 103     |  20000 |
+--------+----------+------------+----------------+------------+------------+---------+--------+
3 rows in set (0.00 sec)