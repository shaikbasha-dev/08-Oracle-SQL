/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/04-Column-Aliases-Relational-and-Concatenation-Operators
File Name   : 01-Column-Aliases-Relational-and-Concatenation-Operators.sql
Topic       : Column Aliases, Relational Operators and Concatenation Operator
Description : Practical Oracle SQL examples demonstrating the use of column
              aliases, relational operators and concatenation operator.
Author      : Shaik Mahaboob Basha
License     : MIT License
===============================================================================
*/

-- =============================================================================
-- NOTE
-- =============================================================================
-- This script assumes that the EMP table already exists in the database.
--
-- Required Columns:
-- EMP_ID
-- F_NAME
-- L_NAME
-- EMAIL
-- PHONE_NUMBER
-- JOB_ID
-- SALARY
-- COMMISSION_PCT
-- DEPT_ID
-- =============================================================================



-- =============================================================================
-- SECTION 1 : Column Aliases
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Column Aliases Example - Using AS Keyword
PROMPT ============================================================

SELECT EMP_ID,
       F_NAME AS FIRST_NAME,
       L_NAME AS LAST_NAME,
       SALARY AS EMPLOYEE_SALARY
FROM EMP;



PROMPT
PROMPT ============================================================
PROMPT Column Aliases Example - Using Double Quotes
PROMPT ============================================================

SELECT EMP_ID,
       F_NAME "FIRST NAME",
       L_NAME "LAST NAME",
       SALARY "EMPLOYEE SALARY"
FROM EMP;



-- =============================================================================
-- SECTION 2 : Relational Operators
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Query 1
-- Display the complete details of the employee whose first name is Akash.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 1 : Employee whose first name is Akash
PROMPT ============================================================

SELECT *
FROM EMP
WHERE F_NAME = 'Akash';



-- -----------------------------------------------------------------------------
-- Query 2
-- Display employees whose department ID is greater than 30.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 2 : Department ID Greater Than 30
PROMPT ============================================================

SELECT *
FROM EMP
WHERE DEPT_ID > 30;



-- -----------------------------------------------------------------------------
-- Query 3
-- Display employees whose salary is less than 10000.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 3 : Salary Less Than 10000
PROMPT ============================================================

SELECT *
FROM EMP
WHERE SALARY < 10000;



-- -----------------------------------------------------------------------------
-- Query 4
-- Display email ID and phone number whose commission percentage is greater
-- than or equal to 5.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 4 : Commission Percentage Greater Than or Equal To 5
PROMPT ============================================================

SELECT EMAIL,
       PHONE_NUMBER
FROM EMP
WHERE COMMISSION_PCT >= 5;



-- -----------------------------------------------------------------------------
-- Query 5
-- Display email, first name and last name of employees whose salary is
-- less than or equal to 34000.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 5 : Salary Less Than or Equal To 34000
PROMPT ============================================================

SELECT EMAIL,
       F_NAME,
       L_NAME
FROM EMP
WHERE SALARY <= 34000;



-- -----------------------------------------------------------------------------
-- Query 6
-- Display employee details except employees whose job is ST_CLERK.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 6 : Employees Who Are Not ST_CLERK
PROMPT ============================================================

SELECT *
FROM EMP
WHERE JOB_ID != 'ST_CLERK';



-- =============================================================================
-- SECTION 3 : Concatenation Operator (||)
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Query 1
-- Concatenate first name and last name to display the full name.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 1 : Display Employee Full Name
PROMPT ============================================================

SELECT F_NAME || ' ' || L_NAME AS "FULL NAME"
FROM EMP;



-- -----------------------------------------------------------------------------
-- Query 2
-- Concatenate two string literals.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 2 : Concatenate Two String Literals
PROMPT ============================================================

SELECT 'Sachin ' || 'Tendulkar' AS "FULL NAME"
FROM DUAL;



-- =============================================================================
-- End of Script
-- =============================================================================
