/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/02-Constraints
File Name   : 01-Constraints-in-Oracle-SQL.sql
Topic       : Constraints in Oracle SQL
Description : Practical examples demonstrating the implementation of various
              Oracle SQL constraints including UNIQUE, NOT NULL, PRIMARY KEY,
              FOREIGN KEY, CHECK, and DEFAULT.
Author      : Shaik Mahaboob Basha
License     : MIT License
===============================================================================
*/

-- =============================================================================
-- SECTION 1 : UNIQUE Constraint
-- Ensures duplicate values are not allowed, but NULL values are permitted.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT UNIQUE Constraint Example
PROMPT ============================================================

CREATE TABLE STUDENT_UNIQUE
(
    ID         NUMBER UNIQUE,
    NAME       VARCHAR2(54),
    AGE        NUMBER,
    INSTITUTE  VARCHAR2(64)
);

-- Valid Records

INSERT INTO STUDENT_UNIQUE VALUES (101, 'Basha', 23, 'KodNest');
INSERT INTO STUDENT_UNIQUE VALUES (102, 'Tom', 24, 'KodNest');
INSERT INTO STUDENT_UNIQUE VALUES (NULL, 'Jerry', 22, 'KodNest');

COMMIT;

-- Invalid Record (Duplicate Value)
-- INSERT INTO STUDENT_UNIQUE VALUES (101, 'Sam', 25, 'KodNest');



-- =============================================================================
-- SECTION 2 : NOT NULL Constraint
-- Ensures NULL values are not allowed.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT NOT NULL Constraint Example
PROMPT ============================================================

CREATE TABLE STUDENT_NOT_NULL
(
    ID         NUMBER NOT NULL,
    NAME       VARCHAR2(67),
    AGE        NUMBER,
    INSTITUTE  VARCHAR2(56)
);

-- Valid Records

INSERT INTO STUDENT_NOT_NULL VALUES (101, 'Basha', 23, 'KodNest');
INSERT INTO STUDENT_NOT_NULL VALUES (101, 'Tom', 24, 'KodNest');

COMMIT;

-- Invalid Record (NULL not allowed)
-- INSERT INTO STUDENT_NOT_NULL VALUES (NULL, 'Jerry', 22, 'KodNest');



-- =============================================================================
-- SECTION 3 : PRIMARY KEY Constraint
-- Ensures duplicate values and NULL values are not allowed.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT PRIMARY KEY Constraint Example
PROMPT ============================================================

CREATE TABLE STUDENT_PRIMARY_KEY
(
    ID         NUMBER,
    NAME       VARCHAR2(54) PRIMARY KEY,
    AGE        NUMBER,
    INSTITUTE  VARCHAR2(65)
);

-- Valid Records

INSERT INTO STUDENT_PRIMARY_KEY VALUES (101, 'Basha', 23, 'KodNest');
INSERT INTO STUDENT_PRIMARY_KEY VALUES (102, 'Tom', 24, 'KodNest');

COMMIT;

-- Invalid Record (NULL Primary Key)
-- INSERT INTO STUDENT_PRIMARY_KEY VALUES (103, NULL, 22, 'KodNest');

-- Invalid Record (Duplicate Primary Key)
-- INSERT INTO STUDENT_PRIMARY_KEY VALUES (104, 'Basha', 25, 'KodNest');



-- =============================================================================
-- SECTION 4 : FOREIGN KEY Constraint
-- Establishes relationship between Parent and Child tables.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT FOREIGN KEY Constraint Example
PROMPT ============================================================

-- Parent Table

CREATE TABLE DEPARTMENT
(
    DID     NUMBER PRIMARY KEY,
    DNAME   VARCHAR2(54)
);

INSERT INTO DEPARTMENT VALUES (10, 'HR');
INSERT INTO DEPARTMENT VALUES (20, 'IT');

COMMIT;

-- Child Table

CREATE TABLE EMPLOYEE
(
    ID       NUMBER PRIMARY KEY,
    NAME     VARCHAR2(87),
    SALARY   NUMBER,
    DID      NUMBER,
    CONSTRAINT FK_DEPARTMENT
    FOREIGN KEY (DID)
    REFERENCES DEPARTMENT(DID)
);

-- Valid Records

INSERT INTO EMPLOYEE VALUES (1, 'Alex', 50000, 10);
INSERT INTO EMPLOYEE VALUES (2, 'Alan', 60000, 20);
INSERT INTO EMPLOYEE VALUES (3, 'Ryan', 55000, 10);
INSERT INTO EMPLOYEE VALUES (4, 'John', 45000, NULL);

COMMIT;

-- Invalid Record (Department 99 does not exist)
-- INSERT INTO EMPLOYEE VALUES (5, 'Jack', 70000, 99);



-- =============================================================================
-- SECTION 5 : CHECK Constraint
-- Ensures inserted values satisfy the specified condition.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT CHECK Constraint Example
PROMPT ============================================================

CREATE TABLE STUDENT_CHECK
(
    ID         NUMBER,
    NAME       VARCHAR2(54),
    AGE        NUMBER CHECK (AGE > 18),
    INSTITUTE  VARCHAR2(54)
);

-- Valid Record

INSERT INTO STUDENT_CHECK VALUES (101, 'Basha', 23, 'KodNest');

COMMIT;

-- Invalid Record (Age less than or equal to 18)
-- INSERT INTO STUDENT_CHECK VALUES (102, 'Tom', 16, 'KodNest');



-- =============================================================================
-- SECTION 6 : DEFAULT Constraint
-- Assigns a default value when no value is provided.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT DEFAULT Constraint Example
PROMPT ============================================================

CREATE TABLE STUDENT_DEFAULT
(
    ID         NUMBER,
    NAME       VARCHAR2(54),
    AGE        NUMBER,
    INSTITUTE  VARCHAR2(54) DEFAULT 'KodNest'
);

-- Explicit Value

INSERT INTO STUDENT_DEFAULT
VALUES (101, 'Basha', 23, 'ABC Corp');

-- Default Value

INSERT INTO STUDENT_DEFAULT
(ID, NAME, AGE)
VALUES
(102, 'Tom', 24);

COMMIT;



-- =============================================================================
-- SECTION 7 : Assignment Exercise
-- Create CITIZEN table using multiple constraints.
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Assignment : Create CITIZEN Table
PROMPT ============================================================

CREATE TABLE CITIZEN
(
    ID             NUMBER PRIMARY KEY,
    NAME           VARCHAR2(65) NOT NULL,
    GENDER         VARCHAR2(65) DEFAULT 'Male',
    ADDRESS        VARCHAR2(54),
    PHONE_NUMBER   NUMBER,
    AGE            NUMBER CHECK (AGE > 18)
);

-- =============================================================================
-- End of Script
-- =============================================================================
