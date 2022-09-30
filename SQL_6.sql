--------------------------------------------------------------------------------------
--        SQL insert,  select,  querry , AND and OR, UDPATE and DELEE query       ----
--------------------------------------------------------------------------------------

--/ SQL INSERT INTO Statement is used to add new rows of data to a table in the database.
-- There are two basic syntaxes of INSERT INTO statement as follows:

INSERT INTO TABLE_NAME (column1, column2, column3,...columnN)] 
VALUES (value1, value2, value3,...valueN);

-- Example

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 ); 
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES (2, 'Khilan', 25, 'Delhi', 1500.00 ); 
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES (3, 'kaushik', 23, 'Kota', 2000.00 );
 INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES (4, 'Chaitali', 25, 'Mumbai', 6500.00 ); 
 INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES (5, 'Hardik', 27, 'Bhopal', 8500.00 ); 
 INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) VALUES (6, 'Komal', 22, 'MP', 4500.00 );

 --/ We could populate one table using another table, too
--  Here is the syntax:


INSERT INTO first_table_name [(column1, column2, ... columnN)] 
SELECT column1, column2, ...columnN 
FROM second_table_name 
[WHERE condition];

--/ SQL SELECT Statement is used to fetch the data from a database table which returns data in the form of result table. These result tables are called result-sets.
--  basic syntax of SELECT statement is as follows:
 
SELECT column1, column2, columnN FROM table_name;

--  Here, column1, column2...are the fields of a table whose values you want to fetch. 
-- if you want to fetch all the fields available in the field, then you can use the following syntax:

SELECT * FROM table_name;

-- Exampels

SQL> SELECT ID, NAME, SALARY FROM CUSTOMERS;
SQL> SELECT * FROM CUSTOMERS;

 -- /  SQL WHERE clause is used to specify a condition while fetching the data from single table or joining with multiple tables.
 -- /  If the given condition is satisfied, then only it returns specific value from the table. You would use WHERE clause to filter the records and fetching only necessary records.
 -- / The WHERE clause is not only used in SELECT statement, but it is also used in UPDATE, DELETE statement, etc., which we would examine in subsequent chapters.
--  The basic syntax of SELECT statement with WHERE clause is as follows:

SELECT column1, column2, columnN 
FROM table_name
 WHERE [condition];

 -- Example

 SQL> SELECT ID, NAME, SALARY 
 FROM CUSTOMERS 
 WHERE SALARY > 2000;


-- /  AND and OR operators are used to combine multiple conditions to narrow data in an SQL statement. These two operators are called conjunctive operators.
-- /  These operators provide a means to make multiple comparisons with different operators in the same SQL statement.


-- /  The AND operator allows the existence of multiple conditions in an SQL statement's WHERE clause.

SELECT column1, column2, columnN FROM table_name WHERE [condition1] AND [condition2]...AND [conditionN];

-- Example   

SQL> SELECT ID, NAME, SALARY 
FROM CUSTOMERS 
WHERE SALARY > 2000 AND age < 25;

-- /  The  OR operator is used to combine multiple conditions in an SQL statement's WHERE clause.
-- The basic syntax of OR operator with WHERE clause is as follows:

SELECT column1, column2, columnN 
FROM table_name 
WHERE [condition1] OR [condition2]...OR [conditionN];

-- Example
SQL> SELECT ID, NAME, SALARY FROM CUSTOMERS WHERE SALARY > 2000 OR age < 25;



-- /  SQL UPDATE Query is used to modify the existing records in a table.
--/   You can use WHERE clause with UPDATE query to update selected rows, otherwise all the rows would be affected.
--  The basic syntax of UPDATE query with WHERE clause is as follows:

UPDATE table_name 
SET column1 = value1, column2 = value2...., columnN = valueN
 WHERE [condition];

 -- Example

 SQL> UPDATE CUSTOMERS 
 SET ADDRESS = 'Pune'
  WHERE ID = 6;

SQL> UPDATE CUSTOMERS 
SET ADDRESS = 'Pune', SALARY = 1000.00;


-- / SQL DELETE Query is used to delete the existing records from a table.
--/  You can use WHERE clause with DELETE query to delete selected rows, otherwise all the records would be deleted.
-- The basic syntax of DELETE query with WHERE clause is as follows:

DELETE FROM table_name 
WHERE [condition];

--  Example

SQL> DELETE FROM CUSTOMERS WHERE ID = 6;
SQL> DELETE FROM CUSTOMERS;
