----------------------------------------------------------
-------                  SQL Constraints       -----------
----------------------------------------------------------

--/  Constraints are the rules enforced on data columns on table. These are used to limit the type of data that can go into a table.
--/ This ensures the accuracy and reliability of the data in the database.
--/ Contraints could be column level or table level. Column level constraints are applied only to one column where as table level constraints are applied to the whole table.

--/ Following are commonly used constraints available in SQL:

-- NOT NULL Constraint: Ensures that a column cannot have NULL value.
-- DEFAULT Constraint: Provides a default value for a column when none is specified.
-- UNIQUE Constraint: Ensures that all values in a column are different.
-- PRIMARY Key: Uniquely identified each rows/records in a database table.
-- FOREIGN Key: Uniquely identified a row/record in any other database table.
-- CHECK Constraint: The CHECK constraint ensures that all values in a column satisfy certain conditions.
-- INDEX: Use to create and retrieve data from the database very quickly.

--/  NOT NULL Constraint

-- By default, a column can hold NULL values. If you do not want a column to have a NULL value, then you need to define such constraint on this
-- column specifying that NULL is now not allowed for that column. A NULL is not the same as no data, rather, it represents unknown data.

CREATE TABLE CUSTOMERS( 
    ID INT NOT NULL, 
    NAME VARCHAR (20) NOT NULL, 
    AGE INT NOT NULL,
    ADDRESS CHAR (25) ,
     SALARY DECIMAL (18, 2), 
     PRIMARY KEY (ID) )
     ;

-- If a table as been created, we can use NOT NULL Constraint with ALTER TABLE

ALTER TABLE CUSTOMERS 
MODIFY SALARY DECIMAL (18, 2) NOT NULL; 

--/ DEFAULT

-- The DEFAULT constraint provides a default value to a column when the INSERT INTO statement does not provide a specific value.

CREATE TABLE CUSTOMERS( 
    ID INT NOT NULL, 
    NAME VARCHAR (20) NOT NULL, 
    AGE INT NOT NULL, 
    ADDRESS CHAR (25) , 
    SALARY DECIMAL (18, 2) DEFAULT 5000.00, 
    PRIMARY KEY (ID) 
    );

-- If a table as been created, we can use DEFAULT constraint to. ADD

ALTER TABLE CUSTOMERS 
MODIFY SALARY DECIMAL (18, 2) DEFAULT 5000.00;

--/ UNIQUE

-- The UNIQUE Constraint prevents two records from having identical values in a particular column. 
-- In the CUSTOMERS table, for example, you might want to prevent two or more people from having identical age.

CREATE TABLE CUSTOMERS( 
    ID INT NOT NULL, 
    NAME VARCHAR (20) NOT NULL, 
    AGE INT NOT NULL UNIQUE, 
    ADDRESS CHAR (25) , 
    SALARY DECIMAL (18, 2),
     PRIMARY KEY (ID)
      );

-- If a table as been created, we can use UNIQUE constraint

ALTER TABLE CUSTOMERS 
MODIFY AGE INT NOT NULL UNIQUE;

ALTER TABLE CUSTOMERS ADD
CONSTRAINT myUniqueConstraint UNIQUE(AGE, SALARY);

--/ PRIMARY Key:

-- primary key is a field in a table which uniquely identifies each row/record in a database table. Primary keys must contain unique values. 
-- A primary key column cannot have NULL values. A table can have only one primary key, which may consist of single or multiple fields. 
-- When multiple fields are used as a primary key, they are called a composite key.

CREATE TABLE CUSTOMERS( 
    ID INT NOT NULL, 
    NAME VARCHAR (20) NOT NULL, 
    AGE INT NOT NULL, 
    ADDRESS CHAR (25) , 
    SALARY DECIMAL (18, 2), 
    PRIMARY KEY (ID) 
    );

-- If a table as been created, we can use PRIMARY Key constraint

ALTER TABLE CUSTOMER ADD PRIMARY KEY (ID);

--/  FOREIGN Key:

-- Foreign key is a key used to link two tables together. This is sometimes called a referencing key. Primary key field from one table and insert it into the other table where it becomes a foreign key i.e., 
-- Foreign Key is a column or a combination of columns, whose values match a Primary Key in a different table. 
-- The relationship between 2 tables matches the Primary Key in one of the tables with a Foreign Key in the second table.

-- Table 1

CREATE TABLE CUSTOMERS( 
    ID INT NOT NULL, 
    NAME VARCHAR (20) NOT NULL, 
    AGE INT NOT NULL, 
    ADDRESS CHAR (25) , 
    SALARY DECIMAL (18, 2), 
    PRIMARY KEY (ID) 
);

-- Table 2

CREATE TABLE ORDERS (
     ID INT NOT NULL, 
     DATE DATETIME, 
     CUSTOMER_ID INT references CUSTOMERS(ID),
      AMOUNT double, 
      PRIMARY KEY (ID) 
      );

-- If ORDERS table has already been created, and the foreign key has not yet been, use the syntax for specifying a foreign key by altering a table.

ALTER TABLE ORDERS 
ADD FOREIGN KEY (Customer_ID) REFERENCES CUSTOMERS (ID);

--/ CHECK Constraint

-- The CHECK Constraint enables a condition to check the value being entered into a record. 
-- If the condition evaluates to false, the record violates the constraint and isn’t entered into the table.

CREATE TABLE CUSTOMERS( 
    ID INT NOT NULL, 
    NAME VARCHAR (20) NOT NULL, 
    AGE INT NOT NULL CHECK (AGE >= 18), 
    ADDRESS CHAR (25) , 
    SALARY DECIMAL (18, 2), 
    PRIMARY KEY (ID) 
    );

    ALTER TABLE CUSTOMERS MODIFY AGE INT NOT NULL CHECK (AGE >= 18 );

    ALTER TABLE CUSTOMERS  ADD CONSTRAINT myCheckConstraint CHECK(AGE >= 18); DROP a

--/ INDEX

-- The INDEX is used to create and retrieve data from the database very quickly. Index can be created by using single or group of columns in a table. 
-- When index is created, it is assigned a ROWID for each row before it sorts out the data. Proper indexes are good for performance in large databases, 
-- but you need to be careful while creating index. Selection of fields depends on what you are using in your SQL queries.

CREATE TABLE CUSTOMERS( 
    ID INT NOT NULL, 
    NAME VARCHAR (20) NOT NULL, 
    AGE INT NOT NULL, 
    ADDRESS CHAR (25) , 
    SALARY DECIMAL (18, 2), 
    PRIMARY KEY (ID) 
    );

-- Now, you can create index on single or multiple columns using the followwng syntax:

    CREATE INDEX index_name ON table_name ( column1, column2.....);

-- To create an INDEX on AGE column, to optimize the search on customers for a particular age, following is the SQL syntax:

CREATE INDEX idx_age ON CUSTOMERS ( AGE );