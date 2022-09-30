----------------------------------------------------------
-------    SQL Clauses: Like, TOP and ORDER    -----------
----------------------------------------------------------

--/ SQL LIKE clause is used to compare a value to similar values using wildcard operators.
--/  There are two wildcards used in conjunction with the LIKE operator:

-- The percent sign (%)
-- The underscore (_)

--/ The percent sign represents zero, one, or multiple characters. The underscore represents a single number or character. The symbols can be used in combinations.
--  The basic syntax of % and _ is as follows:

SELECT FROM table_name WHERE column LIKE 'XXXX%' 

SELECT FROM table_name WHERE column LIKE '%XXXX%' 
 
SELECT FROM table_name WHERE column LIKE 'XXXX_'  

SELECT FROM table_name WHERE column LIKE '_XXXX' 

SELECT FROM table_name WHERE column LIKE '_XXXX_'

-- Exampel

-- WHERE SALARY LIKE '200%'    Finds any values that start with 200
-- WHERE SALARY LIKE '%200%'   Finds any values that have 200 in any position
-- WHERE SALARY LIKE '_00%'    Finds any values that have 00 in the second and third positions
-- WHERE SALARY LIKE '2_%_%'   Finds any values that start with 2 and are at least 3 characters in length
-- WHERE SALARY LIKE '%2'      Finds any values that end with 2
-- WHERE SALARY LIKE '_2%3'    Finds any values that have a 2 in the second position and end with a 3 
-- WHERE SALARY LIKE '2___3'   Finds any values in a five-digit number that start with 2 and end with 3

SQL> SELECT * FROM CUSTOMERS 
WHERE SALARY LIKE '200%';

--/ SQL TOP clause is used to fetch a TOP N number or X percent records from a table.
--/ All the databases do not support TOP clause. For example MySQL supports LIMIT clause to fetch limited number of records and Oracle uses ROWNUM to fetch limited number of records.
--  The basic syntax of TOP clause with SELECT statement would be as follows:

SELECT TOP number|percent column_name(s) 
FROM table_name 
WHERE [condition]

-- Example

SQL> SELECT TOP 3 * FROM CUSTOMERS;
SQL> SELECT * FROM CUSTOMERS LIMIT 3;

SQL> SELECT * FROM CUSTOMERS WHERE ROWNUM <= 3;

--/ SQL ORDER BY clause is used to sort the data in ascending or descending order, based on one or more columns. 
-- / Some database sorts query results in ascending order by default.
--  The basic syntax of ORDER BY clause is as follows:

SELECT column-list 
FROM table_name [W
HERE condition] 
[ORDER BY column1, column2, .. columnN] [ASC | DESC];

-- Example

SQL> SELECT * FROM CUSTOMERS
     ORDER BY NAME, SALARY;

SQL> SELECT * FROM CUSTOMERS 
      ORDER BY NAME DESC;

