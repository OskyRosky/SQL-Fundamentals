-----------------------------------------------------------------------
-------                SQL Having Clause                    -----------
-----------------------------------------------------------------------

--/ The HAVING clause enables you to specify conditions that filter which group results appear in the final results. The WHERE clause places conditions on the selected columns, whereas 
--/ the HAVING clause places conditions on groups created by the GROUP BY clause.

-- Syntax :  the position of the HAVING clause in a query:

SELECT
FROM 
WHERE 
GROUP BY 
HAVING 
ORDER BY;

-- The HAVING clause must follow the GROUP BY clause in a query and must also precede the ORDER BY clause if used. The following is the syntax of the SELECT statement, including the HAVING clause:

SELECT column1, column2 
FROM table1, table2 
WHERE [ conditions ] 
GROUP BY column1, column2 
HAVING [ conditions ] 
ORDER BY column1, column2;

-- Example

SQL > 

SELECT * 
FROM CUSTOMERS 
GROUP BY age
HAVING COUNT(age) >= 2;