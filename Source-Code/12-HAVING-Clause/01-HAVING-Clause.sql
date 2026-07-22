/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/12-HAVING-Clause
File Name   : 01-HAVING-Clause.sql
Topic       : HAVING Clause
Description : Practical examples demonstrating the HAVING clause with
              GROUP BY, aggregate functions, WHERE clause, and ORDER BY
              in Oracle SQL.
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
-- Display department ID and minimum salary for departments whose
-- department ID is greater than 10 and whose maximum salary is
-- greater than 30000. Display the result in descending order of
-- department ID.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 1 : HAVING Clause with MAX(), MIN() and ORDER BY
PROMPT ============================================================

SELECT DEPT_ID,
       MIN(SALARY) AS MIN_SALARY
FROM EMP
WHERE DEPT_ID > 10
GROUP BY DEPT_ID
HAVING MAX(SALARY) > 30000
ORDER BY DEPT_ID DESC;



-- =============================================================================
-- Query 2
-- Display department ID and minimum salary for employees whose
-- job ID is ST_CLERK or IT_PROG. Show only departments whose total
-- salary is less than 25000 and display the result in descending
-- order of department ID.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 2 : HAVING Clause with SUM() and ORDER BY
PROMPT ============================================================

SELECT DEPT_ID,
       MIN(SALARY) AS MIN_SALARY
FROM EMP
WHERE JOB_ID IN ('ST_CLERK', 'IT_PROG')
GROUP BY DEPT_ID
HAVING SUM(SALARY) < 25000
ORDER BY DEPT_ID DESC;



-- =============================================================================
-- End of Script
-- =============================================================================
