-----------------------------------------------------------------------
-------               SQL Unions, Intersect and Excep       -----------
-----------------------------------------------------------------------

--/ The SQL UNION clause/operator is used to combine the results of two or more SELECT statements without returning any duplicate rows.
--/ To use UNION, each SELECT must have the same number of columns selected, the same number of column expressions, the same data type, and have them in the same order, but they do not have to be the same length.

-- Basic syntax

SELECT column1 [, column2 ] 
FROM table1 [, table2 ] 
[WHERE condition] 

UNION 

SELECT column1 [, column2 ] 
FROM table1 [, table2 ]
 [WHERE condition]

 -- Example 

 SQL> 
 
 SELECT ID, NAME, AMOUNT, DATE 
 FROM CUSTOMERS
  LEFT JOIN ORDERS
   ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID 
 UNION 
 SELECT ID, NAME, AMOUNT, DATE 
 FROM CUSTOMERS 
 RIGHT JOIN ORDERS ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

 --/ The UNION ALL operator is used to combine the results of two SELECT statements including duplicate rows. The same rules that apply to UNION apply to the UNION ALL operator.

 -- Syntax UNION ALL
 
SELECT column1 [, column2 ] 
FROM table1 [, table2 ] 
[WHERE condition]
UNION ALL
SELECT column1 [, column2 ] 
FROM table1 [, table2 ] 
[WHERE condition]

 -- Example 

 SQL> 
 
 SELECT ID, NAME, AMOUNT, DATE 
 FROM CUSTOMERS
  LEFT JOIN ORDERS
   ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID 
 UNION ALL 
 SELECT ID, NAME, AMOUNT, DATE 
 FROM CUSTOMERS 
 RIGHT JOIN ORDERS ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID; 


--/ SQL INTERSECT Clause: is used to combine two SELECT statements, but returns rows only from the first SELECT statement that are identical to a row in the second SELECT statement.
--  The SQL INTERSECT clause/operator is used to combine two SELECT statements, but returns rows only from the first SELECT statement that are identical to a row in the second
-- SELECT statement. This means INTERSECT returns only common rows returned by the two SELECT statements. Just as with the UNION operator, the same rules apply when using the 
-- INTERSECT operator. MySQL does not support INTERSECT operator

-- syntax of INTERSECT is as follows:

SELECT column1 [, column2 ] 
FROM table1 [, table2 ] 
[WHERE condition] 

INTERSECT

 SELECT column1 [, column2 ] 
 FROM table1 [, table2 ] 
 [WHERE condition]

-- Example

SQL> 

SELECT ID, NAME, AMOUNT, DATE
FROM CUSTOMERS 
LEFT JOIN ORDERS ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID

 INTERSECT 
 
 SELECT ID, NAME, AMOUNT, DATE
 FROM CUSTOMERS 
 RIGHT JOIN ORDERS ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

  --/ SQL EXCEPT Clause : combines two SELECT statements and returns rows from the first SELECT statement that are not returned by the second SELECT statement.
  --/ The SQL EXCEPT clause/operator is used to combine two SELECT statements and returns rows from the first SELECT statement that are not returned by the second 
  -- SELECT statement. This means EXCEPT returns only rows, which are not available in second SELECT statement. 

  -- syntax of EXCEPT

  SELECT column1 [, column2 ]
   FROM table1 [, table2 ]
    [WHERE condition]
     EXCEPT 
     SELECT column1 [, column2 ]
      FROM table1 [, table2 ] 
      [WHERE condition];

      -- Example

      SQL> 
      
      SELECT ID, NAME, AMOUNT, DATE 
      FROM CUSTOMERS 
      LEFT JOIN ORDERS ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID
      
       EXCEPT 
       
       SELECT ID, NAME, AMOUNT, DATE 
       FROM CUSTOMERS 
       RIGHT JOIN ORDERS ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;

