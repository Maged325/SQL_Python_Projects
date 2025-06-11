-- -----------------------------------------------------------------------------
USE HR_Data;

-- Table: Employees
DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    JobTitle VARCHAR(50),
    Phone VARCHAR(50),
    Email VARCHAR(100)
);
-- -----------------------------------------------------------------------------
DROP TABLE IF EXISTS Balances;
CREATE TABLE Balances (
    BalanceID INT,
	EmployeeID INT,
    AnnualLeaveBalance INT,
    SickLeaveBalance INT,
    LastUpdated DATE,
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
-- -----------------------------------------------------------------------------
DROP TABLE IF EXISTS Hiring;
CREATE TABLE Hiring (
	HiringID int,
	EmployeeID int,
	HiringDate DATE,
	HiringSource  VARCHAR(25),
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
-- -----------------------------------------------------------------------------
DROP TABLE IF EXISTS Satisfaction;
CREATE TABLE Satisfaction (
	SurveyID int,
	EmployeeID int,
	SatisfactionScore INT,
	Comments VARCHAR(100),
	SurveyDate DATE,
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
-- -----------------------------------------------------------------------------
DROP TABLE IF EXISTS SickLeaves;
CREATE TABLE SickLeaves (
	SickLeaveID INT,
	EmployeeID INT,
	LeaveDate DATE,
	DaysOff INT,
	Reason VARCHAR(20),
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
-- -----------------------------------------------------------------------------

