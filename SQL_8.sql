----------------------------------------------------------
-------    SQL Group By,  Distinct and  ORDER BY     -----------
----------------------------------------------------------

--/ GROUP BY clause is used in collaboration with the SELECT statement to arrange identical data into groups.
--/ The GROUP BY clause follows the WHERE clause in a SELECT statement and precedes the ORDER BY clause.
--  The GROUP BY clause must follow the conditions in the WHERE clause and must precede the ORDER BY clause if one is used

SELECT column1, column2 
FROM table_name 
WHERE [ conditions ] 
GROUP BY column1, column2, ... 
ORDER BY column1, column2,... ;

-- Example

SQL> SELECT NAME, SUM(SALARY) FROM CUSTOMERS 
    GROUP BY NAME;

--/  DISTINCT keyword is used in conjunction with SELECT statement to eliminate all the duplicate records and fetching only unique records.
--/ There may be a situation when you have multiple duplicate records in a table. While fetching such records, it makes more sense to fetch 
-- only unique records instead of fetching duplicate records.
-- The basic syntax of DISTINCT keyword to eliminate duplicate records is as follows:

SELECT DISTINCT column1, column2,.....columnN
FROM table_name
 WHERE [condition] ;

 -- Example ADD

 SQL> SELECT DISTINCT SALARY 
      FROM CUSTOMERS 
      ORDER BY SALARY;

--/  ORDER BY clause is used to sort the data in ascending or descending order, based on one or more columns. Some databases sort query results in ascending order by default.
--/ The basic syntax of ORDER BY clause which would be used to sort result in ascending or descending order is as follows:

SELECT column-list 
FROM table_name 
[WHERE condition] [ORDER BY column1, column2, .. columnN]
[ASC | DESC];

-- Example

SQL> SELECT * 
     FROM CUSTOMERS 
     ORDER BY NAME, SALARY;

 SQL> SELECT * 
 FROM CUSTOMERS 
 ORDER BY NAME DESC;