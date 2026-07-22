/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/14-Single-Row-Functions-Number-General
File Name   : 01-Single-Row-Functions-Number-General.sql
Topic       : Single Row Functions - Number Functions & General Functions
Description : Practical examples demonstrating Oracle SQL Number Functions
              and General Functions including ROUND(), TRUNC(), MOD(),
              NVL(), NVL2(), and CASE expressions.
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
-- SECTION 1 : ROUND()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT ROUND() - Round to 2 Decimal Places
PROMPT ============================================================

SELECT ROUND(45.326, 2)
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT ROUND() - Round to 1 Decimal Place
PROMPT ============================================================

SELECT ROUND(1234.356, 1)
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT ROUND() - Round to Nearest Hundred
PROMPT ============================================================

SELECT ROUND(2678.345, -2)
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT ROUND() - Round Integer to Nearest Hundred
PROMPT ============================================================

SELECT ROUND(123, -2)
FROM DUAL;



-- =============================================================================
-- SECTION 2 : TRUNC()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT TRUNC() - Truncate to 2 Decimal Places
PROMPT ============================================================

SELECT TRUNC(45.326, 2)
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT TRUNC() - Truncate to 1 Decimal Place
PROMPT ============================================================

SELECT TRUNC(1234.356, 1)
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT TRUNC() - Truncate to Nearest Hundred
PROMPT ============================================================

SELECT TRUNC(2678.345, -2)
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT TRUNC() - Truncate Integer to Nearest Hundred
PROMPT ============================================================

SELECT TRUNC(123, -2)
FROM DUAL;



-- =============================================================================
-- SECTION 3 : MOD()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT MOD() - Find Remainder After Division
PROMPT ============================================================

SELECT MOD(120, 2)
FROM DUAL;



-- =============================================================================
-- SECTION 4 : NVL()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT NVL() - Replace NULL Commission with 0
PROMPT ============================================================

SELECT NVL(COMMISSION_PCT, 0)
FROM EMP;



-- =============================================================================
-- SECTION 5 : NVL2()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT NVL2() - Replace NOT NULL with 5 and NULL with 0
PROMPT ============================================================

SELECT NVL2(COMMISSION_PCT, 5, 0)
FROM EMP;



-- =============================================================================
-- SECTION 6 : CASE Expression
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT CASE Expression - Compare Length of First Name and Last Name
PROMPT ============================================================

SELECT F_NAME,
       L_NAME,
       LENGTH(F_NAME) AS FIRST_NAME_LENGTH,
       LENGTH(L_NAME) AS LAST_NAME_LENGTH,
       CASE
           WHEN LENGTH(F_NAME) = LENGTH(L_NAME)
           THEN NULL
           ELSE LENGTH(F_NAME)
       END AS CASE_RESULT
FROM EMP;



-- =============================================================================
-- End of Script
-- =============================================================================
