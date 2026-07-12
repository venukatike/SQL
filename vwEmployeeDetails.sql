--Step 18: Create a View

CREATE VIEW vwEmployeeDetails
AS
SELECT
    e.EmployeeId,
    e.FirstName,
    e.LastName,
    d.DepartmentName,
    r.RoleName,
    e.Salary
FROM Employee e
JOIN Department d
ON e.DepartmentId=d.DepartmentId
JOIN Role r
ON e.RoleId=r.RoleId;

-- Execute View 
Select * from vwEmployeeDetails