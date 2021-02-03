
Задание 2

SCHEMA:
Create table If Not Exists Employee (Id int, Salary int)
Truncate table Employee
insert into Employee (Id, Salary) values ('1', '100')
insert into Employee (Id, Salary) values ('2', '200')
insert into Employee (Id, Salary) values ('3', '300')

Write a SQL query to get the second highest salary from the Employee table.
+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+

For example, given the above Employee table, the query should return 200 as the second highest salary. If there is no second highest salary, then the query should return null.
+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+

==================================

CREATE TABLE IF NOT EXISTS Employee(
    Id INT PRIMARY KEY,
    SALARY INT NOT NULL
);

INSERT INTO employee VALUES(1, 100);
INSERT INTO employee VALUES(2, 200);
INSERT INTO employee VALUES(3, 300);

SELECT MAX(salary)
FROM Employee
WHERE salary < (
    SELECT MAX(salary)
    FROM Employee
);
