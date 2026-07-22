/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/11-GROUP-BY-Clause
File Name   : 01-GROUP-BY-Clause.sql
Topic       : GROUP BY Clause
Description : Practical examples demonstrating the GROUP BY clause with
              aggregate functions, WHERE clause, and HAVING clause in
              Oracle SQL.
Author      : Shaik Mahaboob Basha
License     : MIT License
===============================================================================
*/

-- =============================================================================
-- NOTE
-- =============================================================================
-- This script assumes the EMP table already exists.
--
-- Execute the database setup script before running these examples.
-- =============================================================================



-- =============================================================================
-- Query 1
-- Display the department ID and minimum salary of each department.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 1 : Minimum Salary of Each Department
PROMPT ============================================================

SELECT DEPT_ID,
       MIN(SALARY) AS MIN_SALARY
FROM EMP
GROUP BY DEPT_ID;



-- =============================================================================
-- Query 2
-- Display the department ID and maximum salary of departments
-- whose department ID is greater than 50.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 2 : Maximum Salary Where Department ID > 50
PROMPT ============================================================

SELECT DEPT_ID,
       MAX(SALARY) AS MAX_SALARY
FROM EMP
WHERE DEPT_ID > 50
GROUP BY DEPT_ID;



-- =============================================================================
-- Query 3
-- Display the department ID and employee count where
-- department ID is equal to 90.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 3 : Employee Count for Department 90
PROMPT ============================================================

SELECT DEPT_ID,
       COUNT(DEPT_ID) AS EMPLOYEE_COUNT
FROM EMP
WHERE DEPT_ID = 90
GROUP BY DEPT_ID;



-- =============================================================================
-- Query 4
-- Display department ID and maximum salary where the
-- maximum salary is greater than 30000.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 4 : Maximum Salary Greater Than 30000
PROMPT ============================================================

SELECT DEPT_ID,
       MAX(SALARY) AS MAX_SALARY
FROM EMP
GROUP BY DEPT_ID
HAVING MAX(SALARY) > 30000;



-- =============================================================================
-- End of Script
-- =============================================================================
