-----------------------------------------------------------------------
-------           SQL Alter, Truncate,                  -----------
-----------------------------------------------------------------------

--/ SQL ALTER TABLE command is used to add, delete or modify columns in an existing table. You would also use ALTER TABLE command to add and drop various constraints on an existing table.

-- Syntax

-- ALTER TABLE

ALTER TABLE table_name ADD column_name datatype;

-- DROP COLUMN

ALTER TABLE table_name DROP COLUMN column_name;

-- DATA TYPE

ALTER TABLE table_name MODIFY COLUMN column_name datatype;

-- NOT NULL

ALTER TABLE table_name MODIFY column_name datatype NOT NULL;

-- ADD UNIQUE CONSTRAINT

ALTER TABLE table_name ADD CONSTRAINT MyUniqueConstraint UNIQUE(column1, column2...);

-- ADD CHECK CONSTRAINT

ALTER TABLE table_name ADD CONSTRAINT MyUniqueConstraint CHECK (CONDITION);

-- ADD PRIMARY KEY CONSTRAINT

ALTER TABLE table_name ADD CONSTRAINT MyPrimaryKey PRIMARY KEY (column1, column2...);

-- DROP CONSTRAINT

ALTER TABLE table_name DROP CONSTRAINT MyUniqueConstraint;

ALTER TABLE table_name DROP INDEX MyUniqueConstraint; --/ Using MySQL

-- DROP PRIMARY KEY

ALTER TABLE table_name DROP CONSTRAINT MyPrimaryKey;

ALTER TABLE table_name DROP PRIMARY KEY; --/ Using MySQL

-- An example

ALTER TABLE CUSTOMERS ADD SEX char(1);
ALTER TABLE CUSTOMERS DROP SEX;

--/  The SQL TRUNCATE TABLE command is used to delete complete data from an existing table. You can also use DROP TABLE command to delete 
--/ complete table but it would remove complete table structure form the database and you would need to re-create this table once again if you wish you store some data.

-- Syntax 

TRUNCATE TABLE table_name;

-- Example

SQL > TRUNCATE TABLE CUSTOMERS;

-- let's check 

SQL> SELECT * FROM CUSTOMERS; 