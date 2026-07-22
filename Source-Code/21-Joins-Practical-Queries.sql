/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/21-Joins-Practical-Queries
File Name   : 01-Joins-Practical-Queries.sql
Topic       : Practical SQL JOIN Queries
Description : Practical Oracle SQL JOIN examples using EMP and DEPT
              tables demonstrating INNER JOIN, NATURAL JOIN,
              CROSS JOIN, LEFT OUTER JOIN, RIGHT OUTER JOIN,
              FULL OUTER JOIN, and JOIN interview questions.
Author      : Shaik Mahaboob Basha
License     : MIT License
===============================================================================
*/

-- =============================================================================
-- NOTE
-- =============================================================================
-- This script assumes the following tables already exist:
--
--   1. EMP
--   2. DEPT
--
-- Execute the database setup script before running these examples.
-- =============================================================================



-- =============================================================================
-- Query 1
-- Display employee ID, employee name, salary, and department name
-- using INNER JOIN.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 1 : Employee Details Using INNER JOIN
PROMPT ============================================================

SELECT EMP_ID,
       F_NAME,
       SALARY,
       DEPT_NAME
FROM EMP
INNER JOIN DEPT
ON EMP.DEPT_ID = DEPT.DEPT_ID;



-- =============================================================================
-- Query 2
-- Perform NATURAL JOIN between EMP and DEPT.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 2 : NATURAL JOIN Between EMP and DEPT
PROMPT ============================================================

SELECT *
FROM EMP
NATURAL JOIN DEPT;



-- =============================================================================
-- Query 3
-- Perform CROSS JOIN between EMP and DEPT.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 3 : CROSS JOIN Between EMP and DEPT
PROMPT ============================================================

SELECT *
FROM EMP
CROSS JOIN DEPT;



-- =============================================================================
-- Query 4
-- Perform LEFT OUTER JOIN between EMP and DEPT.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 4 : LEFT OUTER JOIN Between EMP and DEPT
PROMPT ============================================================

SELECT *
FROM EMP
LEFT OUTER JOIN DEPT
ON EMP.DEPT_ID = DEPT.DEPT_ID;



-- =============================================================================
-- Query 5
-- Perform RIGHT OUTER JOIN between EMP and DEPT.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 5 : RIGHT OUTER JOIN Between EMP and DEPT
PROMPT ============================================================

SELECT *
FROM EMP
RIGHT OUTER JOIN DEPT
ON EMP.DEPT_ID = DEPT.DEPT_ID;



-- =============================================================================
-- Query 6
-- Perform FULL OUTER JOIN between EMP and DEPT.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 6 : FULL OUTER JOIN Between EMP and DEPT
PROMPT ============================================================

SELECT *
FROM EMP
FULL OUTER JOIN DEPT
ON EMP.DEPT_ID = DEPT.DEPT_ID;



-- =============================================================================
-- Query 7
-- LEFT OUTER JOIN using table aliases.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 7 : LEFT OUTER JOIN Using Table Aliases
PROMPT ============================================================

SELECT *
FROM EMP E
LEFT OUTER JOIN DEPT D
ON E.DEPT_ID = D.DEPT_ID;



-- =============================================================================
-- Query 8
-- INNER JOIN using table aliases.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 8 : INNER JOIN Using Table Aliases
PROMPT ============================================================

SELECT *
FROM EMP E
INNER JOIN DEPT D
ON E.DEPT_ID = D.DEPT_ID;



-- =============================================================================
-- End of Script
-- =============================================================================
