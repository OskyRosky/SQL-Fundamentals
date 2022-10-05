-----------------------------------------------------------------------
-------                   SQL Sub Queries                  -----------
-----------------------------------------------------------------------

--/ A Subquery or Inner query or Nested query is a query within another SQL query and embedded within the WHERE clause.
--/ A subquery is used to return data that will be used in the main query as a condition to further restrict the data to be retrieved.
--/ Subqueries can be used with the SELECT, INSERT, UPDATE, and DELETE statements along with the operators like =, <, >, >=, <=, IN, BETWEEN etc.

-- There are a few rules that subqueries must follow:

-- Subqueries must be enclosed within parentheses.
-- A subquery can have only one column in the SELECT clause, unless multiple columns are in the main query for the subquery to compare its selected columns.
-- An ORDER BY cannot be used in a subquery, although the main query can use an ORDER BY. The GROUP BY can be used to perform the same function as the ORDER BY in a subquery.
-- Subqueries that return more than one row can only be used with multiple value operators, such as the IN operator.
-- The SELECT list cannot include any references to values that evaluate to a BLOB, ARRAY, CLOB, or NCLOB.
-- A subquery cannot be immediately enclosed in a set function.
-- The BETWEEN operator cannot be used with a subquery; however, the BETWEEN operator can be used within the subquery.

--/ Subqueries with the SELECT Statement:

-- Subqueries are most frequently used with the SELECT statement. Syntax:

SELECT column_name [, column_name ]
FROM table1 [, table2 ] 
WHERE column_name OPERATOR
(   SELECT column_name [, column_name ] 
    FROM table1 [, table2 ] [WHERE]
)

-- Example

SQL> 
    SELECT * 
    FROM CUSTOMERS 
    WHERE ID IN (SELECT ID
                 FROM CUSTOMERS 
                 WHERE SALARY > 4500
                 ) ;

--/ Subqueries with the INSERT Statement:

-- Subqueries also can be used with INSERT statements. The INSERT statement uses the data returned from the subquery to insert into another table. 
-- The selected data in the subquery can be modified with any of the character, date or number functions. Syntax.ADD

INSERT INTO table_name [ (column1 [, column2 ]) ] 
            SELECT [ *|column1 [, column2 ] 
            FROM table1 [, table2 ] 
            [ WHERE VALUE OPERATOR ];

-- Example 

SQL> INSERT INTO CUSTOMERS_BKP 
    SELECT * FROM CUSTOMERS
    WHERE ID IN (
                    SELECT ID FROM CUSTOMERS
                    ) ;

--/ Subqueries with the UPDATE Statement:

-- The subquery can be used in conjunction with the UPDATE statement. 
-- Either single or multiple columns in a table can be updated when using a subquery with the UPDATE statement.
-- Syntax

UPDATE table 
SET column_name = new_value 
[ WHERE OPERATOR [ VALUE ] 
        (
            SELECT COLUMN_NAME 
            FROM TABLE_NAME) 
            [ WHERE) ];

-- Example 

SQL> 
    UPDATE CUSTOMERS 
    SET SALARY = SALARY * 0.25 
    WHERE AGE IN 
                (SELECT AGE FROM CUSTOMERS_BKP 
                WHERE AGE >= 27 );

--/ Subqueries with the DELETE Statement:

-- The subquery can be used in conjunction with the DELETE statement like with any other statements mentioned above. Syntax is as follows:

DELETE FROM TABLE_NAME 
[ WHERE OPERATOR [ VALUE ] 
                (SELECT COLUMN_NAME 
                FROM TABLE_NAME)
                 [ WHERE) ]

--  Example 

SQL> 
        DELETE FROM CUSTOMERS 
        WHERE AGE IN (SELECT AGE FROM CUSTOMERS_BKP
                     WHERE AGE > 27 );