--------------------------------------------------------------------------------
----------      SQL Create,  drop and delete and select  database   ------------
--------------------------------------------------------------------------------

-- / SQL CREATE DATABASE statement is used to create new SQL database.
-- / Basic syntax of CREATE DATABASE statement is as follows:

CREATE DATABASE DatabaseName;


SQL> CREATE DATABASE testDB;


-- / Once a database is created, you can check it in the list of databases as follows:

SQL> SHOW DATABASES;


-- / SQL DROP DATABASE statement is used to drop an existing database in SQL schema.
-- / Basic syntax of DROP DATABASE statement is as follows:

DROP DATABASE DatabaseName;

-- if you want to delete an existing database <testDB>, then DROP DATABASE statement would be as follows:

SQL> DROP DATABASE testDB;


-- / You have multiple databases in your SQL Schema, then before starting your operation, you would need to select a database where all the operations would be performed.
-- Basic syntax of USE statement is as follows:

USE DatabaseName;

-- Example
SQL> SHOW DATABASES;
SQL> USE AMROOD;
