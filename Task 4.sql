Задание 4

SCHEMA:

Create table If Not Exists Person (Id int, Email varchar(255))
Truncate table Person
insert into Person (Id, Email) values ('1', 'a@b.com')
insert into Person (Id, Email) values ('2', 'c@d.com')
insert into Person (Id, Email) values ('3', 'a@b.com')

Write a SQL query to find all duplicate emails in a table named Person.
+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+

For example, your query should return the following for the above table:
+---------+
| Email   |
+---------+
| a@b.com |
+---------+

Note: All emails are in lowercase.
==================================
CREATE TABLE Person (
    Id INT PRIMARY KEY,
    Email VARCHAR(255)
);

INSERT INTO Person VALUES (1, 'a@b.com');
INSERT INTO Person VALUES (2, 'c@d.com');
INSERT INTO Person VALUES (3, 'a@b.com');

SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(id) > 1;

 