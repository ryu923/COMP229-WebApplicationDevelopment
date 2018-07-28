/* Basic Setting: Delete all existing tables */
ALTER TABLE Employees
	DROP CONSTRAINT [FK_Employees_Departments];
DROP TABLE Departments;

ALTER TABLE HelpDesk
	DROP CONSTRAINT [FK_HelpDesk_Employees];
DROP TABLE Employees;

DROP TABLE HelpDesk;

DROP TABLE HelpDeskCategories;

DROP TABLE HelpDeskStatus;

DROP TABLE HelpDeskSubjects;

/* Employees Table */
CREATE TABLE [Employees]
(
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Zip] [nvarchar](50) NULL,
	[HomePhone] [nvarchar](50) NULL,
	[Extension] [nvarchar](50) NULL,
	[MobilePhone] [nvarchar](50) NULL,
 
	CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED([EmployeeID] ASC)
		WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/* Departments Table */
CREATE TABLE [Departments]
(
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[Department] [nvarchar](50) NOT NULL,
	
	CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED([DepartmentID] ASC)
		WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/* HelpDesk Table */
CREATE TABLE [HelpDesk]
(
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[StationNumber] [int] NULL,
	[CategoryID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[StatusID] [int] NOT NULL,
	
	CONSTRAINT [PK_HelpDesk] PRIMARY KEY CLUSTERED([RequestID] ASC)
		WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/* HelpDeskCategories Table */
CREATE TABLE [HelpDeskCategories]
(
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NULL,
	
	CONSTRAINT [PK_HelpDeskCategories] PRIMARY KEY CLUSTERED([CategoryID] ASC)
		WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/*  HelpDeskSubjects Table */
CREATE TABLE [HelpDeskSubjects]
(
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	
	CONSTRAINT [PK_HelpDeskSubjects] PRIMARY KEY CLUSTERED([SubjectID] ASC)
		WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/* HelpDeskStatus Table */
CREATE TABLE [HelpDeskStatus]
(
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	
	CONSTRAINT [PK_HelpDeskStatus] PRIMARY KEY CLUSTERED([StatusID] ASC)
		WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO