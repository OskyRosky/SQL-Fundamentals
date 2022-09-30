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

-- .


-- .


-- .


-- .

-- .

-- .


-- .


-- .


-- .

