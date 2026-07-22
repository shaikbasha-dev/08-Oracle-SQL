/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/13-Single-Row-Functions-Character
File Name   : 01-Single-Row-Functions-Character.sql
Topic       : Single Row Functions - Character Functions
Description : Practical examples demonstrating commonly used Oracle SQL
              character functions including UPPER, LOWER, INITCAP,
              CONCAT, LENGTH, SUBSTR, INSTR, TRIM, LPAD and RPAD.
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
-- SECTION 1 : UPPER()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT UPPER() - Convert 'Akash' to Uppercase
PROMPT ============================================================

SELECT UPPER('Akash')
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT UPPER() - Display Employee First Names in Uppercase
PROMPT ============================================================

SELECT UPPER(F_NAME)
FROM EMP;



-- =============================================================================
-- SECTION 2 : LOWER()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT LOWER() - Convert 'Pandey' to Lowercase
PROMPT ============================================================

SELECT LOWER('Pandey')
FROM DUAL;



-- =============================================================================
-- SECTION 3 : INITCAP()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT INITCAP() - Convert 'kodnest' to Initial Capital
PROMPT ============================================================

SELECT INITCAP('kodnest')
FROM DUAL;



-- =============================================================================
-- SECTION 4 : UPPER() with WHERE Clause
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT UPPER() with WHERE Clause - Last Name = 'Pandey'
PROMPT ============================================================

SELECT UPPER(F_NAME),
       UPPER(L_NAME)
FROM EMP
WHERE L_NAME = 'Pandey';



PROMPT
PROMPT ============================================================
PROMPT UPPER() with WHERE Clause - Employee Name = 'Akash'
PROMPT ============================================================

SELECT UPPER(F_NAME),
       UPPER(L_NAME),
       SALARY
FROM EMP
WHERE F_NAME = 'Akash';



-- =============================================================================
-- SECTION 5 : CONCAT()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT CONCAT() - Combine 'Akash' and 'Pandey'
PROMPT ============================================================

SELECT CONCAT('Akash', 'Pandey')
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT CONCAT() - Combine Employee First Name and Last Name
PROMPT ============================================================

SELECT CONCAT(F_NAME, L_NAME)
FROM EMP;



PROMPT
PROMPT ============================================================
PROMPT CONCAT() - Combine '1111' and '2222'
PROMPT ============================================================

SELECT CONCAT('1111', '2222')
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT CONCAT() - Combine '1111' and 'Ramu'
PROMPT ============================================================

SELECT CONCAT('1111', 'Ramu')
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT CONCAT() - Combine '1111' with NULL
PROMPT ============================================================

SELECT CONCAT('1111', NULL)
FROM DUAL;



-- =============================================================================
-- SECTION 6 : LENGTH()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT LENGTH() - Length of 'Prabhakaran'
PROMPT ============================================================

SELECT LENGTH('Prabhakaran')
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT LENGTH() - Length of Employee First Names
PROMPT ============================================================

SELECT LENGTH(F_NAME)
FROM EMP;



PROMPT
PROMPT ============================================================
PROMPT LENGTH() - Length of Number 1111
PROMPT ============================================================

SELECT LENGTH(1111)
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT LENGTH() - Length of NULL
PROMPT ============================================================

SELECT LENGTH(NULL)
FROM DUAL;



-- =============================================================================
-- SECTION 7 : SUBSTR()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT SUBSTR() - Extract Five Characters from Position 2
PROMPT ============================================================

SELECT SUBSTR('PRABHAKARAN', 2, 5)
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT SUBSTR() - Extract 'oha' from 'RajaRamMohanRoy'
PROMPT ============================================================

SELECT SUBSTR('RajaRamMohanRoy', 9, 3)
FROM DUAL;



-- =============================================================================
-- SECTION 8 : INSTR()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT INSTR() - Position of Character 'a' in 'Pandey'
PROMPT ============================================================

SELECT INSTR('Pandey', 'a')
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT INSTR() - Position of Character 'a' in Employee First Names
PROMPT ============================================================

SELECT INSTR(F_NAME, 'a')
FROM EMP;



PROMPT
PROMPT ============================================================
PROMPT SUBSTR() and INSTR() - Extract 'bha'
PROMPT ============================================================

SELECT SUBSTR(
       'Prabhakaran',
       INSTR('Prabhakaran', 'bha'),
       3)
FROM DUAL;



-- =============================================================================
-- SECTION 9 : TRIM()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT TRIM() - Remove Leading 'm'
PROMPT ============================================================

SELECT TRIM(LEADING 'm' FROM 'malayalam')
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT TRIM() - Remove Trailing 'm'
PROMPT ============================================================

SELECT TRIM(TRAILING 'm' FROM 'malayalam')
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT TRIM() - Remove Leading and Trailing 'm'
PROMPT ============================================================

SELECT TRIM(BOTH 'm' FROM 'malayalam')
FROM DUAL;



-- =============================================================================
-- SECTION 10 : LPAD()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT LPAD() - Display ####Sharma
PROMPT ============================================================

SELECT LPAD('Sharma', 10, '#')
FROM DUAL;



-- =============================================================================
-- SECTION 11 : RPAD()
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT RPAD() - Display Sharma####
PROMPT ============================================================

SELECT RPAD('Sharma', 10, '#')
FROM DUAL;



PROMPT
PROMPT ============================================================
PROMPT RPAD() - Display Sharma#!#!
PROMPT ============================================================

SELECT RPAD('Sharma', 10, '#!')
FROM DUAL;



-- =============================================================================
-- End of Script
-- =============================================================================
