/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/20-Cross-Cartesian-And-Self-Join
File Name   : 01-Cross-Cartesian-And-Self-Join.sql
Topic       : Cross Join, Cartesian Join and Self Join
Description : Practical examples demonstrating Oracle SQL CROSS JOIN,
              CARTESIAN JOIN, and SELF JOIN using sample tables
              and real-world EMP and DEPT tables.
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
-- SECTION 1 : CROSS JOIN
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 1 : CROSS JOIN Between TABLE1 and TABLE2
PROMPT ============================================================

SELECT *
FROM TABLE1
CROSS JOIN TABLE2;



-- =============================================================================
-- SECTION 2 : CARTESIAN JOIN
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 2 : CARTESIAN JOIN Between TABLE1 and TABLE2
PROMPT ============================================================

SELECT *
FROM TABLE1,
     TABLE2;



-- =============================================================================
-- SECTION 3 : SELF JOIN
-- Display employees whose salary is greater than Pandey's salary
-- using two aliases of the EMP table.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 3 : SELF JOIN Using EMP Table
PROMPT ============================================================

SELECT F.F_NAME,
       F.L_NAME,
       F.SALARY
FROM EMP E,
     EMP F
WHERE F.SALARY > E.SALARY
  AND E.L_NAME = 'Pandey';



-- =============================================================================
-- SECTION 4 : CROSS JOIN Between EMP and DEPT
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 4 : CROSS JOIN Between EMP and DEPT
PROMPT ============================================================

SELECT *
FROM EMP
CROSS JOIN DEPT;



-- =============================================================================
-- End of Script
-- =============================================================================
