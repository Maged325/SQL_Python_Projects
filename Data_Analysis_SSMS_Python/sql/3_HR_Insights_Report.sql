-- ------------------------------------------------------
USE HR_DATA;
-- ========================================
-- HIRING & ONBOARDING
-- ========================================
-- 🔹 Most Effective Hiring Source
SELECT HiringSource, COUNT(*) AS TotalHires
FROM Hiring
GROUP BY HiringSource
ORDER BY TotalHires DESC;

-- 🔹 Headcount Growth Over Time (by Hire Month)
SELECT FORMAT(HiringDate, 'yyyy-MM') AS HireMonth, COUNT(*) AS NewHires
FROM Hiring
GROUP BY FORMAT(HiringDate, 'yyyy-MM')
ORDER BY HireMonth;

-- 🔹 Hiring Trend by Department and Job Title
SELECT e.Department, e.JobTitle, COUNT(*) AS Hires
FROM Hiring h
JOIN Employees e ON h.EmployeeID = e.EmployeeID
GROUP BY e.Department, e.JobTitle
ORDER BY Hires DESC;

-- ========================================
-- SICK LEAVES
-- ========================================
-- 🔹 Average Sick Leave Days Per Employee
SELECT AVG(DaysOff) AS AvgSickLeaveDays
FROM SickLeaves;

-- 🔹 Most Common Sick Leave Reasons
SELECT Reason, COUNT(*) AS Occurrences
FROM SickLeaves
GROUP BY Reason
ORDER BY Occurrences DESC;

-- 🔹 High-Leave Employees (Potential Burnout)
SELECT EmployeeID, SUM(DaysOff) AS TotalSickDays
FROM SickLeaves
GROUP BY EmployeeID
ORDER BY TotalSickDays DESC;

-- 🔹 Monthly/Seasonal Leave Trends
SELECT FORMAT(LeaveDate, 'yyyy-MM') AS Month, COUNT(*) AS SickLeaves
FROM SickLeaves
GROUP BY FORMAT(LeaveDate, 'yyyy-MM')
ORDER BY SickLeaves DESC;

-- ========================================
-- LEAVE BALANCES
-- ========================================
-- 🔹 Employees with Low or Zero Balances
SELECT e.FirstName, e.LastName, b.AnnualLeaveBalance, b.SickLeaveBalance
FROM Balances b
JOIN Employees e ON b.EmployeeID = e.EmployeeID
WHERE b.AnnualLeaveBalance = 0 OR b.SickLeaveBalance = 0;

-- 🔹 Average Annual vs Sick Leave Balances
SELECT
  AVG(AnnualLeaveBalance) AS AvgAnnualBalance,
  AVG(SickLeaveBalance) AS AvgSickBalance
FROM Balances;

-- 🔹 Balance Distribution Across Departments
SELECT e.Department,
       AVG(b.AnnualLeaveBalance) AS AvgAnnual,
       AVG(b.SickLeaveBalance) AS AvgSick
FROM Employees e
JOIN Balances b ON e.EmployeeID = b.EmployeeID
GROUP BY e.Department;

-- ========================================
-- EMPLOYEE SATISFACTION
-- ========================================
-- 🔹 Overall Average Satisfaction Score
SELECT AVG(SatisfactionScore) AS AvgSatisfaction
FROM Satisfaction;

-- 🔹 Satisfaction by Department and Job Title
SELECT e.Department, e.JobTitle, AVG(s.SatisfactionScore) AS AvgScore
FROM Satisfaction s
JOIN Employees e ON s.EmployeeID = e.EmployeeID
GROUP BY e.Department, e.JobTitle
ORDER BY AvgScore DESC;

-- 🔹 Employees with Low Satisfaction (Attrition Risk)
SELECT EmployeeID, AVG(SatisfactionScore) AS AvgScore
FROM Satisfaction
GROUP BY EmployeeID
HAVING AVG(SatisfactionScore) < 3
ORDER BY AvgScore ASC;

-- ========================================
-- END OF REPORT
-- ========================================