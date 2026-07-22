/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/05-Dual-Table-and-Complex-Concatenations
File Name   : 01-Dual-Table-and-Complex-Concatenations.sql
Topic       : Dual Table and Complex Concatenations
Description : Practical examples demonstrating the usage of Oracle DUAL table
              and concatenation operator (||) with literals, NULL values,
              numbers, and table columns.
Author      : Shaik Mahaboob Basha
License     : MIT License
===============================================================================
*/

-- =============================================================================
-- NOTE
-- =============================================================================
-- This script demonstrates:
-- 1. Working with Oracle DUAL table.
-- 2. Concatenating strings, numbers, and NULL values.
-- 3. Creating dynamic output using data from the EMP table.
--
-- Query 4 assumes the EMP table already exists.
-- =============================================================================



-- =============================================================================
-- SECTION 1 : Oracle DUAL Table
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Display Structure of DUAL Table
PROMPT ============================================================

DESC DUAL;



PROMPT
PROMPT ============================================================
PROMPT Display Contents of DUAL Table
PROMPT ============================================================

SELECT *
FROM DUAL;



-- =============================================================================
-- SECTION 2 : Concatenation Using DUAL Table
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Query 1
-- Concatenate two numeric values.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 1 : Concatenate 111 and 222
PROMPT ============================================================

SELECT 111 || 222 AS "FULL NUMBER"
FROM DUAL;



-- -----------------------------------------------------------------------------
-- Query 2
-- Concatenate a string and a numeric value.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 2 : Concatenate Bond and 7777
PROMPT ============================================================

SELECT 'Bond' || 7777 AS "MOVIE CHARACTER"
FROM DUAL;



-- -----------------------------------------------------------------------------
-- Query 3
-- Concatenate a string with NULL.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 3 : Concatenate String with NULL
PROMPT ============================================================

SELECT 'Bond' || NULL AS "RESULT"
FROM DUAL;



-- =============================================================================
-- SECTION 3 : Dynamic Concatenation Using EMP Table
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Query 4
-- Display employee name along with department information.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 4 : Employee Department Details
PROMPT ============================================================

SELECT F_NAME || ' works in department ' || DEPT_ID
       AS "SALARY DETAILS"
FROM EMP;



-- =============================================================================
-- End of Script
-- =============================================================================
