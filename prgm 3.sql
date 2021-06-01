//1.views

mysql> use list;
Database changed
mysql> show tables;
+----------------+
| Tables_in_list |
+----------------+
| department     |
| employee       |
+----------------+
2 rows in set (0.06 sec)

mysql> describe department;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| dept_no   | varchar(20)  | NO   | PRI | NULL    |       |
| dept_name | varchar(50)  | YES  |     | NULL    |       |
| location  | varchar(100) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

mysql> select * from department;
+---------+-----------+----------+
| dept_no | dept_name | location |
+---------+-----------+----------+
| 101     | MTECH     | 1stfloor |
| 102     | MCA       | 2ndfloor |
| 103     | BTECH     | 3rdfloor |
+---------+-----------+----------+
3 rows in set (0.02 sec)

mysql> select * from employee;
+--------+----------+------------+----------------+------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address        | doj        | mobile_no  | dept_no | salary |
+--------+----------+------------+----------------+------------+------------+---------+--------+
|      2 | Nandana  | 2000-05-23 | Nandanam house | 2020-02-11 | 956345412  | 102     |  80000 |
|      3 | Parvathy | 1995-06-29 | Kavila house   | 2021-01-14 | 9912120010 | 103     |  20000 |
+--------+----------+------------+----------------+------------+------------+---------+--------+
2 rows in set (0.07 sec)

mysql> create view Manager as SELECT emp_name,DOB,salary,location from employee,department;
Query OK, 0 rows affected (0.06 sec)

mysql> select  distinct e.emp_name from employee e ,Manager m where e.salary >m.salary;
+----------+
| emp_name |
+----------+
| Nandana  |
+----------+
1 row in set (0.01 sec)

mysql>  DROP VIEW MANAGER;
Query OK, 0 rows affected (0.02 sec)

//2.update views

mysql> update Manager set salary = 1.1 * salary where emp_name="Nandana";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

//3.procedure

mysql> create table deptsal as select dept_no , 0 as totalsalary from department;
Query OK, 3 rows affected (0.09 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from deptsal;
+---------+-------------+
| dept_no | totalsalary |
+---------+-------------+
| 101     |           0 |
| 102     |           0 |
| 103     |           0 |
+---------+-------------+set totalsalary =' at line 1
mysql> delimiter //
mysql>  create procedure updatesal(IN Param1 int)
    -> begin
    -> update deptsal
    -> set totalsalary= (select sum(salary)from employee  where dept_no=Param1)
    -> where dept_no =param1;
    -> end; //
Query OK, 0 rows affected (0.03 sec)

3 rows in set (0.00 sec)

mysql> delimiter ;
mysql> call updatesal(102);
Query OK, 1 row affected (0.01 sec)

mysql> call updatesal(103);
Query OK, 1 row affected (0.01 sec)

mysql> select * from deptsal;
+---------+-------------+
| dept_no | totalsalary |
+---------+-------------+
| 101     |           0 |
| 102     |       88000 |
| 103     |       20000 |
+---------+-------------+
3 rows in set (0.00 sec)
drop procedure updatesal;
Query OK, 0 rows affected (0.04 sec)

//4.stored procedure

mysql> DELIMITER //
mysql> CREATE PROCEDURE Getdetails()
    -> BEGIN
    -> select * from employee;
    -> END//
Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER ;
mysql> CALL Getdetails();
+--------+----------+------------+----------------+------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address        | doj        | mobile_no  | dept_no | salary |
+--------+----------+------------+----------------+------------+------------+---------+--------+
|      2 | Nandana  | 2000-05-23 | Nandanam house | 2020-02-11 | 956345412  | 102     |  88000 |
|      3 | Parvathy | 1995-06-29 | Kavila house   | 2021-01-14 | 9912120010 | 103     |  20000 |
+--------+----------+------------+----------------+------------+------------+---------+--------+
2 rows in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)





























