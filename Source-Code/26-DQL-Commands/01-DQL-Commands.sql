/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/26-DQL-Commands
File Name   : 01-DQL-Commands.sql
Topic       : Data Query Language (DQL)
Description : Practical examples demonstrating Oracle SQL DQL using
              the SELECT statement for retrieving data from tables.
Author      : Shaik Mahaboob Basha
License     : MIT License
===============================================================================
*/

-- =============================================================================
-- NOTE
-- =============================================================================
-- This script assumes the EMP table already exists.
--
-- Execute the examples one by one to understand different ways of
-- retrieving data using the SELECT statement.
-- =============================================================================



-- =============================================================================
-- SECTION 1 : DISPLAY ALL COLUMNS
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 1 : Display All Records from EMP Table
PROMPT ============================================================

SELECT *
FROM EMP;



-- =============================================================================
-- SECTION 2 : DISPLAY SPECIFIC COLUMNS
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 2 : Display Employee ID, Name and Salary
PROMPT ============================================================

SELECT EMP_ID,
       F_NAME,
       SALARY
FROM EMP;



-- =============================================================================
-- SECTION 3 : DISPLAY EMPLOYEE NAME AND DEPARTMENT
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 3 : Display Employee Name and Department ID
PROMPT ============================================================

SELECT EMP_ID,
       F_NAME,
       DEPT_ID
FROM EMP;



-- =============================================================================
-- SECTION 4 : DISPLAY EMPLOYEE NAME AND JOB
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 4 : Display Employee Name and Job ID
PROMPT ============================================================

SELECT EMP_ID,
       F_NAME,
       JOB_ID
FROM EMP;



-- =============================================================================
-- SECTION 5 : DISPLAY EMPLOYEE CONTACT DETAILS
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 5 : Display Employee Contact Details
PROMPT ============================================================

SELECT F_NAME,
       EMAIL,
       PHONE_NUMBER
FROM EMP;



-- =============================================================================
-- SECTION 6 : DISPLAY EMPLOYEE SALARY DETAILS
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 6 : Display Salary Information
PROMPT ============================================================

SELECT EMP_ID,
       F_NAME,
       SALARY,
       COMMISSION_PCT
FROM EMP;



-- =============================================================================
-- SECTION 7 : DISPLAY HIRE DETAILS
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 7 : Display Employee Hire Details
PROMPT ============================================================

SELECT EMP_ID,
       F_NAME,
       HIRE_DATE
FROM EMP;



-- =============================================================================
-- End of Script
-- =============================================================================
