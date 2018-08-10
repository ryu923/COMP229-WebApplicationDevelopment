CREATE PROCEDURE UpdateEmployeeDetails
(
	@EmployeeID INT,
	@NewAddress NVARCHAR(50),
	@NewCity NVARCHAR(50)
)
AS
UPDATE Employees
SET Address = @NewAddress, City = @NewCity
WHERE EmployeeID = @EmployeeID;