----------------------------------------------------------
-------               SQL Joins                -----------
----------------------------------------------------------

-- /The SQL Joins clause is used to combine records from two or more tables in a database. A JOIN is a means for combining fields from two tables by using values common to each.
-- There are different types of joins available in SQL:

-- INNER JOIN: returns rows when there is a match in both tables.
-- LEFT JOIN: returns all rows from the left table, even if there are no matches in the right table.
-- RIGHT JOIN: returns all rows from the right table, even if there are no matches in the left table.
-- FULL JOIN: returns rows when there is a match in one of the tables.
-- SELF JOIN: is used to join a table to itself as if the table were two tables, temporarily renaming at least one table in the SQL statement.
-- CARTESIAN JOIN: returns the Cartesian product of the sets of records from the two or more joined tables.


-- INNER JOIN: 

-- The most frequently used and important of the joins is the INNER JOIN. They are also referred to as an EQUIJOIN.
-- The INNER JOIN creates a new result table by combining column values of two tables (table1 and table2) based upon the join-predicate. 
-- The query compares each row of table1 with each row of table2 to find all pairs of rows which satisfy the join-predicate. 
-- When the join-predicate is satisfied, column values for each matched pair of rows of A and B are combined into a result row.

SELECT table1.column1, table2.column2... 
FROM table1 
INNER JOIN table2
ON table1.common_filed = table2.common_field;

-- Exameple

SQL> SELECT ID, NAME, AMOUNT, DATE 
        FROM CUSTOMERS 
        INNER JOIN ORDERS 
        ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

-- LEFT JOIN: 

-- The SQL LEFT JOIN returns all rows from the left table, even if there are no matches in the right table. This means that if the ON clause matches 0 (zero) records in right table, 
-- the join will still return a row in the result, but with NULL in each column from right table. This means that a left join returns all the values from the left table, plus matched 
-- values from the right table or NULL in case of no matching join predicate.

SELECT table1.column1, table2.column2...
 FROM table1 
 LEFT JOIN table2 
 ON table1.common_filed = table2.common_field;

-- Exameple

SQL> SELECT ID, NAME, AMOUNT, DATE 
FROM CUSTOMERS
 LEFT JOIN ORDERS
  ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

-- RIGHT JOIN: 

-- The SQL RIGHT JOIN returns all rows from the right table, even if there are no matches in the left table. This means that if the ON clause matches 0 (zero) records in left table, 
-- the join will still return a row in the result, but with NULL in each column from left table. This means that a right join returns all the values from the right table, plus matched 
-- values from the left table or NULL in case of no matching join predicate.

SELECT table1.column1, table2.column2... 
FROM table1 
RIGHT JOIN table2 
ON table1.common_filed = table2.common_field; 

-- Exameple

SQL> SELECT ID, NAME, AMOUNT, DATE 
FROM CUSTOMERS 
RIGHT JOIN ORDERS
 ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

-- FULL JOIN:

--  The SQL FULL JOIN combines the results of both left and right outer joins. The joined table will contain all records from both tables, and fill in NULLs for missing matches on either side.

SELECT table1.column1, table2.column2... 
FROM table1 FULL 
JOIN table2 
ON table1.common_filed = table2.common_field;

-- Exameple

SQL> SELECT ID, NAME, AMOUNT, DATE 
FROM CUSTOMERS 
FULL JOIN ORDERS 
ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

-- SELF JOIN:

-- The SQL SELF JOIN is used to join a table to itself as if the table were two tables, temporarily renaming at least one table in the SQL statement.

SELECT a.column_name, b.column_name... 
FROM table1 a, table1 b 
WHERE a.common_filed = b.common_field;

-- Exameple

SQL> SELECT a.ID, b.NAME, a.SALARY 
    FROM CUSTOMERS a, CUSTOMERS b 
        WHERE a.SALARY < b.SALARY;

-- CARTESIAN JOIN: 

-- The CARTESIAN JOIN or CROSS JOIN returns the cartesian product of the sets of records from the two or more joined tables. Thus, it equates to an inner join 
-- where the join-condition always evaluates to True or where the join-condition is absent from the statement.

SELECT table1.column1, table2.column2... 
FROM table1, table2 [, table3 ]

-- Exameple

SQL> SELECT ID, NAME, AMOUNT, DATE 
        FROM CUSTOMERS, ORDERS;