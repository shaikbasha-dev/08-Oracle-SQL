/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/01-SELECT-Statement
File Name   : 01-Retrieving-Data-SELECT-Statement.sql
Topic       : Retrieving Data Using SELECT Statement
Description : Practical Oracle SQL examples demonstrating the SELECT statement
              for retrieving data from a table using different conditions.
Author      : Shaik Mahaboob Basha
License     : MIT License
===============================================================================
*/

-- =============================================================================
-- SECTION 1 : Create STUDENT Table
-- =============================================================================

CREATE TABLE STUDENT
(
    NAME    VARCHAR2(30),
    AGE     NUMBER(3),
    GENDER  VARCHAR2(10),
    MARKS   NUMBER(3)
);

-- =============================================================================
-- SECTION 2 : Insert Sample Records
-- =============================================================================

INSERT INTO STUDENT VALUES ('Cat', 23, 'Male', 93);
INSERT INTO STUDENT VALUES ('Rat', 24, 'Female', 88);
INSERT INTO STUDENT VALUES ('Tiger', 26, 'Female', 98);
INSERT INTO STUDENT VALUES ('Lion', 18, 'Male', 34);

COMMIT;

-- =============================================================================
-- Query 1
-- Display the names of all students.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 1 : Display the names of all students
PROMPT ============================================================

SELECT NAME
FROM STUDENT;

-- =============================================================================
-- Query 2
-- Display the name, age, and gender of all students.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 2 : Display the name, age, and gender of all students
PROMPT ============================================================

SELECT NAME,
       AGE,
       GENDER
FROM STUDENT;

-- =============================================================================
-- Query 3
-- Display all columns from the STUDENT table.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 3 : Display all student details
PROMPT ============================================================

SELECT *
FROM STUDENT;

-- =============================================================================
-- Query 4
-- Display the name of the student whose age is 22.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 4 : Display the name of the student whose age is 22
PROMPT ============================================================

SELECT NAME
FROM STUDENT
WHERE AGE = 22;

-- =============================================================================
-- Query 5
-- Display complete details of students whose gender is 'Male'.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 5 : Display details of male students
PROMPT ============================================================

SELECT *
FROM STUDENT
WHERE GENDER = 'Male';

-- =============================================================================
-- Query 6
-- Display complete details of students who scored more than 60 marks.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Query 6 : Display students who scored more than 60 marks
PROMPT ============================================================

SELECT *
FROM STUDENT
WHERE MARKS > 60;

-- =============================================================================
-- End of Script
-- =============================================================================
