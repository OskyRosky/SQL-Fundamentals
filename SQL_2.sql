-----------------------------------------------
----------        SQL Operators   -------------
-----------------------------------------------


--/  An operator is a reserved word or a character used primarily in an SQL statement's WHERE clause to perform operation(s), such as comparisons and arithmetic operations.
--/  Operators are used to specify conditions in an SQL statement and to serve as conjunctions for multiple conditions in a statement.

-- Arithmetic operators 
-- Comparison operators 
-- Logical operators 
 -- Operators used to negate conditions


--/ SQL Arithmetic Operators:


-- +     Addition - Adds values on either side of the operator
-- -     Subtraction - Subtracts right hand operand from left hand operand
-- *     Multiplication - Multiplies values on either side of the operator a
-- /     Division - Divides left hand operand by right hand operand
-- %     Modulus - Divides left hand operand by right hand operand and returns remainder


/-- Examples 

SQL> select 10+ 20;
SQL> select 10 * 20;
SQL> select 10 / 5;
SQL> select 12 % 5;

--/ SQL Arithmetic Operators:    (nummeric comparison)


--  =    Checks if the values of two operands are equal or not, if yes then condition becomes true.
--  !=   Checks if the values of two operands are equal or not, if values are not equal then condition becomes true.
--  <>   Checks if the values of two operands are equal or not, if values are not equal then condition becomes true.
--  >    Checks if the value of left operand is greater than the value of right operand, if yes then condition becomes true.
--  <    Checks if the value of left operand is less than the value of right operand, if yes then condition becomes true.
--  >=   Checks if the value of left operand is greater than or equal to the value of right operand, if yes then condition becomes true.
--  <=   Checks if the value of left operand is less than or equal to the value of right operand, if yes then condition becomes true.
--  !<   Checks if the value of left operand is not less than the value of right operand, if yes then condition becomes true.
--  !>   Checks if the value of left operand is not greater than the value of right operand, if yes then condition becomes true.


/-- Examples 

SQL> SELECT * FROM CUSTOMERS WHERE SALARY > 5000;
SQL> SELECT * FROM CUSTOMERS WHERE SALARY = 2000;
SQL> SELECT * FROM CUSTOMERS WHERE SALARY != 2000;
SQL> SELECT * FROM CUSTOMERS WHERE SALARY <> 2000;
SQL> SELECT * FROM CUSTOMERS WHERE SALARY >= 6500;

--/ SQL Logical Operators:    (string comparison + nummeric comparison)


-- ALL      The ALL operator is used to compare a value to all values in another value set.
-- AND      The AND operator allows the existence of multiple conditions in an SQL statement's WHERE clause.
-- ANY      The ANY operator is used to compare a value to any applicable value in the list according to the condition.
-- BETWEEN  The BETWEEN operator is used to search for values that are within a set of values, given the minimum value and the maximum value.  
-- EXISTS   The EXISTS operator is used to search for the presence of a row in a specified table that meets certain criteria.
-- IN       The IN operator is used to compare a value to a list of literal values that have been specified.
-- LIKE     The LIKE operator is used to compare a value to similar values using wildcard operators.
-- NOT      The NOT operator reverses the meaning of the logical operator with which it is used. Eg: NOT EXISTS, NOT BETWEEN, NOT IN, etc. This is a negate operator.
-- OR       The OR operator is used to combine multiple conditions in an SQL statement's WHERE clause.
-- IS NULL  The NULL operator is used to compare a value with a NULL value.
-- UNIQUE   The UNIQUE operator searches every row of a specified table for uniqueness (no duplicates).

/-- Examples  ADD

SQL> SELECT * FROM CUSTOMERS WHERE AGE >= 25 AND SALARY >= 6500;
SQL> SELECT * FROM CUSTOMERS WHERE AGE >= 25 OR SALARY >= 6500;
SQL> SELECT * FROM CUSTOMERS WHERE AGE IS NOT NULL;
SQL> SELECT * FROM CUSTOMERS WHERE NAME LIKE 'Ko%';
SQL> SELECT * FROM CUSTOMERS WHERE AGE IN ( 25, 27 );
SQL> SELECT * FROM CUSTOMERS WHERE AGE BETWEEN 25 AND 27;
SQL> SELECT AGE FROM CUSTOMERS WHERE EXISTS (SELECT AGE FROM CUSTOMERS WHERE SALARY > 6500);
SQL> SELECT * FROM CUSTOMERS WHERE AGE > ALL (SELECT AGE FROM CUSTOMERS WHERE SALARY > 6500);
SQL> SELECT * FROM CUSTOMERS WHERE AGE > ANY (SELECT AGE FROM CUSTOMERS WHERE SALARY > 6500);






