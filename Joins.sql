USE vk;
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    DeptID INT
);
CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);
INSERT INTO Employee VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 103),
(4, 'David', NULL);
INSERT INTO Department VALUES
(101, 'HR'),
(102, 'IT'),
(104, 'Finance');
SELECT Name,DeptName
FROM Employee
INNER JOIN Department
WHERE Employee.DeptId=Department.DeptId;
SELECT Name,DeptName
FROM Employee
LEFT JOIN Department
ON Employee.DeptId=Department.DeptId;
SELECT Name,DeptName
FROM Employee
RIGHT JOIN Department
ON Employee.DeptId=Department.DeptId;
