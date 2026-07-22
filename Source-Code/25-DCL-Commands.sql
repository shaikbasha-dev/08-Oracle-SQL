/*
===============================================================================
Repository  : 08-Oracle-SQL
Folder      : Source-Code/25-DCL-Commands
File Name   : 01-DCL-Commands.sql
Topic       : Data Control Language (DCL)
Description : Practical examples demonstrating Oracle SQL DCL commands
              including CREATE USER, GRANT, REVOKE, and DROP USER.
Author      : Shaik Mahaboob Basha
License     : MIT License
===============================================================================
*/

-- =============================================================================
-- NOTE
-- =============================================================================
-- This script must be executed by a user having administrative privileges
-- (such as SYS or SYSTEM) because CREATE USER, GRANT, REVOKE, and DROP USER
-- require DBA privileges.
--
-- The EMP table should already exist.
-- =============================================================================



-- =============================================================================
-- SECTION 1 : CREATE USER
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Step 1 : Create Database User
PROMPT ============================================================

CREATE USER DECEMBER
IDENTIFIED BY DECEMBER;



-- =============================================================================
-- SECTION 2 : GRANT PRIVILEGE
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Step 2 : Grant SELECT Privilege on EMP Table
PROMPT ============================================================

GRANT SELECT
ON EMP
TO DECEMBER;



-- =============================================================================
-- SECTION 3 : VERIFY PRIVILEGE
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Step 3 : User Can Now Access EMP Table
PROMPT ============================================================

-- Connect as user DECEMBER and execute:
--
-- SELECT *
-- FROM EMP;



-- =============================================================================
-- SECTION 4 : REVOKE PRIVILEGE
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Step 4 : Revoke SELECT Privilege
PROMPT ============================================================

REVOKE SELECT
ON EMP
FROM DECEMBER;



-- =============================================================================
-- SECTION 5 : DROP USER
-- =============================================================================

PROMPT
PROMPT ============================================================
PROMPT Step 5 : Drop Database User
PROMPT ============================================================

DROP USER DECEMBER;



-- =============================================================================
-- End of Script
-- =============================================================================
