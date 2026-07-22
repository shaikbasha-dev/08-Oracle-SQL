/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/08-LIKE-Operator-Advanced-Patterns
File Name   : 01-LIKE-Operator-Advanced-Patterns.sql
Topic       : LIKE Operator - Advanced Pattern Matching
Description : Practical examples demonstrating advanced pattern matching
              using LIKE operator and ESCAPE character in Oracle SQL.
Author      : Shaik Mahaboob Basha
License     : MIT License
===============================================================================
*/

-- =============================================================================
-- NOTE
-- =============================================================================
-- This script assumes the EMP table already exists.
--
-- The COLLEGE_STUDENT table is created in this script because it is required
-- for demonstrating the ESCAPE clause examples.
-- =============================================================================



-- =============================================================================
-- SECTION 1 : Advanced LIKE Operator Examples
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Query 1
-- Display employees whose second character of first name is 'r'.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 1 : Second Character of First Name is 'r'
PROMPT ============================================================

SELECT *
FROM EMP
WHERE F_NAME LIKE '_r%';



-- -----------------------------------------------------------------------------
-- Query 2
-- Display employees whose email third character is '@'.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 2 : Third Character of Email is '@'
PROMPT ============================================================

SELECT *
FROM EMP
WHERE EMAIL LIKE '__@%';



-- -----------------------------------------------------------------------------
-- Query 3
-- Display employees whose fourth character from the end of the
-- last name is 'n'.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 3 : Fourth Character From Last is 'n'
PROMPT ============================================================

SELECT *
FROM EMP
WHERE L_NAME LIKE '%n___';



-- -----------------------------------------------------------------------------
-- Query 4
-- Display phone numbers whose third digit from the end is '3'.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 4 : Third Digit From Last is '3'
PROMPT ============================================================

SELECT PHONE_NUMBER
FROM EMP
WHERE PHONE_NUMBER LIKE '%3__';



-- -----------------------------------------------------------------------------
-- Query 5
-- Display employee last name and salary where last name has
-- exactly five characters.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 5 : Last Name Contains Exactly Five Characters
PROMPT ============================================================

SELECT L_NAME,
       SALARY
FROM EMP
WHERE L_NAME LIKE '_____';



-- =============================================================================
-- SECTION 2 : ESCAPE Character Examples
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Create COLLEGE_STUDENT Table
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Create COLLEGE_STUDENT Table
PROMPT ============================================================

CREATE TABLE COLLEGE_STUDENT
(
    ID    VARCHAR2(54),
    NAME  VARCHAR2(54)
);



-- -----------------------------------------------------------------------------
-- Insert Sample Records
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Insert Sample Records
PROMPT ============================================================

INSERT INTO COLLEGE_STUDENT VALUES ('Kod001', 'Sahana_varma');
INSERT INTO COLLEGE_STUDENT VALUES ('Kod002', 'Sindhu_sharma');
INSERT INTO COLLEGE_STUDENT VALUES ('Kod003', 'Swathi%hegde');
INSERT INTO COLLEGE_STUDENT VALUES ('Kod004', 'Shruthi');

COMMIT;



-- -----------------------------------------------------------------------------
-- Query 6
-- Display names containing underscore (_).
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 6 : Names Containing Underscore (_)
PROMPT ============================================================

SELECT NAME
FROM COLLEGE_STUDENT
WHERE NAME LIKE '%?_%'
ESCAPE '?';



-- -----------------------------------------------------------------------------
-- Query 7
-- Display names containing percentage (%) symbol.
-- -----------------------------------------------------------------------------

PROMPT
PROMPT ============================================================
PROMPT Query 7 : Names Containing Percentage (%)
PROMPT ============================================================

SELECT NAME
FROM COLLEGE_STUDENT
WHERE NAME LIKE '%?%%'
ESCAPE '?';



-- =============================================================================
-- End of Script
-- =============================================================================
