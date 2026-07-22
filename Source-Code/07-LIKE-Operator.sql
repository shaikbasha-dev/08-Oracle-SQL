/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/07-LIKE-Operator
File Name   : 01-LIKE-Operator.sql
Topic       : LIKE Operator
Description : Practical examples demonstrating Pattern Matching in Oracle SQL
              using LIKE operator with '%' and '_' wildcards.
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
-- Query 1
-- Display employee details whose first name starts with 'A'.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 1 : Employee First Name Starts With 'A'
PROMPT ============================================================

SELECT *
FROM EMP
WHERE F_NAME LIKE 'A%';



-- =============================================================================
-- Query 2
-- Display department ID and department name whose department name
-- starts with 'AC'.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 2 : Department Name Starts With 'AC'
PROMPT ============================================================

SELECT DEPT_ID,
       DEPT_NAME
FROM DEPT
WHERE DEPT_NAME LIKE 'AC%';



-- =============================================================================
-- Query 3
-- Display manager ID whose department ID starts with 2.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 3 : Department ID Starts With 2
PROMPT ============================================================

SELECT MANAGER_ID
FROM EMP
WHERE DEPT_ID LIKE '2%';



-- =============================================================================
-- Query 4
-- Display grades whose LOW_SAL ends with 1.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 4 : LOW_SAL Ends With 1
PROMPT ============================================================

SELECT GRADE
FROM J_GRADE
WHERE LOW_SAL LIKE '%1';



-- =============================================================================
-- Query 5
-- Display department details whose department name ends with 'ng'.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 5 : Department Name Ends With 'ng'
PROMPT ============================================================

SELECT *
FROM DEPT
WHERE DEPT_NAME LIKE '%ng';



-- =============================================================================
-- Query 6
-- Display department ID and department name whose manager ID ends with 0.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 6 : Manager ID Ends With 0
PROMPT ============================================================

SELECT DEPT_ID,
       DEPT_NAME
FROM DEPT
WHERE MANAGER_ID LIKE '%0';



-- =============================================================================
-- Query 7
-- Display employee details whose first name contains 'an'.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 7 : First Name Contains 'an'
PROMPT ============================================================

SELECT *
FROM EMP
WHERE F_NAME LIKE '%an%';



-- =============================================================================
-- Query 8
-- Display employee details whose last name contains 'am'.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 8 : Last Name Contains 'am'
PROMPT ============================================================

SELECT *
FROM EMP
WHERE L_NAME LIKE '%am%';



-- =============================================================================
-- Query 9
-- Display employee details whose second character of first name is 'r'.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 9 : Second Character Is 'r'
PROMPT ============================================================

SELECT *
FROM EMP
WHERE F_NAME LIKE '_r%';



-- =============================================================================
-- Query 10
-- Display employee details whose email third character is '@'.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 10 : Third Character of Email Is '@'
PROMPT ============================================================

SELECT *
FROM EMP
WHERE EMAIL LIKE '__@%';



-- =============================================================================
-- Query 11
-- Display employee details whose fourth character from the end
-- of the last name is 'n'.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 11 : Fourth Character From Last Is 'n'
PROMPT ============================================================

SELECT *
FROM EMP
WHERE L_NAME LIKE '%n___';



-- =============================================================================
-- Query 12
-- Display phone numbers whose third digit from the end is '3'.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 12 : Third Digit From Last Is 3
PROMPT ============================================================

SELECT PHONE_NUMBER
FROM EMP
WHERE PHONE_NUMBER LIKE '%3__';



-- =============================================================================
-- Query 13
-- Display last name and salary whose last name contains exactly
-- five characters.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 13 : Last Name Has Exactly Five Characters
PROMPT ============================================================

SELECT L_NAME,
       SALARY
FROM EMP
WHERE L_NAME LIKE '_____';



-- =============================================================================
-- End of Script
-- =============================================================================
