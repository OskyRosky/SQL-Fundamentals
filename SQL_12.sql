-----------------------------------------------------------------------
-------           SQL Alias Syntax, Indexes                 -----------
-----------------------------------------------------------------------

--/ You can rename a table or a column temporarily by giving another name known as alias.
--/ The use of table aliases means to rename a table in a particular SQL statement. The renaming is a temporary change and the actual table name does not change in the database. 
--The column aliases are used to rename a table's columns for the purpose of a particular SQL query.

-- Basic syntax

SELECT column1, column2.... 
FROM table_name AS alias_name 
WHERE [condition];

-- Example

SQL> 

SELECT C.ID, C.NAME, C.AGE, O.AMOUNT
FROM CUSTOMERS AS C, ORDERS AS O 
WHERE C.ID = O.CUSTOMER_ID;

--/ Indexes are special lookup tables that the database search engine can use to speed up data retrieval. Simply put, an index is a pointer to data in a table.
--/ An index in a database is very similar to an index in the back of a book. For example, if you want to reference all pages in a book that discuss a certain topic, 
--/ you first refer to the index, which lists all topics alphabetically and are then referred to one or more specific page numbers. An index helps speed up SELECT queries
--/ and WHERE clauses, but it slows down data input, with UPDATE and INSERT statements. Indexes can be created or dropped with no effect on the data. Creating an index involves 
--/the CREATE INDEX statement, which allows you to name the index, to specify the table and which column or columns to index, and to indicate whether the index is in ascending or 
--/descending order. Indexes can also be unique, similar to the UNIQUE constraint, in that the index prevents duplicate entries in the column or combination of columns 
--/on which there's an index. The CREATE

-- Basic syntax

CREATE INDEX index_name ON table_name; Single

-- Single Column Indexes:

CREATE INDEX index_name 
ON table_name (column_name);

-- Unique Indexes:

CREATE INDEX index_name 
ON table_name (column_name);

-- Composite Indexes:

CREATE INDEX index_name 
ON table_name (column1, column2);

-- DROP Index ADD

DROP INDEX index_name; You

--/ Avoid indexs when

-- Indexes should not be used on small tables. 
-- Tables that have frequent, large batch update or insert operations. 
-- Indexes should not be used on columns that contain a high number of NULL values. 
-- Columns that are frequently manipulated should not be indexed.