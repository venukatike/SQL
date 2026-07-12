--Step 1: Create Database
CREATE DATABASE EmployeeManagementDB;

--Step 2: Use Database
USE EmployeeManagementDB;

--Step 3: Create Department Table

CREATE TABLE Department
(
    DepartmentId INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(100) NOT NULL,
    Location NVARCHAR(100)
);

Select * from Department

--Step 4: Create Role Table

CREATE TABLE Role
(
    RoleId INT PRIMARY KEY IDENTITY(1,1),
    RoleName NVARCHAR(100) NOT NULL
);

Select * from Role

--Step 5: Create Employee Table

CREATE TABLE Employee
(
    EmployeeId INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(100),
    LastName NVARCHAR(100),
    Email NVARCHAR(150),
    Phone VARCHAR(15),
    DOB DATE,
    Gender VARCHAR(10),
    HireDate DATE,
    Salary DECIMAL(18,2),

    DepartmentId INT,
    RoleId INT,
    ManagerId INT NULL,

    CONSTRAINT FK_Employee_Department
        FOREIGN KEY (DepartmentId)
        REFERENCES Department(DepartmentId),

    CONSTRAINT FK_Employee_Role
        FOREIGN KEY (RoleId)
        REFERENCES Role(RoleId),

    CONSTRAINT FK_Employee_Manager
        FOREIGN KEY (ManagerId)
        REFERENCES Employee(EmployeeId)
);

-- Step 6: Create Attendance Table

CREATE TABLE Attendance
(
    AttendanceId INT PRIMARY KEY IDENTITY(1,1),
    EmployeeId INT,
    AttendanceDate DATE,
    CheckIn TIME,
    CheckOut TIME,
    Status VARCHAR(20),

    CONSTRAINT FK_Attendance_Employee
        FOREIGN KEY(EmployeeId)
        REFERENCES Employee(EmployeeId)
);

-- Step 7: Create LeaveRequest Table

CREATE TABLE LeaveRequest
(
    LeaveId INT PRIMARY KEY IDENTITY(1,1),
    EmployeeId INT,
    StartDate DATE,
    EndDate DATE,
    LeaveType VARCHAR(50),
    Reason NVARCHAR(500),
    Status VARCHAR(20),

    CONSTRAINT FK_Leave_Employee
        FOREIGN KEY(EmployeeId)
        REFERENCES Employee(EmployeeId)
);

-- Step 8: Create Payroll Table

CREATE TABLE Payroll
(
    PayrollId INT PRIMARY KEY IDENTITY(1,1),
    EmployeeId INT,
    PayrollMonth VARCHAR(20),
    PayrollYear INT,
    BasicSalary DECIMAL(18,2),
    Bonus DECIMAL(18,2),
    Deductions DECIMAL(18,2),
    NetSalary DECIMAL(18,2),

    CONSTRAINT FK_Payroll_Employee
        FOREIGN KEY(EmployeeId)
        REFERENCES Employee(EmployeeId)
);

-- Step 9: Verify Tables

SELECT * FROM INFORMATION_SCHEMA.TABLES;