-----------------------------------------------
----------        SQL expression   ------------
-----------------------------------------------

-- / expression is a combination of one or more values, operators, and SQL functions that evaluate to a value.
-- / SQL EXPRESSIONs are like formulas and they are written in query language. You can also use them to query the database for specific set of data. 

-- Consider the basic syntax of the SELECT statement as follows:

SELECT column1, column2, columnN 
FROM table_name 
WHERE [CONDITION|EXPRESSION];

--/ There are different types of SQL expressions

-- 1.  SQL Boolean Expressions:
-- SQL Boolean Expressions fetch the data on the basis of matching single value.

SELECT column1, column2, columnN FROM table_name WHERE SINGLE VALUE MATCHTING EXPRESSION;

SQL> SELECT * FROM CUSTOMERS WHERE SALARY = 10000;

-- 2.  SQL Numeric Expression:
-- This expression is used to perform any mathematical operation in any query.

SELECT numerical_expression as OPERATION_NAME [FROM table_name WHERE CONDITION] ;
SELECT (15 + 6) AS ADDITION ; 
SELECT COUNT(*) AS "RECORDS" FROM CUSTOMERS;


-- 3.  SQL Date Expressions:
-- Date Expressions return current system date and time values:

SQL> SELECT CURRENT_TIMESTAMP;
SQL> SELECT GETDATE();