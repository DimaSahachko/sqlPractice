Задание 1

SCHEMA:

Create table Person (PersonId int, FirstName varchar(255), LastName varchar(255))
Create table Address (AddressId int, PersonId int, City varchar(255), State varchar(255))
Truncate table Person
insert into Person (PersonId, LastName, FirstName) values ('1', 'Wang', 'Allen')
Truncate table Address
insert into Address (AddressId, PersonId, City, State) values ('1', '2', 'New York City', 'New York')
 
Write a SQL query for a report that provides the following information for each person in the Person table, regardless if there is an address for each of those people:
FirstName, LastName, City, State

=================================

CREATE TABLE Person(
    PersonId INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL
);

CREATE TABLE Address(
    AdressId INT PRIMARY KEY,
    PersonId INT,
    City VARCHAR(255) NOT NULL,
    State VARCHAR(255) NOT NULL,
    FOREIGN KEY(PersonId) REFERENCES Person(PersonId) ON DELETE SET NULL
);

INSERT INTO Person VALUES(1, 'Wang', 'Allen'), (2, 'Joe', 'Rogan'),
(3, 'Bob', 'Marley'), (4, 'Tim', 'Cook');

INSERT INTO Address VALUES(1, 2, 'New York City', 'New York'), 
(2, 4, 'San Francisco', 'California');

SELECT Person.FirstName, Person.LastName, Address.City, Address.State
FROM Person
LEFT JOIN Address
ON Person.PersonId = Address.PersonId;