/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/03-Operators
File Name   : 01-Operators-in-Oracle-SQL.sql
Topic       : Operators in Oracle SQL
Description : Practical examples demonstrating Arithmetic Operators in Oracle
              SQL using the EMP table.
Author      : Shaik Mahaboob Basha
License     : MIT License
===============================================================================
*/

-- =============================================================================
-- NOTE
-- =============================================================================
-- This script assumes that the EMP table already exists in the database with
-- sample employee records.
--
-- Required Columns:
-- EMP_ID
-- F_NAME
-- L_NAME
-- EMAIL
-- PHONE_NUMBER
-- JOB_ID
-- DEPT_ID
-- SALARY
-- =============================================================================



-- =============================================================================
-- Query 1
-- Display employee ID, first name, last name and salary after increasing
-- the salary by Rs.1000.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 1 : Increase Salary by Rs.1000
PROMPT ============================================================

SELECT EMP_ID,
       F_NAME,
       L_NAME,
       SALARY + 1000 AS INCREASED_SALARY
FROM EMP;



-- =============================================================================
-- Query 2
-- Display employee ID, email, phone number and salary after reducing the
-- salary by Rs.1000.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 2 : Reduce Salary by Rs.1000
PROMPT ============================================================

SELECT EMP_ID,
       EMAIL,
       PHONE_NUMBER,
       SALARY - 1000 AS REDUCED_SALARY
FROM EMP;



-- =============================================================================
-- Query 3
-- Display employee ID, job ID, department ID and salary after providing
-- a 10 percent salary hike.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 3 : Increase Salary by 10 Percent
PROMPT ============================================================

SELECT EMP_ID,
       JOB_ID,
       DEPT_ID,
       SALARY + (SALARY * (10 / 100)) AS HIKED_SALARY
FROM EMP;



-- =============================================================================
-- Query 4
-- Display employee ID, job ID, department ID and salary after reducing
-- the salary by 20 percent.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 4 : Reduce Salary by 20 Percent
PROMPT ============================================================

SELECT EMP_ID,
       JOB_ID,
       DEPT_ID,
       SALARY - (SALARY * (20 / 100)) AS REDUCED_SALARY
FROM EMP;



-- =============================================================================
-- Query 5
-- Display half-year salary (6 months salary).
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 5 : Display Half-Year Salary
PROMPT ============================================================

SELECT EMP_ID,
       F_NAME,
       SALARY,
       SALARY / 6 AS HALF_YEAR_SALARY
FROM EMP;



-- =============================================================================
-- End of Script
-- =============================================================================
