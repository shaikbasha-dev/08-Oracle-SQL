/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/19-Outer-Joins
File Name   : 01-Outer-Joins.sql
Topic       : Outer Joins
Description : Practical examples demonstrating Oracle SQL LEFT OUTER JOIN,
              RIGHT OUTER JOIN, and FULL OUTER JOIN using sample tables
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
-- SECTION 1 : LEFT OUTER JOIN
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 1 : LEFT OUTER JOIN Between TABLE1 and TABLE2
PROMPT ============================================================

SELECT *
FROM TABLE1
LEFT OUTER JOIN TABLE2
ON TABLE1.B = TABLE2.B;



-- =============================================================================
-- SECTION 2 : RIGHT OUTER JOIN
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 2 : RIGHT OUTER JOIN Between TABLE1 and TABLE2
PROMPT ============================================================

SELECT *
FROM TABLE1
RIGHT OUTER JOIN TABLE2
ON TABLE1.B = TABLE2.B;



-- =============================================================================
-- SECTION 3 : FULL OUTER JOIN
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 3 : FULL OUTER JOIN Between TABLE1 and TABLE2
PROMPT ============================================================

SELECT *
FROM TABLE1
FULL OUTER JOIN TABLE2
ON TABLE1.B = TABLE2.B;



-- =============================================================================
-- SECTION 4 : LEFT OUTER JOIN - EMP and DEPT
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
-- SECTION 5 : RIGHT OUTER JOIN - EMP and DEPT
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
-- SECTION 6 : FULL OUTER JOIN - EMP and DEPT
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
-- SECTION 7 : LEFT OUTER JOIN Using Table Aliases
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
-- SECTION 8 : INNER JOIN Using Table Aliases
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
