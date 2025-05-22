Data: Raw facts and figures without context (e.g., numbers, text, images) that can be processed into meaningful information.

Database: An organized collection of structured data that can be easily accessed, managed, and updated.

Relational Database: A type of database that stores data in tables (rows and columns) with relationships between them using keys.

Table: A structured format in a database that stores data in rows (records) and columns (fields).
  High Performance: Efficient query engine and indexing for handling large volumes of data.

Security: Supports encryption, row-level security, and authentication modes.

Scalability: Can scale vertically and horizontally to support enterprise applications.

Backup & Recovery: Advanced backup and restore features including point-in-time recovery.

Integration Services: Includes tools like SSIS, SSRS, and SSAS for data integration, reporting, and analytics.
  Windows Authentication – Uses the Windows user credentials.

SQL Server Authentication – Requires a SQL Server–specific username and password.

CREATE DATABASE SchoolDB;

USE SchoolDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
| Command Type                           | Description                     | Examples                                                                      |
| -------------------------------------- | ------------------------------- | ----------------------------------------------------------------------------- |
| **DQL (Data Query Language)**          | Used to query the database.     | `SELECT * FROM Students;`                                                     |
| **DML (Data Manipulation Language)**   | Used to modify data.            | `INSERT`, `UPDATE`, `DELETE`<br>`INSERT INTO Students VALUES (1, 'Ali', 20);` |
| **DDL (Data Definition Language)**     | Defines and modifies structure. | `CREATE`, `ALTER`, `DROP`<br>`CREATE TABLE Students (...);`                   |
| **DCL (Data Control Language)**        | Controls access to data.        | `GRANT`, `REVOKE`<br>`GRANT SELECT ON Students TO user1;`                     |
| **TCL (Transaction Control Language)** | Manages transactions.           | `COMMIT`, `ROLLBACK`, `SAVEPOINT`<br>`BEGIN TRANSACTION; ... COMMIT;`         |

INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Ali', 20);
INSERT INTO Students (StudentID, Name, Age) VALUES (2, 'Sara', 22);
INSERT INTO Students (StudentID, Name, Age) VALUES (3, 'Omar', 21);

RESTORE DATABASE AdventureWorksDW2022
FROM DISK = 'C:\Backups\AdventureWorksDW2022.bak'
WITH MOVE 'AdventureWorksDW2022_Data' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorksDW2022.mdf',
     MOVE 'AdventureWorksDW2022_Log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorksDW2022_log.ldf',
     REPLACE;
