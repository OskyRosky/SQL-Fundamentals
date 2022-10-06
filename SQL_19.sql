-----------------------------------------------------------------------------------
-------                        SQL Functions                                 ------
-----------------------------------------------------------------------------------

--/ SQL has many built-in functions for performing processing on string or numeric data. Following is the list of all useful SQL built-in functions:


-- SQL COUNT Function  The SQL COUNT aggregate function is used to count the number of rows in a database table.
-- SQL MAX Function    The SQL MAX aggregate function allows us to select the highest (maximum) value for a certain column.
-- SQL MIN Function    The SQL MIN aggregate function allows us to select the lowest (minimum) value for a certain column.
-- SQL SUM Function    The SQL AVG aggregate function selects the average value for certain table column.
-- SQL SQRT Functions  The SQL SUM aggregate function allows selecting the total for a numeric column.
-- SQL RAND Function   This is used to generate a square root of a given number.
-- SQL CONCAT Function  This is used to generate a random number using SQL command.
-- SQL Numeric Functions  Complete list of SQL functions required to manipulate numbers in SQL.
-- SQL String Functions  Complete list of SQL functions required to manipulate strings in SQL.

-- SQL COUNT Function

SQL>SELECT COUNT(*) FROM employee_tbl ;

SQL>SELECT COUNT(*) FROM employee_tbl -> WHERE name="Zara";

-- SQL MAX Function

SQL> SELECT MAX(daily_typing_pages) -> FROM employee_tbl;

SQL> SELECT MIN(daily_typing_pages) least, MAX(daily_typing_pages) max -> FROM employee_tbl;

--  SQL MIN and MAX Function 

SQL> SELECT id, name, work_date, MIN(daily_typing_pages) -> FROM employee_tbl GROUP BY name;


SQL> SELECT MIN(daily_typing_pages) least, 
        -> MAX(daily_typing_pages) max 
        -> FROM employee_tbl;

--  SQL AVG Function

SQL> SELECT AVG(daily_typing_pages) 
    -> FROM employee_tbl;

--  SQL SUM Function

SQL> 
    SELECT SUM(daily_typing_pages) 
    -> FROM employee_tbl;

-- SQL SQRT Functions
SQL> SELECT name, SQRT(daily_typing_pages) -> 
        FROM employee_tbl;


-- SQL RAND Function

SQL> SELECT * FROM employee_tbl ORDER BY RAND();

-- SQL CONCAT Function

SQL> SELECT CONCAT(id, name, work_date) 
    -> FROM employee_tbl;


SQL> SELECT CONCAT('FIRST ', 'SECOND');

--SQL Numeric Functions

-- ABS()

SQL> SELECT ABS(2);

-- ACOS()
SQL> SELECT ACOS(1);

-- ASIN()

SELECT ASIN(1);

-- CEIL()

SELECT CEILING(3.46);
SELECT CEIL(-6.43);

-- ROUND(X);

SQL>SELECT ROUND(5.693893);
SQL>SELECT ROUND(5.693893,2);

-- And so on...


--/ SQL String Functions

-- ASCII()

SQL> SELECT ASCII('2');

-- CHAR()

SQL> SELECT CHAR(77,121,83,81,'76');

-- CONCAT()

SQL> SELECT CONCAT('My', 'S', 'QL');

-- CONV()

SQL> SELECT CONV('a',16,2);

-- LEFT()

SQL> SELECT LEFT('foobarbar', 5);

-- LTRIM()

SQL> SELECT LTRIM(' barbar');

-- REGEXP

SQL> SELECT 'ABCDEF' REGEXP 'A%C%%';

-- REPLACE()

SQL> SELECT REPLACE('www.mysql.com', 'w', 'Ww');

-- REVERSE()

SQL> SELECT REVERSE('abcd');

--  UPPER()

SELECT UPPER('Allah-hus-samad');

-- etc...