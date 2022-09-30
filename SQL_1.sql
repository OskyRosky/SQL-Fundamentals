------------------------------------
--        SQL Syntax   -------------
------------------------------------


-- SQL by listing all the basic SQL Synta
-- All the SQL statements start with any of the keywords like SELECT, INSERT, UPDATE, DELETE, ALTER, DROP, CREATE, USE, SHOW and all the statements end with a semicolon (;) 
-- exclusive to MySQL

-- if you are working with MySQL, then you need to give table names as they exist in the database.

-- 1. SQL SELECT Statement:

SELECT column1, column2, ...  
FROM table_name;

-- 2. SQL DISTINCT Clause:

SELECT DISTINCT column1, column2....columnN 
FROM table_name;

-- 3.  SQL WHERE Clause:

SELECT column1, column2....columnN 
FROM table_name 
WHERE CONDITION;

-- 4. SQL AND/OR Clause:

SELECT column1, column2....columnN 
FROM table_name 
WHERE CONDITION1 {AND|OR} CONDITION22;

-- 5. SQL IN Clause:

SELECT column1, column2....columnN 
FROM table_name 
WHERE column_name IN (val-1, val-2,...val-N);

-- 6. SQL BETWEEN Clause:

SELECT column1, column2....columnN
FROM table_name 
WHERE column_name BETWEEN val1 AND val2;

-- 7.  SQL LIKE Clause:

SELECT column1, column2....columnN 
FROM table_name 
WHERE column_name LIKE { PATTERN };

-- 8. SQL ORDER BY Clause:

SELECT column1, column2....columnN 
FROM table_name 
WHERE CONDITION 
ORDER BY column_name {ASC|DESC};

-- 9. SQL GROUP BY Clause:

SELECT SUM(column_name) 
FROM table_name 
WHERE CONDITION 
GROUP BY column_name;

-- 10. SQL COUNT Clause:

SELECT COUNT(column_name) 
FROM table_name 
WHERE CONDITION; 

-- 11. SQL HAVING Clause:

SELECT SUM(column_name) 
FROM table_name 
WHERE CONDITION
GROUP BY column_name 
HAVING (arithematic function condition);

-- 12. SQL CREATE TABLE Statement:

CREATE TABLE table_name(
column1 datatype,
column2 datatype, 
column3 datatype,
 ..... columnN
  datatype, 
  PRIMARY KEY( one or more columns ) 
  );

-- 13. SQL DROP TABLE Statement:

DROP TABLE table_name;

-- 14. SQL CREATE INDEX Statement

CREATE UNIQUE INDEX index_name 
ON table_name ( column1, column2,...columnN);

-- 15. SQL DROP INDEX Statement.

ALTER TABLE table_name 
DROP INDEX index_name; 

-- 16. SQL DESC Statement

DESC table_name;

-- 17. SQL TRUNCATE TABLE Statement:

TRUNCATE TABLE table_name; SQL ALTER

-- 18. SQL ALTER TABLE Statement:

ALTER TABLE table_name {ADD|DROP|MODIFY} column_name {data_ype};

-- 19. SQL ALTER TABLE Statement (Rename).

ALTER TABLE table_name RENAME TO new_table_name;

-- 20. SQL INSERT INTO Statement:

INSERT INTO table_name( column1, column2....columnN) 
VALUES ( value1, value2....valueN);

-- 21. SQL UPDATE Statement:

UPDATE table_name
SET column1 = value1, column2 = value2....columnN=valueN 
[ WHERE CONDITION ];

-- 22. SQL DELETE Statement:

DELETE FROM 
table_name WHERE {CONDITION};

-- 23. SQL CREATE DATABASE Statement:

CREATE DATABASE database_name; SQL DROP

-- 24. SQL DROP DATABASE Statement:

DROP DATABASE database_name; SQL USE

-- 25. SQL USE Statement:

USE DATABASE database_name;

-- 26. SQL COMMIT Statement:

COMMIT;

-- 27. SQL ROLLBACK Statement:

ROLLBACK;

