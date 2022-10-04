-----------------------------------------------------------------------
-------                 SQL Date Functions                  -----------
-----------------------------------------------------------------------

--/ Following is a list of all important Date and Time related functions available through SQL. There are various other functions supported by your RDBMS. Given list is based on MySQL RDBMS.


-- ADDDATE()   Adds dates
-- ADDTIME()   Adds time
-- CONVERT_TZ()  Converts from one timezone to another
-- CURDATE()   Returns the current date
-- CURRENT_DATE(), CURRENT_DATE   Synonyms for CURDATE()
-- CURRENT_TIME(), CURRENT_TIME  Synonyms for CURTIME()
-- CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP    Synonyms for NOW()
-- CURTIME()   Returns the current time
-- DATE_ADD()   Adds two dates
-- DATE_FORMAT()   Formats date as specified
-- DATE_SUB()   Subtracts two dates
-- DATE()   Extracts the date part of a date or datetime expression
-- DATEDIFF()   Subtracts two dates
--  DAY() Synonym    Synonym for DAYOFMONTH()
-- DAYNAME()  Returns the name of the weekday
-- DAYOFMONTH()   Returns the day of the month (1-31)
-- DAYOFWEEK()   Returns the weekday index of the argument CHAPTER 37
-- DAYOFYEAR()    Returns the day of the year (1-366)
--  EXTRACT     Extracts part of a date
--  FROM_DAYS()   Converts a day number to a date
--  FROM_UNIXTIME()   Formats date as a UNIX timestamp
-- HOUR()   Extracts the hour
-- LAST_DAY   Returns the last day of the month for the argument
-- LOCALTIME(), LOCALTIME             Synonym for NOW()
-- LOCALTIMESTAMP, LOCALTIMESTAMP()   Synonym for NOW()
-- MAKEDATE()     Creates a date from the year and day of year 
-- MAKETIME       MAKETIME()
-- MICROSECOND()   Returns the microseconds from argument
-- MINUTE()        Returns the minute from the argument
-- MONTH()        Returns the month from the date passed
-- MONTHNAME()   Returns the name of the month
--NOW()        Returns the current date and time
--
-- 
--
--


-- Examples 

mysql> SELECT DATE_ADD('1998-01-02', INTERVAL 31 DAY);
mysql> SELECT ADDDATE('1998-01-02', 31);
mysql> SELECT ADDTIME('1997-12-31 23:59:59.999999','1 1:1:1.000002');
mysql> SELECT CONVERT_TZ('2004-01-01 12:00:00','GMT','MET');
mysql> SELECT CURDATE();
mysql> SELECT CURTIME();