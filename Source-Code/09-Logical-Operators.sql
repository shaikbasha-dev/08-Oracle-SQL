/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/09-Logical-Operators
File Name   : 01-Logical-Operators.sql
Topic       : Logical Operators
Description : Practical examples demonstrating the AND, OR, and combined
              logical operators in Oracle SQL.
Author      : Shaik Mahaboob Basha
License     : MIT License
===============================================================================
*/

-- =============================================================================
-- NOTE
-- =============================================================================
-- This script assumes the following tables already exist:
--
-- 1. EMP
-- 2. J_GRADE
--
-- Execute the database setup script before running these examples.
-- =============================================================================



-- =============================================================================
-- SECTION 1 : AND Operator
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Query 1
-- Display employee details whose salary is 12000 and job ID is ST_CLERK.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 1 : Salary = 12000 AND Job ID = ST_CLERK
PROMPT ============================================================

SELECT *
FROM EMP
WHERE SALARY = 12000
  AND JOB_ID = 'ST_CLERK';



-- -----------------------------------------------------------------------------
-- Query 2
-- Display employee details whose department ID is 22 and manager ID is 100.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 2 : Department ID = 22 AND Manager ID = 100
PROMPT ============================================================

SELECT *
FROM EMP
WHERE DEPT_ID = 22
  AND MANAGER_ID = 100;



-- =============================================================================
-- SECTION 2 : OR Operator
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Query 3
-- Display grades where grade is 'A' or high salary is greater than 80000.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 3 : Grade = 'A' OR High Salary > 80000
PROMPT ============================================================

SELECT GRADE
FROM J_GRADE
WHERE GRADE = 'A'
   OR HIGH_SAL > 80000;



-- -----------------------------------------------------------------------------
-- Query 4
-- Display employee details whose job ID is ST_CLERK or salary is less than
-- 19000.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 4 : ST_CLERK OR Salary < 19000
PROMPT ============================================================

SELECT *
FROM EMP
WHERE JOB_ID = 'ST_CLERK'
   OR SALARY < 19000;



-- -----------------------------------------------------------------------------
-- Query 5
-- Display employee details who are President, Sales Representative,
-- or employees earning more than 35000.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 5 : AD_PRES OR SA_REP OR Salary > 35000
PROMPT ============================================================

SELECT *
FROM EMP
WHERE JOB_ID = 'AD_PRES'
   OR JOB_ID = 'SA_REP'
   OR SALARY > 35000;



-- =============================================================================
-- SECTION 3 : Combination of AND and OR Operators
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Query 6
-- Display employee details who are President or Sales Representative
-- and whose salary is greater than 25000.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 6 : (AD_PRES OR SA_REP) AND Salary > 25000
PROMPT ============================================================

SELECT *
FROM EMP
WHERE (JOB_ID = 'AD_PRES'
    OR JOB_ID = 'SA_REP')
  AND SALARY > 25000;



-- =============================================================================
-- End of Script
-- =============================================================================
