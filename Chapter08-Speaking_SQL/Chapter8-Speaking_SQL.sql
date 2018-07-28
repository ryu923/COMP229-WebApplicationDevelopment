/* P320 */
SELECT name FROM Employees;

/* P321 */
SELECT * FROM Employees;

/* P322 */
SELECT Employees.Name, Employees.Username
	FROM Employees;

/* P323 */
SELECT * FROM Departments;

/* P324 */
SELECT department FROM Departments;

SELECT DepartmentID, Department FROM Departments;

/* P325 */
SELECT Department, DepartmentID FROM Departments;

/* P326 */
SELECT city FROM Employees;

SELECT DISTINCT city
	FROM Employees;

/* P327 */
SELECT DISTINCT name, city
	FROM Employees;

/* P328 */
SELECT DISTINCT city
	FROM Employees;

/* P330 */
SELECT Name, DepartmentID
	FROM Employees
	WHERE DepartmentID = 6;

SELECT Department
	FROM Departments
	WHERE DepartmentID = 6;

SELECT DepartmentID, Department
	FROM Departments
	WHERE DepartmentID BETWEEN 2 AND 5;

/* P331 */
SELECT DepartmentID, Department
	FROM Departments
	WHERE DepartmentID >= 2 AND DepartmentID <= 5;

SELECT DepartmentID, Department
	FROM Departments
	WHERE DepartmentID NOT BETWEEN 2 AND 5;

SELECT EmployeeID, Username
	FROM Employees
	WHERE Name = 'Zak Ruvalcaba';

/* P332 */
SELECT EmployeeID, Name
	FROM Employees
	WHERE Name LIKE '%Ruvalcaba';

SELECT EmployeeID, Name
	FROM Employees
	WHERE Name LIKE '%Ruv%';

/* P333 */
SELECT Name, State
	FROM Employees
	WHERE State = 'CA' OR State = 'IN' OR State = 'MD';

SELECT Name, State
	FROM Employees
	WHERE State IN ('CA', 'IN', 'MD');

/* P334 */
SELECT EmployeeID, Name
	FROM Employees
	ORDER BY Name;

SELECT EmployeeID, Name, City
	FROM Employees
	ORDER BY City, Name;

/* P335 */
SELECT TOP 5 Department
	FROM Departments
	ORDER BY Department;

SELECT DepartmentID
	FROM Departments
	WHERE Department = 'Engineering';

/* P336: Subqueries */
SELECT Name
	FROM Employees
	WHERE DepartmentID = 6;

SELECT Name
	FROM Employees
	WHERE DepartmentID IN
	(	SELECT DepartmentID
		FROM Departments
		WHERE Department LIKE '%Engineering');

/* P337: Table Join */
SELECT Employees.Name
	FROM Departments
	INNER JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID
	WHERE Departments.Department LIKE '%Engineering';

/* P338: Table Join */
SELECT Employees.Name, Departments.Department
	FROM Departments
	INNER JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID;

/* P338: Expression and Operators */
SELECT EmployeeID, Name + ', ' + City AS NameAndCity
	FROM Employees;

/* P339: Expression and Operators */
SELECT Name
	FROM Employees
	WHERE EmployeeID > 10;

/* P340: Expression and Operators */
SELECT Name
	FROM Employees
	WHERE EmployeeID < 10;

SELECT Name
	FROM Employees
	WHERE EmployeeID >= 10;

SELECT Name
	FROM Employees
	WHERE EmployeeID <= 10;

SELECT Name
	FROM Employees
	WHERE EmployeeID = 1 OR EmployeeID = 2;

/* P341: Expression and Operators */
SELECT Name
	FROM Employees
	WHERE Name NOT LIKE 'Jess%';

SELECT Name
	FROM Employees
	WHERE Name LIKE 'Geoff _im';

/* P342: Arithmetic Functions */
SELECT ABS(5);
SELECT ABS(-5);

SELECT CEILING(5.5);

/* P343: Arithmetic Functions */
SELECT FLOOR(5.5);

SELECT POWER(2, 3);

/* P344: String Functions */
SELECT LOWER(Username), UPPER(State)
	FROM Employees;

SELECT REPLACE('I like chocolate', 'like', 'love');

SELECT SUBSTRING('I like chocolate', 8, 4);

/* P345: String Functions */
SELECT Username, LEN(Username) AS UsernameLength
	FROM Employees;

/* P347: Date and Time Functions */
SELECT YEAR(GETDATE());

/* P348: The COUNT Function */
SELECT COUNT(Name) AS NumberOfEmployees
	FROM Employees;

/* P349: Grouping Records Using GROUP BY */
SELECT Departments.Department, Employees.Name
	FROM Employees
	INNER JOIN Departments ON Departments.DepartmentID = Employees.DepartmentID;

/* This is going to be error! Because there are not GROUP BY */
SELECT Departments.Department, COUNT(Employees.Name) AS HowManyEmployees
	FROM Employees
	INNER JOIN Departments ON Departments.DepartmentID = Employees.DepartmentID;

/* P350: Grouping Records Using GROUP BY */
SELECT Departments.Department, COUNT(Employees.Name) AS HowManyEmployees
	FROM Employees
	INNER JOIN Departments ON Departments.DepartmentID = Employees.DepartmentID
	GROUP BY Departments.Department;

/* P350: Filtering Groups Using HAVING */
SELECT Departments.Department, COUNT(Employees.Name) AS HowManyEmployees
	FROM Employees
	INNER JOIN Departments ON Departments.DepartmentID = Employees.EmployeeID
	WHERE Employees.Name LIKE '%Ruvalcaba'
	GROUP BY Departments.Department;

/* P351: Filtering Groups Using HAVING */
SELECT Departments.Department, COUNt(Employees.Name) AS HowManyEmployees
	FROM Employees
	INNER JOIN Departments ON Departments.DepartmentID = Employees.DepartmentID
	GROUP BY Departments.Department
	HAVING COUNT(Employees.Name) >= 2;

/* P352: The INSERT Statement */
INSERT INTO Departments (Department)
	VALUES ('Cool New Department');

/* P354: The UPDATE Statement */
UPDATE Employees
	SET Name = 'Zak Christian Ruvalcaba'
	WHERE EmployeeID = 1;

/* P355: The DELETE Statement */
DELETE 
	FROM Departments
	WHERE Department = 'Cool New Department';

/* P357: Stored Procedures */
CREATE PROCEDURE DoThings
(
	@NewDepartmentName VARCHAR(50),
	@NewEmployeeName VARCHAR(50),
	@NewEmployeeUsername VARCHAR(50)
)
AS
-- Create a new department
INSERT INTO Departments (Department)
	VALUES (@NewDepartmentName);

-- Obtain the ID of the created department
DECLARE @NewDepartmentID INT
	SET @NewDepartmentID = scope_identity();

-- Create a new employee
INSERT INTO Employees (DepartmentID, Name, Username)
	VALUES (@NewDepartmentID, @NewEmployeeName, @NewEmployeeUsername);

-- Obtain the ID of the created employee
DECLARE @NewEmployeeID INT
	SET @NewEmployeeID = scope_identity();

-- List the departments together with their employees
SELECT Departments.Department, Employees.Name
	FROM Departments
	INNER JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID;

-- Delete the new employee
DELETE FROM Employees
	WHERE EmployeeID = @NewEmployeeID;

-- Delete the new department
DELETE FROM Departments
	WHERE DepartmentID = @NewDepartmentID;

EXECUTE DoThings 'Research', 'Cristian Darie', 'cristian';