/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/06-Keywords-As-Operators
File Name   : 01-Keywords-As-Operators.sql
Topic       : Keywords As Operators
Description : Practical examples demonstrating the usage of DISTINCT,
              BETWEEN, IN, NOT IN, IS NULL and IS NOT NULL operators.
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
-- 2. DEPT
-- 3. J_GRADE
--
-- Execute the database setup script before running these examples.
-- =============================================================================



-- =============================================================================
-- SECTION 1 : DISTINCT Keyword
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT DISTINCT Keyword - Display Unique Department IDs
PROMPT ============================================================

SELECT DISTINCT DEPT_ID
FROM EMP;



PROMPT
PROMPT ============================================================
PROMPT DISTINCT Keyword - Display Unique Salaries
PROMPT ============================================================

SELECT DISTINCT SALARY
FROM EMP;



-- =============================================================================
-- SECTION 2 : BETWEEN Operator
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT BETWEEN Operator - Low Salary Between 2000 and 4000
PROMPT ============================================================

SELECT GRADE,
       LOW_SAL
FROM J_GRADE
WHERE LOW_SAL BETWEEN 2000 AND 4000;



PROMPT
PROMPT ============================================================
PROMPT BETWEEN Operator - Commission Between 1.2 and 1.5
PROMPT ============================================================

SELECT *
FROM EMP
WHERE COMMISSION_PCT BETWEEN 1.2 AND 1.5;



PROMPT
PROMPT ============================================================
PROMPT NOT BETWEEN Operator - Location ID Not Between 2400 and 2500
PROMPT ============================================================

SELECT DEPT_ID,
       DEPT_NAME
FROM DEPT
WHERE LOC_ID NOT BETWEEN 2400 AND 2500;



PROMPT
PROMPT ============================================================
PROMPT NOT BETWEEN Operator - High Salary Not Between 3000 and 55000
PROMPT ============================================================

SELECT *
FROM J_GRADE
WHERE HIGH_SAL NOT BETWEEN 3000 AND 55000;



-- =============================================================================
-- SECTION 3 : IN Operator
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT IN Operator - Employees With Specific Salaries
PROMPT ============================================================

SELECT *
FROM EMP
WHERE SALARY IN (12000, 18000, 19000);



PROMPT
PROMPT ============================================================
PROMPT IN Operator - Departments in Selected Locations
PROMPT ============================================================

SELECT DEPT_ID,
       DEPT_NAME
FROM DEPT
WHERE LOC_ID IN (2500, 2700, 2900);



-- =============================================================================
-- SECTION 4 : NOT IN Operator
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT NOT IN Operator - Exclude Grades A, B and C
PROMPT ============================================================

SELECT LOW_SAL,
       HIGH_SAL
FROM J_GRADE
WHERE GRADE NOT IN ('A', 'B', 'C');



-- =============================================================================
-- SECTION 5 : IS NULL Operator
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT IS NULL Operator - Employees Without Commission
PROMPT ============================================================

SELECT *
FROM EMP
WHERE COMMISSION_PCT IS NULL;



-- =============================================================================
-- SECTION 6 : IS NOT NULL Operator
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT IS NOT NULL Operator - Employees Having Manager
PROMPT ============================================================

SELECT *
FROM EMP
WHERE MANAGER_ID IS NOT NULL;



-- =============================================================================
-- End of Script
-- =============================================================================
