-- Create Table 1
CREATE TABLE table1 (ID INT, Value1 VARCHAR(10));
INSERT INTO table1 (ID, Value1)
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
CREATE TABLE table2 (ID INT, Value2 VARCHAR(10));
INSERT INTO table2 (ID, Value2)
SELECT 1, 'First'
UNION ALL
SELECT 2, 'Second'
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

/* INNER JOIN */
SELECT t1.ID AS T1ID, t1.Value1 as T1Value,
	   t2.ID T2ID, t2.Value2 as T2Value
FROM Table1 t1
INNER JOIN Table2 t2 ON t1.ID = t2.ID;

/* NATURAL JOIN */
SELECT t1.ID AS T1ID, t1.Value1 AS T1Value,
	   t2.ID T2ID, t2.Value2 AS T2Value
FROM Table1 t1
NATURAL JOIN Table2 t2;

/* LEFT JOIN */
SELECT t1.ID AS T1ID, t1.Value1 AS T1Value,
	   t2.ID T2ID, t2.Value2 AS T2Value
FROM Table1 t1
LEFT JOIN Table2 t2 ON t1.ID = t2.ID;

-- Clean up
drop table table1;
drop table table2;











