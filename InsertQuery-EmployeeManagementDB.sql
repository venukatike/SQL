--Insert Data into Tables
USE EmployeeManagementDB

--Step 10: Insert Department Data

INSERT INTO Department
VALUES
('IT','Delhi'),
('HR','Pune'),
('Finance','Mumbai');

select * from Employee

--Step 11: Insert Roles

INSERT INTO Role
VALUES
('Software Engineer'),
('Team Lead'),
('HR Manager'),
('Project Manager');

--Step 12: Insert Employees

INSERT INTO Employee
(
FirstName,
LastName,
Email,
Phone,
DOB,
Gender,
HireDate,
Salary,
DepartmentId,
RoleId,
ManagerId
)
VALUES
(
'Naresh',
'N',
'Naresh@gmail.com',
'97338485939',
'1999-06-12',
'Male',
'2024-01-15',
60000,
1,
1,
NULL
);

--Step 13: Insert Attendance

INSERT INTO Attendance
VALUES
(
1,
'2026-07-12',
'09:00',
'18:00',
'Present'
);

Select * from Attendance

--Step 14: Insert Leave Request

INSERT INTO LeaveRequest
VALUES
(
1,
'2026-08-10',
'2026-08-12',
'Casual',
'Personal Work',
'Pending'
);

--Step 15: Insert Payroll

INSERT INTO Payroll
VALUES
(
1,
'July',
2026,
60000,
5000,
2000,
63000
);


--Step 16: View Data

SELECT * FROM Department;

SELECT * FROM Role;

SELECT * FROM Employee;

SELECT * FROM Attendance;

SELECT * FROM LeaveRequest;

SELECT * FROM Payroll;

--Step 17: Common JOIN Query

SELECT
    e.EmployeeId,
    e.FirstName,
    e.LastName,
    d.DepartmentName,
    r.RoleName,
    e.Salary
FROM Employee e
INNER JOIN Department d
    ON e.DepartmentId = d.DepartmentId
INNER JOIN Role r
    ON e.RoleId = r.RoleId;

