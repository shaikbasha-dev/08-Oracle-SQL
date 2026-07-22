/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/18-Introduction-To-Joins-And-Inner-Join
File Name   : 01-Introduction-To-Joins-And-Inner-Join.sql
Topic       : Introduction to Joins, Inner Join, Equi Join and Natural Join
Description : Practical examples demonstrating different types of joins in
              Oracle SQL including INNER JOIN, EQUI JOIN, and NATURAL JOIN.
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
--   3. TABLE1
--   4. TABLE2
--
-- Execute the database setup script before running these examples.
-- =============================================================================



-- =============================================================================
-- Query 1
-- Display all matching records from TABLE1 and TABLE2 using INNER JOIN.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 1 : INNER JOIN Between TABLE1 and TABLE2
PROMPT ============================================================

SELECT *
FROM TABLE1
INNER JOIN TABLE2
ON TABLE1.B = TABLE2.B;



-- =============================================================================
-- Query 2
-- Display all matching records using NATURAL JOIN.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 2 : NATURAL JOIN Between TABLE1 and TABLE2
PROMPT ============================================================

SELECT *
FROM TABLE1
NATURAL JOIN TABLE2;



-- =============================================================================
-- Query 3
-- Display employee ID, employee name, salary, and department name
-- using INNER JOIN between EMP and DEPT tables.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 3 : Employee Details with Department Name
PROMPT ============================================================

SELECT EMP_ID,
       F_NAME,
       SALARY,
       DEPT_NAME
FROM EMP
INNER JOIN DEPT
ON EMP.DEPT_ID = DEPT.DEPT_ID;



-- =============================================================================
-- Query 4
-- Perform NATURAL JOIN between EMP and DEPT tables.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 4 : NATURAL JOIN Between EMP and DEPT
PROMPT ============================================================

SELECT *
FROM EMP
NATURAL JOIN DEPT;



-- =============================================================================
-- Query 5
-- Perform EQUI JOIN between TABLE1 and TABLE2 using WHERE clause.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 5 : EQUI JOIN Between TABLE1 and TABLE2
PROMPT ============================================================

SELECT *
FROM TABLE1,
     TABLE2
WHERE TABLE1.B = TABLE2.B;



-- =============================================================================
-- End of Script
-- =============================================================================
