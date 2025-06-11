-- -----------------------------------------------------------------------------
USE HR_DATA;
--  Importing 

-- Importing data from Table: Employees
BULK INSERT Employees
FROM 'C:\Users\Maged\Desktop\Data_Analysis_MySQL_Python\data\Employees.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2);
-- -----------------------------------------------------------------------------
-- Importing data from Table: Balances
BULK INSERT Balances
FROM 'C:\Users\Maged\Desktop\Data_Analysis_MySQL_Python\data\Balances.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2);
-- -----------------------------------------------------------------------------
-- Importing data from Table: Hiring
BULK INSERT Hiring
FROM 'C:\Users\Maged\Desktop\Data_Analysis_MySQL_Python\data\Hiring.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2);
-- -----------------------------------------------------------------------------
-- Importing data from Table: Satisfaction
BULK INSERT Satisfaction
FROM 'C:\Users\Maged\Desktop\Data_Analysis_MySQL_Python\data\Satisfaction.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2);
-- -----------------------------------------------------------------------------
-- Importing data from Table: SickLeaves
BULK INSERT SickLeaves
FROM 'C:\Users\Maged\Desktop\Data_Analysis_MySQL_Python\data\SickLeaves.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2);
-- -----------------------------------------------------------------------------
-- To Preview the data after importing
SELECT * FROM Employees
SELECT * FROM Balances
SELECT * FROM Hiring
SELECT * FROM Satisfaction
SELECT * FROM SickLeaves

-- ---------------------------------------------------------------------------------