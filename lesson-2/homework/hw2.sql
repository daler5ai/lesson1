create table EMPLOYEES (empID int, name varchar(50), salary decimal(10,2))


select * from employees



INSERT INTO employees ( empID,name) values (1,'john'), (2, 'clara'), (3, 'maya')





insert into employees ( empID, name, salary) 
values ( 1,   'john' , 7000)


insert into employees ( empID, name, salary)
values (2, 'clara',  5000)
update employees 
set salary = 7000
where empID = 1



insert into employees ( empID, name, salary)
values ( 3, 'michael', 6000)

update employees
set salary = 6000
where empID = 2

update employees
set salary = 8000
where empID = 3

delete from employees
where empID = 2


--delete  is command removes rows from a table based on a condition but retains the table structure and its schema. The operation is logged and can be rolled back if inside a transaction.

--truncate     command removes all rows from a table but retains the table structure. It is faster than DELETE because it doesn't log individual row deletions and cannot be rolled back in most databases.

--dropis command removes the entire table (or database), including its structure, data, and schema. Once dropped, the table cannot be recovered.


select * from employees

alter table employees alter column name VARCHAR(100)

alter table employees
ADD  department varchar(50)



alter table employees 
alter column salary float 




CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);



truncate table employees

