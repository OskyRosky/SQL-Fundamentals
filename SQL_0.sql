--------------------------------------------------------
--   Connecting to and Disconnecting from the Server   -
--------------------------------------------------------


-- /  We can use My SQLtools or  usually need to provide a MySQL user name when you invoke mysql and, most likely, a password.
-- / If the server runs on a machine other than the one where you log in, you also need to specify a host name. Contact your administrator 
--/ to find out what connection parameters you should use to connect (that is, what host, user name, and password to use). 

mysql -h host -u user -p
Enter password: ********

-- /host and user represent the host name where your MySQL server is running and the user name of your
-- / MySQL account. Substitute appropriate values for your setup. The ******** represents your password;
-- / enter it when mysql displays the Enter password: prompt.

-- / If that works, you should see some introductory information followed by a mysql> prompt:

$> mysql -h host -u user -p
Enter password: ********
Welcome to the MySQL monitor. Commands end with ; or \g.
Your MySQL connection id is 25338 to server version: 5.7.39-standard
Type 'help;' or '\h' for help. Type '\c' to clear the buffer.
mysql>


-- / If you are logging in on the same machine that MySQL is running on, you can omit the host, and simply use the following:

mysql -u user -p

--/ After you have connected successfully, you can disconnect any time by typing QUIT (or \q) at the mysql> prompt:

mysql> QUIT
Bye

--------------------------------------------------------
--                    SQL Commnads                     -
--------------------------------------------------------

-- The standard SQL commands to interact with relational databases are CREATE, SELECT, INSERT, UPDATE, DELETE and DROP. These commands can be classified into groups based on their nature:

-- DDL Data Definition Language:  

CREATE       Creates a new table, a view of a table, or other object in database
ALTER        Modifies an existing database object, such as a table.
DROP         Deletes an entire table, a view of a table or other object in the database.

-- DDL Data Definition Language:  

INSERT        Creates a record
UPDATE        Modifies records
DELETE        Deletes records    

-- DCL Data Control Language:

GRANT     Gives a privilege to user
REVOKE    Takes back privileges granted from user

-- DQL Data Query Language:

SELECT  Retrieves certain records from one or more tables


--------------------------------------------------------
--                  SQL Constraints:                   -
--------------------------------------------------------


-- / Constraints are the rules enforced on data columns on table. These are used to limit the type of data that can go into a table. This ensures the accuracy and reliability of the data in the database.
-- / Constraints could be column level or table level. Column level constraints are applied only to one column, whereas table level constraints are applied to the whole table.
-- /  Following are commonly used constraints available in SQL:

NOT NULL Constraint: Ensures that a column cannot have NULL value. 
DEFAULT Constraint: Provides a default value for a column when none is specified. 
UNIQUE Constraint: Ensures that all values in a column are different. 
PRIMARY Key: Uniquely identified each rows/records in a database table. 
FOREIGN Key: Uniquely identified a rows/records in any another database table. 
CHECK Constraint: The CHECK constraint ensures that all values in a column satisfy certain conditions. 
0INDEX: Use to create and retrieve data from the database very quickly.