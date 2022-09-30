--------------------------------------------------------------------------------
----------      SQL Create,  drop and delete tables     ------------
--------------------------------------------------------------------------------

-- / a basic table involves naming the table and defining its columns and each column's data type.
-- Basic syntax of CREATE TABLE statement is as follows:

CREATE TABLE table_name( 
                          column1 datatype, 
                          column2 datatype, 
                          column3 datatype, ..... 
                          columnN datatype, 
                          PRIMARY KEY( one or more columns ) 
                        );


-- /  CREATE TABLE is the keyword telling the database system what you want to do. In this case, you want to create a new table.
--  The unique name or identifier for the table follows the CREATE TABLE statement.

-- / Create Table Using another Table

-- A copy of an existing table can be created using a combination of the CREATE TABLE statement and the SELECT statement.
-- The new table has the same column definitions. All columns or specific columns can be selected.
-- When you create a new table using existing table, new table would be populated using existing values in the old table.
-- The basic syntax for creating a table from another table is as follows: CHAPTER 11

CREATE TABLE NEW_TABLE_NAME AS 
SELECT [ column1, column2...columnN ] 
FROM EXISTING_TABLE_NAME [ WHERE ] ; 


-- An example

SQL> CREATE TABLE SALARY AS SELECT ID, SALARY FROM CUSTOMERS;

SQL> CREATE TABLE CUSTOMERS
                            ( ID INT NOT NULL,
                             NAME VARCHAR (20) NOT NULL,
                              AGE INT NOT NULL, 
                              ADDRESS CHAR (25) , 
                              SALARY DECIMAL (18, 2), 
                              PRIMARY KEY (ID)
                               );

-- / SQL DROP TABLE statement is used to remove a table definition and all data, indexes, triggers, constraints, and permission specifications for that table.
-- Basic syntax of DROP TABLE statement is as follows:

DROP TABLE table_name;

-- An exampel 

SQL> DROP TABLE CUSTOMERS;

