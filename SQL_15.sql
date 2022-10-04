-----------------------------------------------------------------------
-------                 SQL Transactions                    -----------
-----------------------------------------------------------------------

--/ A transaction is a unit of work that is performed against a database. Transactions are units or sequences of work accomplished in a logical order,
--/ whether in a manual fashion by a user or automatically by some sort of a database program.
--/ A transaction is the propagation of one or more changes to the database. For example, if you are creating a record or updating a record or deleting 
--/ a record from the table, then you are performing transaction on the table. It is important to control transactions to ensure data integrity and to handle database errors.
--/ Practically, you will club many SQL queries into a group and you will execute all of them together as a part of a transaction.

--/ Properties of Transactions:

-- Transactions have the following four standard properties, usually referred to by the acronym ACID:

-- Atomicity: ensures that all operations within the work unit are completed successfully; otherwise, the transaction is aborted at the point of failure, and previous operations are rolled back to their former state.
-- Consistency: ensures that the database properly changes states upon a successfully committed transaction.
-- Isolation: enables transactions to operate independently of and transparent to each other.
-- Durability: ensures that the result or effect of a committed transaction persists in case of a system failure.


--/ Transaction Control: there are following commands used to control transactions

-- COMMIT: to save the changes.
-- ROLLBACK: to rollback the changes.
-- SAVEPOINT: creates points within groups of transactions in which to ROLLBACK
-- SET TRANSACTION: Places a name on a transaction.

-- Transactional control commands are only used with the DML commands INSERT, UPDATE and DELETE only. They can not be used while creating tables or dropping
-- them because these operations are automatically committed in the database.

--/  The COMMIT Command:
-- The COMMIT command is the transactional command used to save changes invoked by a transaction to the database.

-- Syntax

COMMIT;

-- Example

SQL> DELETE FROM CUSTOMERS WHERE AGE = 25;
SQL> COMMIT;


-- / The ROLLBACK command: 
-- The ROLLBACK command is the transactional command used to undo transactions that have not already been saved to the database.
-- The ROLLBACK command can only be used to undo transactions since the last COMMIT or ROLLBACK command was issued.

-- Syntax

ROLLBACK;

-- Example

SQL> 

DELETE FROM CUSTOMERS WHERE AGE = 25; SQL> 

ROLLBACK;

-- As a result, delete operation would not impact the table:

--/  The SAVEPOINT Command:
-- A SAVEPOINT is a point in a transaction when you can roll the transaction back to a certain point without rolling back the entire transaction.

-- Syntax 

SAVEPOINT SAVEPOINT_NAME;

-- This command serves only in the creation of a SAVEPOINT among transactional statements. The ROLLBACK command is used to undo a group of transactions.

-- Syntax for rolling back to a SAVEPOINT is as follows

ROLLBACK TO SAVEPOINT_NAME;

-- Example : plan to delete the three different records from the CUSTOMERS table. You want to create a SAVEPOINT before each delete, so that you can ROLLBACK to any SAVEPOINT at any 
-- time to return the appropriate data to its original state:

SQL> SAVEPOINT SP1; Savepoint created. 
SQL> DELETE FROM CUSTOMERS WHERE ID=1; 
1 row deleted. 
SQL> SAVEPOINT SP2; 
Savepoint created. 
SQL> DELETE FROM CUSTOMERS WHERE ID=2;
1 row deleted. 
SQL> SAVEPOINT SP3; 
Savepoint created. SQL> DELETE FROM CUSTOMERS WHERE ID=3;
 1 row deleted.

 -- Now that the three deletions have taken place, say you have changed your mind and decided to ROLLBACK to the SAVEPOINT that you identified as SP2. 
 -- Because SP2 was created after the first deletion, the last two deletions are undone:

 SQL> ROLLBACK TO SP2; Rollback complete.

 --/  The SAVEPOINT Command:
 -- The RELEASE SAVEPOINT command is used to remove a SAVEPOINT that you have created.
 -- Syntax

 RELEASE SAVEPOINT SAVEPOINT_NAME;

 -- Once a SAVEPOINT has been released, you can no longer use the ROLLBACK command to undo transactions performed since the SAVEPOINT.

 --/ The SET TRANSACTION Command:
 -- The SET TRANSACTION command can be used to initiate a database transaction. This command is used to specify characteristics for the transaction that follows.

 SET TRANSACTION [ READ WRITE | READ ONLY ];