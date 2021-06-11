
mysql> use list;
Database changed
mysql> show tables;
+----------------+
| Tables_in_list |
+----------------+
| department     |
| deptsal        |
| employee       |
| manager        |
+----------------+
4 rows in set (0.01 sec)

mysql> describe employee;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| emp_no    | int          | NO   | PRI | NULL    |       |
| emp_name  | varchar(20)  | NO   |     | NULL    |       |
| DOB       | date         | NO   |     | NULL    |       |
| address   | varchar(50)  | NO   |     | NULL    |       |
| doj       | date         | NO   |     | NULL    |       |
| mobile_no | varchar(100) | YES  |     | NULL    |       |
| dept_no   | varchar(20)  | YES  | MUL | NULL    |       |
| salary    | int          | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.01 sec)

mysql> select * from employee;
+--------+----------+------------+----------------+------------+------------+---------+--------+
| emp_no | emp_name | DOB        | address        | doj        | mobile_no  | dept_no | salary |
+--------+----------+------------+----------------+------------+------------+---------+--------+
|      2 | Nandana  | 2000-05-23 | Nandanam house | 2020-02-11 | 956345412  | 102     |  88000 |
|      3 | Parvathy | 1995-06-29 | Kavila house   | 2021-01-14 | 9912120010 | 103     |  20000 |
+--------+----------+------------+----------------+------------+------------+---------+--------+
2 rows in set (0.00 sec)


DELIMITER //
CREATE FUNCTION Emp_count(emp_no int) RETURNS INTEGER
READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE emp_count INT; 
SELECT COUNT(*) INTO emp_count
FROM employee
WHERE employee.Emp_no = emp_no ;
RETURN emp_count;
END
//mysql> select Emp_count(2);
+--------------+
| Emp_count(2) |
+--------------+
|            1 |
+--------------+
1 row in set (0.01 sec)
    