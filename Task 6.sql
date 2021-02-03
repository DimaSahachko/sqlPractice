Задание 6
SCHEMA:

Create table If Not Exists courses (student varchar(255), class varchar(255))
Truncate table courses
insert into courses (student, class) values ('A', 'Math')
insert into courses (student, class) values ('B', 'English')
insert into courses (student, class) values ('C', 'Math')
insert into courses (student, class) values ('D', 'Biology')
insert into courses (student, class) values ('E', 'Math')
insert into courses (student, class) values ('F', 'Computer')
insert into courses (student, class) values ('G', 'Math')
insert into courses (student, class) values ('H', 'Math')
insert into courses (student, class) values ('I', 'Math')

There is a table courses with columns: student and class
Please list out all classes which have more than or equal to 5 students.
For example, the table:
+---------+------------+
| student | class      |
+---------+------------+
| A       | Math       |
| B       | English    |
| C       | Math       |
| D       | Biology    |
| E       | Math       |
| F       | Computer   |
| G       | Math       |
| H       | Math       |
| I       | Math       |
+---------+------------+

Should output:
+---------+
| class   |
+---------+
| Math    |
+---------+
============================
CREATE TABLE Courses(
    student VARCHAR(255),
    class VARCHAR(255),
    PRIMARY KEY(student, class)
);

INSERT INTO Courses VALUES('A', 'Math');
INSERT INTO Courses VALUES('B', 'English');
INSERT INTO Courses VALUES('C', 'Math');
INSERT INTO Courses VALUES('D', 'Biology');
INSERT INTO Courses VALUES('E', 'Math');
INSERT INTO Courses VALUES('F', 'Computer');
INSERT INTO Courses VALUES('G', 'Math');
INSERT INTO Courses VALUES('H', 'Math');
INSERT INTO Courses VALUES('I', 'Math');

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;