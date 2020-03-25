-- Create a Table
CREATE TABLE Employee(
EmployeeID int primary key,
Name nvarchar(50),
ManagerID int
);

-- Insert Sample Data
INSERT INTO Employee
SELECT 1, 'Mike', 3
UNION ALL
SELECT 2, 'David', 3
UNION ALL
SELECT 3, 'Roger', null
UNION ALL
SELECT 4, 'Mary', 2
UNION ALL
SELECT 5, 'Joseph', 2
UNION ALL
SELECT 6, 'Ben', 2;

-- Check the data
SELECT * from Employee;

-- Inner Join
SELECT e1.Name EmployeeName, e2.name as ManagerName
from Employee e1
INNER JOIN Employee e2
on e1.ManagerID = e2.EmployeeID;

-- Outer Join
SELECT e1.Name EmployeeName, IFNULL(e2.name, 'Top Manager') AS ManagerName
from Employee e1
LEFT JOIN Employee e2
ON e1.ManagerID = e2.EmployeeID;

-- Clean Up
DROP TABLE Employee;
