-----------------------------------------------------------------------------------
-------                     SQL Using Sequences ,  Handling Duplicates              ------
-----------------------------------------------------------------------------------

--/ Asequence is a set of integers 1, 2, 3, ... that are generated in order on demand. Sequences are frequently used in databases because 
--/ many applications require each row in a table to contain a unique value, and sequences provide an easy way to generate them.

--/ Using AUTO_INCREMENT column:

-- The simplest way in MySQL to use sequences is to define a column as AUTO_INCREMENT and leave rest of the things to MySQL to take care.

-- Example

mysql> 

CREATE TABLE INSERT -> ( 
    -> id INT UNSIGNED NOT NULL AUTO_INCREMENT, 
    -> PRIMARY KEY (id), -> name VARCHAR(30) NOT NULL, 
    -> type of insect
     -> date DATE NOT NULL, 
     -> date collected 
     -> origin VARCHAR(30) NOT NULL 
     -> where collected );

mysql> INSERT INTO INSECT (id,name,date,origin) VALUES 
    -> (NULL,'housefly','2001-09-10','kitchen'), 
    -> (NULL,'millipede','2001-09-10','driveway'), 
    -> (NULL,'grasshopper','2001-09-10','front yard');

--/ Obtain AUTO_INCREMENT Values:

-- LAST_INSERT_ID( ) is a SQL function, so you can use it from within any client that understands how to issue SQL statements. Otherwise, 
-- PERL and PHP scripts provide exclusive functions to retrieve auto-incremented value of last record.


--/ Handling Duplicates

-- There may be a situation when you have multiple duplicate records in a table. While fetching such records, it makes more sense to fetch only unique records instead of fetching duplicate records.
-- The SQL DISTINCT keyword, which we already have discussed, is used in conjunction with SELECT statement to eliminate all the duplicate records and fetching only unique records.
-- Syntax

SELECT DISTINCT column1, column2,.....columnN 
FROM table_name WHERE [condition]

-- Example

SQL> SELECT SALARY 
    FROM CUSTOMERS 
    ORDER BY SALARY;

SQL> SELECT DISTINCT SALARY    -- we use de distinct
    FROM CUSTOMERS 
    ORDER BY SALARY;