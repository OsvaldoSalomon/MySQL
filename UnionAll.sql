-- Create Table 1
CREATE TABLE table1 (ID INT, Value VARCHAR(10));
INSERT INTO table1 (ID, Value)
SELECT 1, 'First'
UNION ALL
SELECT 2, 'Second'
UNION ALL
SELECT 3, 'Third'
UNION ALL
SELECT 4, 'Fourth'
UNION ALL
SELECT 5, 'Fifth';

-- Create table 2
CREATE TABLE table2 (ID INT, Value VARCHAR(10));
INSERT INTO table2 (ID, Value)
SELECT 1, 'First'
UNION ALL
SELECT 2, 'Second - 2'
UNION ALL
SELECT 3, 'Third'
UNION ALL
SELECT 6, 'Sixth'
UNION ALL
SELECT 7, 'Seventh'
UNION ALL
SELECT 8, 'Eighth';

SELECT * FROM table1;
SELECT * FROM table2;

/* UNION ALL */
SELECT t1.ID AS T1ID, t1.Value AS T1Value
FROM Table1 t1
UNION ALL
SELECT t2.ID T2ID, t2.Value AS T2Value
FROM Table2 t2;

/* UNION ALL */
-- ERROR
/*  UNION ALL */
SELECT t1.ID T1ID from Table1 t1
UNION ALL
SELECT t2.ID AS T2ID, t2.Value as T2Value
from Table2 t2;

/* UNION */
SELECT t1.ID T1ID, t1.Value AS T1Value
from Table1 t1
UNION
SELECT t2.ID AS T2ID, t2.Value AS T2Value 
FROM Table2 t2;

-- Clean up
drop table table1;
drop table table2;

