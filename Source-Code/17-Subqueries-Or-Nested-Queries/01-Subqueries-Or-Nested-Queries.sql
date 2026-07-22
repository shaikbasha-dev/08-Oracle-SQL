/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/17-Subqueries-Or-Nested-Queries
File Name   : 01-Subqueries-Or-Nested-Queries.sql
Topic       : Subqueries (Nested Queries)
Description : Practical examples demonstrating Oracle SQL Single Row
              and Multiple Row Subqueries using comparison operators
              and the IN operator.
Author      : Shaik Mahaboob Basha
License     : MIT License
===============================================================================
*/

-- =============================================================================
-- NOTE
-- =============================================================================
-- This script assumes the EMP and DEPT tables already exist.
--
-- Execute the database setup script before running these examples.
-- =============================================================================



-- =============================================================================
-- Query 1
-- Display last name, first name, and salary of employees whose
-- salary is greater than Pandey's salary.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 1 : Employees Earning More Than Pandey
PROMPT ============================================================

SELECT L_NAME,
       F_NAME,
       SALARY
FROM EMP
WHERE SALARY >
      (
          SELECT SALARY
          FROM EMP
          WHERE L_NAME = 'Pandey'
      );



-- =============================================================================
-- Query 2
-- Display department ID and first name of employees working in the
-- same department as Prabhakaran.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 2 : Employees Working in Prabhakaran's Department
PROMPT ============================================================

SELECT DEPT_ID,
       F_NAME
FROM EMP
WHERE DEPT_ID =
      (
          SELECT DEPT_ID
          FROM EMP
          WHERE F_NAME = 'Prabhakaran'
      );



-- =============================================================================
-- Query 3
-- Display department ID, first name, and job ID of employees
-- working in the Administration department.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 3 : Employees Working in Administration Department
PROMPT ============================================================

SELECT DEPT_ID,
       F_NAME,
       JOB_ID
FROM EMP
WHERE DEPT_ID IN
      (
          SELECT DEPT_ID
          FROM DEPT
          WHERE DEPT_NAME = 'Admin'
      );



-- =============================================================================
-- Query 4
-- Display employee IDs whose department ID exists in the DEPT table.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 4 : Employees Having Valid Department IDs
PROMPT ============================================================

SELECT EMP_ID
FROM EMP
WHERE DEPT_ID IN
      (
          SELECT DEPT_ID
          FROM DEPT
      );



-- =============================================================================
-- Query 5
-- Display last name and job ID of employees whose job ID is the same
-- as King's job ID and whose salary is greater than Singh's salary.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 5 : Job Matching King and Salary Greater Than Singh
PROMPT ============================================================

SELECT L_NAME,
       JOB_ID
FROM EMP
WHERE JOB_ID =
      (
          SELECT JOB_ID
          FROM EMP
          WHERE L_NAME = 'King'
      )
AND SALARY >
    (
        SELECT SALARY
        FROM EMP
        WHERE L_NAME = 'Singh'
    );



-- =============================================================================
-- End of Script
-- =============================================================================
