/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/10-ORDER-BY-Clause
File Name   : 01-ORDER-BY-Clause.sql
Topic       : ORDER BY Clause
Description : Practical examples demonstrating sorting of query results using
              the ORDER BY clause in ascending and descending order.
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
-- Display employee first names in ascending order.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 1 : Employee First Names in Ascending Order
PROMPT ============================================================

SELECT F_NAME
FROM EMP
ORDER BY F_NAME ASC;



-- =============================================================================
-- Query 2
-- Display employee hire dates from oldest to newest.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 2 : Hire Dates in Ascending Order
PROMPT ============================================================

SELECT HIRE_DATE
FROM EMP
ORDER BY HIRE_DATE ASC;



-- =============================================================================
-- Query 3
-- Display employee salaries in descending order.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 3 : Salaries in Descending Order
PROMPT ============================================================

SELECT SALARY
FROM EMP
ORDER BY SALARY DESC;



-- =============================================================================
-- Query 4
-- Display commission percentage in ascending order.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 4 : Commission Percentage in Ascending Order
PROMPT ============================================================

SELECT COMMISSION_PCT
FROM EMP
ORDER BY COMMISSION_PCT ASC;



-- =============================================================================
-- Query 5
-- Display commission percentage in descending order.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 5 : Commission Percentage in Descending Order
PROMPT ============================================================

SELECT COMMISSION_PCT
FROM EMP
ORDER BY COMMISSION_PCT DESC;



-- =============================================================================
-- End of Script
-- =============================================================================
