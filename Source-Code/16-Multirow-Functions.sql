/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/16-Multirow-Functions
File Name   : 01-Multirow-Functions.sql
Topic       : Multirow Functions (Aggregate Functions)
Description : Practical examples demonstrating Oracle SQL Aggregate
              Functions including COUNT(), MIN(), MAX(), SUM(),
              and AVG().
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
-- SECTION 1 : COUNT()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT COUNT() - Count All Employee Records
PROMPT ============================================================

SELECT COUNT(*)
FROM EMP;



PROMPT
PROMPT ============================================================
PROMPT COUNT() - Count Distinct Salaries
PROMPT ============================================================

SELECT COUNT(DISTINCT SALARY)
FROM EMP;



-- =============================================================================
-- SECTION 2 : MIN()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT MIN() - Minimum Employee Salary
PROMPT ============================================================

SELECT MIN(SALARY)
FROM EMP;



PROMPT
PROMPT ============================================================
PROMPT MIN() - Minimum Distinct Salary
PROMPT ============================================================

SELECT MIN(DISTINCT SALARY)
FROM EMP;



PROMPT
PROMPT ============================================================
PROMPT MIN() - Oldest Hire Date
PROMPT ============================================================

SELECT MIN(HIRE_DATE)
FROM EMP;



-- =============================================================================
-- SECTION 3 : MAX()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT MAX() - Maximum Employee Salary
PROMPT ============================================================

SELECT MAX(SALARY)
FROM EMP;



PROMPT
PROMPT ============================================================
PROMPT MAX() - Maximum Distinct Salary
PROMPT ============================================================

SELECT MAX(DISTINCT SALARY)
FROM EMP;



PROMPT
PROMPT ============================================================
PROMPT MAX() - Latest Hire Date
PROMPT ============================================================

SELECT MAX(HIRE_DATE)
FROM EMP;



-- =============================================================================
-- SECTION 4 : SUM()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT SUM() - Total Employee Salary
PROMPT ============================================================

SELECT SUM(SALARY)
FROM EMP;



PROMPT
PROMPT ============================================================
PROMPT SUM() - Total Distinct Salaries
PROMPT ============================================================

SELECT SUM(DISTINCT SALARY)
FROM EMP;



-- =============================================================================
-- SECTION 5 : AVG()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT AVG() - Average Employee Salary
PROMPT ============================================================

SELECT AVG(SALARY)
FROM EMP;



PROMPT
PROMPT ============================================================
PROMPT AVG() - Average Distinct Salary
PROMPT ============================================================

SELECT AVG(DISTINCT SALARY)
FROM EMP;



PROMPT
PROMPT ============================================================
PROMPT MIN() - Hire Date of Oldest Employee
PROMPT ============================================================

SELECT MIN(HIRE_DATE)
FROM EMP;



-- =============================================================================
-- End of Script
-- =============================================================================
