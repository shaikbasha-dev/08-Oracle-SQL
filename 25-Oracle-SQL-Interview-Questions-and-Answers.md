# Oracle SQL Interview Questions and Answers
---

## Part 1: Conceptual & Structural Interview Questions (1–50)

### 1. What are the primary differences between SQL and PL/SQL?
* **SQL (Structured Query Language):** A declarative, non-procedural language used to interact with relational databases. It allows users to perform operations like fetching, inserting, updating, and deleting data using single statements or blocks. It lacks control structures like loops or conditional branches.
* **PL/SQL (Procedural Language extension to SQL):** Oracle's proprietary procedural extension. It combines the data manipulation power of SQL with processing structures like loops (`FOR`, `WHILE`), conditional statements (`IF-THEN-ELSE`), exception handling, and modular constructs like functions, procedures, and packages.

### 2. Explain the difference between `TRUNCATE`, `DELETE`, and `DROP`.
* **DELETE:** A Data Manipulation Language (DML) command. It removes rows line-by-line based on a `WHERE` condition. It fires delete triggers, generates undo/redo logs, and can be rolled back. It does not release the storage space allocated to the table.
* **TRUNCATE:** A Data Definition Language (DDL) command. It removes all rows from a table instantly by deallocating the data pages. It cannot be rolled back (implicitly commits), does not fire triggers, and resets the table's High Water Mark (HWM) to reclaim space.
* **DROP:** A Data Definition Language (DDL) command. It removes the entire table structure, data, indexes, constraints, and privileges from the database. It cannot be rolled back unless flashback is enabled.

### 3. What is the difference between `VARCHAR` and `VARCHAR2` in Oracle?
* **VARCHAR:** A standard ANSI SQL data type designed for variable-length character strings. In Oracle, it is currently synonymous with `VARCHAR2`, but Oracle recommends avoiding it because its behavior might change in future releases to comply with evolving ANSI standards.
* **VARCHAR2:** Oracle’s proprietary data type used to store variable-length alphanumeric text. It optimizes storage by saving only the exact bytes of data entered (up to 4000 bytes in standard SQL, or 32767 bytes if extended data types are enabled).

### 4. What is the difference between a `CHAR` and `VARCHAR2` data type?
* **CHAR:** A fixed-length character data type. If you declare `CHAR(10)` and insert the string `'Basha'`, Oracle pads the remaining 5 characters with blank spaces. It takes up the maximum specified space regardless of input length.
* **VARCHAR2:** A variable-length character data type. If you declare `VARCHAR2(10)` and insert `'Basha'`, it consumes exactly 5 bytes of storage. No padding is added.

### 5. What are Pseudo-columns in Oracle SQL? Name a few.
Pseudo-columns behave like table columns but are not actually stored in the table. You can select data from them, but you cannot insert, update, or delete their values.
* **Examples:** `ROWID`, `ROWNUM`, `LEVEL`, `NEXTVAL`, `CURRVAL`.

### 6. Explain the difference between `ROWNUM` and `ROWID`.
* **ROWNUM:** A temporary sequential dynamic number assigned to the rows returned by a query result set. It starts at 1 and changes depending on how the rows are filtered or ordered. It is determined *before* the `ORDER BY` clause is executed.
* **ROWID:** A permanent, globally unique physical identifier representing the exact storage address of a row within a data file, block, and slot. It never changes for a row unless the row is moved or the table is rebuilt.

### 7. What is the purpose of the `DUAL` table in Oracle?
`DUAL` is a special, single-column table automatically created by Oracle in the `SYS` schema. It contains exactly one row with a value of `'X'`. It is used to evaluate scalar expressions, execute built-in functions, or select pseudo-columns when a physical database table isn't required.
```sql
SELECT SYSDATE, USER, 5 * 10 FROM DUAL;
```

### 8. What are the different types of SQL commands?
1. **DDL (Data Definition Language):** Defines or modifies database structures (`CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME`).
2. **DML (Data Manipulation Language):** Manages data within objects (`SELECT`, `INSERT`, `UPDATE`, `DELETE`, `MERGE`).
3. **DCL (Data Control Language):** Manages permissions (`GRANT`, `REVOKE`).
4. **TCL (Transaction Control Language):** Manages transaction flows (`COMMIT`, `ROLLBACK`, `SAVEPOINT`).

### 9. Explain Integrity Constraints in Oracle and list their types.
Integrity constraints enforce business rules and prevent invalid data entry into the database. The six standard types are:
1. **NOT NULL:** Restricts a column from accepting null values.
2. **UNIQUE:** Ensures all values in a column or combination of columns are unique (allows multiple NULLs).
3. **PRIMARY KEY:** Uniquely identifies each row; enforces unique and not null properties automatically.
4. **FOREIGN KEY:** Enforces a referential link between columns across tables.
5. **CHECK:** Validates that data satisfies a specific boolean condition.
6. **REF:** Defines reference types representing logical pointers to object rows.

### 10. Can a table have multiple Unique Keys and multiple Primary Keys?
* A table can have **only one Primary Key**.
* A table can have **multiple Unique Keys**. 
* Additionally, Primary Keys do not allow `NULL` values, whereas Unique Keys permit multiple `NULL` entries in Oracle.

### 11. What happens to a transaction when a DDL statement is executed?
Oracle executes an implicit `COMMIT` immediately before and immediately after any DDL statement. This means any active, pending DML transactions in your current session will be permanently written to the database and cannot be rolled back.

### 12. Explain the difference between the `WHERE` and `HAVING` clauses.
* **WHERE:** Filters individual rows before any groupings are formed. It cannot evaluate or contain aggregate functions like `SUM()`, `AVG()`, or `COUNT()`.
* **HAVING:** Filters summarized groups *after* the `GROUP BY` clause is evaluated. It is explicitly designed to filter on aggregated values.

### 13. What is a Subquery? List its types.
A subquery is a nested query block enclosed in parentheses inside an outer SQL statement.
* **Single-Row Subquery:** Returns exactly one row and one column; uses scalar operators like `=`, `>`, `<`.
* **Multi-Row Subquery:** Returns multiple rows; uses set operators like `IN`, `ANY`, `ALL`.
* **Multiple-Column Subquery:** Returns more than one column to the outer query.
* **Correlated Subquery:** References columns from the outer query, executing once for every row processed by the outer expression.

### 14. What is a Correlated Subquery and how does it differ from a regular subquery?
* **Regular Subquery:** Evaluates independently once, passing its fixed result back to the outer query block.
* **Correlated Subquery:** References parent columns from the outer query context. The inner query re-evaluates for every single candidate row considered by the outer query, matching the correlation condition dynamically.

### 15. What are Analytical Functions (Window Functions) in Oracle?
Analytical functions compute an aggregate value based on a group of rows (called a window) without collapsing the result set into a single row. Unlike standard aggregations with `GROUP BY`, every row in the output maintains its individual identity.
* **Syntax pattern:** `FUNCTION() OVER (PARTITION BY col1 ORDER BY col2)`
* **Examples:** `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `LEAD()`, `LAG()`.

### 16. Differentiate between `ROW_NUMBER()`, `RANK()`, and `DENSE_RANK()`.
Suppose we have duplicate values for scores: `[95, 95, 90, 85]`.
* **ROW_NUMBER():** Assigns a unique, consecutive integer sequence regardless of ties. Result: `1, 2, 3, 4`.
* **RANK():** Assigns the same rank to identical values, but skips subsequent rank numbers to match total positions. Result: `1, 1, 3, 4`.
* **DENSE_RANK():** Assigns the same rank to identical values without skipping any numbers. Result: `1, 1, 2, 3`.

### 17. What are the `LAG` and `LEAD` functions used for?
* **LAG():** Provides access to data from a previous row in the same result set at a designated physical offset without performing a self-join.
* **LEAD():** Provides access to data from a subsequent row ahead in the same result set at a designated offset.

### 18. What is a Database Link (DB Link)?
A DB Link is a schema object that enables a session in one Oracle database instance to securely access objects (like tables or views) in a completely separate, remote Oracle database instance using a Net Service network connection string.
```sql
SELECT * FROM employees@remote_db_link;
```

### 19. Explain the difference between `UNION` and `UNION ALL`.
* **UNION:** Combines the distinct outputs of two or more queries. It sorts the combined result set to eliminate all duplicate rows. This incurs a performance overhead.
* **UNION ALL:** Merges outputs directly without sorting or filtering. It preserves all duplicate rows, making it significantly faster than `UNION`.

### 20. What are Joins? Explain the variations available in Oracle.
Joins combine columns from two or more tables based on logical relationships.
* **Inner Join:** Returns rows only when the join condition is satisfied in both tables.
* **Left Outer Join:** Returns all rows from the left table and matching rows from the right table. If no match is found, NULLs are returned.
* **Right Outer Join:** Returns all rows from the right table and matching rows from the left table.
* **Full Outer Join:** Returns all rows from both tables, filling with NULLs where matches don't align.
* **Cross Join (Cartesian Product):** Joins every single row of the first table to every row of the second table.

### 21. What is an Oracle View? What is an Inline View?
* **View:** A virtual table based on a saved SQL query stored in the data dictionary. It does not contain physical data of its own.
* **Inline View:** A subquery enclosed in parentheses within the `FROM` clause of an outer query, acting dynamically as a temporary table for the duration of that single execution.

### 22. What is a Materialized View? How does it differ from a Standard View?
* **Standard View:** A stored query definition. Every time it is queried, Oracle must rerun the underlying SQL statements against base tables.
* **Materialized View:** Physically stores the query result set in disk blocks. It speeds up intensive aggregations and joins on large datasets. It can be refreshed on demand, at scheduled intervals, or on changes (`FAST`, `COMPLETE`, `FORCE`).

### 23. What is an Index? List common index types in Oracle.
An index is a database performance structure that speeds up rows retrieval by providing a quick path to data blocks instead of performing a costly full table scan.
* **B-Tree Index:** The default index type. Ideal for high-cardinality columns (unique or highly diverse values like primary keys).
* **Bitmap Index:** Ideal for low-cardinality columns (few distinct values like Gender, Status). It uses bit arrays to store mappings.
* **Function-Based Index:** Built on expressions or functions applied to columns (e.g., `UPPER(last_name)`).

### 24. What is a Composite Index? When should it be used?
A composite index (or concatenated index) is an index built across multiple columns of a single table. It is beneficial when those columns are frequently combined within the `WHERE` clause of complex search operations using `AND` logic.

### 25. Explain the difference between `NVL`, `NVL2`, `COALESCE`, and `NULLIF`.
* **NVL(exp1, exp2):** Returns `exp2` if `exp1` evaluated to a `NULL` value.
* **NVL2(exp1, exp2, exp3):** Evaluates `exp1`. If it is NOT `NULL`, it returns `exp2`. If it is `NULL`, it returns `exp3`.
* **COALESCE(v1, v2, ..., vn):** Evaluates arguments sequentially and returns the first non-null expression in the sequence.
* **NULLIF(exp1, exp2):** Compares two arguments. Returns `NULL` if they are equal; otherwise, returns `exp1`.

### 26. What is the difference between a Unique Index and a Unique Constraint?
* **Unique Constraint:** A declarative database model requirement enforcing data uniqueness.
* **Unique Index:** A physical storage structure built to enforce that uniqueness. Creating a unique constraint automatically triggers Oracle to build an underlying unique B-Tree index if one does not already exist.

### 27. What is a Self-Join? Provide a common use case.
A self-join is an inner or outer join where a table is joined to itself. This requires defining distinct alias names for the table within the query context.
* **Use Case:** Querying an organizational employee table where each row contains a `manager_id` referencing the `employee_id` within the same table.

### 28. What are the variations of `Group Functions` or `Aggregate Functions`?
Aggregate functions perform a calculation on a set of values and return a single summarizing metric. They ignore `NULL` values (except `COUNT(*)`).
* **Examples:** `SUM()`, `AVG()`, `COUNT()`, `MAX()`, `MIN()`, `STDDEV()`, `VARIANCE()`.

### 29. Explain the `MERGE` statement in Oracle.
The `MERGE` statement (also called an "upsert") conditionally updates or inserts rows into a target table using a source dataset. It checks a matching condition: if a match exists, it updates the target row; if no match exists, it inserts a new row.

### 30. What is a Sequence? How do you access its values?
A Sequence is a schema object that generates a sequential list of unique integers based on configuration rules.
* Accessing values uses pseudo-columns:
  * `sequence_name.NEXTVAL`: Increments and returns the next value.
  * `sequence_name.CURRVAL`: Returns the current session's last fetched value.

### 31. What is a Synonym? Contrast Private vs Public Synonyms.
A Synonym is an alias or alternative pointer name assigned to a database object like a table, view, sequence, or program unit.
* **Private Synonym:** Accessible only to the schema owner and explicitly authorized database users.
* **Public Synonym:** Created by a DBA and accessible to all valid users within the database instance.

### 32. What is a Transaction? Name its key properties.
A transaction is a logical unit of work consisting of one or more SQL statements. It must satisfy the **ACID** properties:
* **Atomicity:** All statements succeed completely, or the entire transaction is rolled back.
* **Consistency:** Keeps database states aligned with structural constraints.
* **Isolation:** Uncommitted modifications made in one session are hidden from concurrent sessions.
* **Durability:** Committed transactions are permanently saved to disk, even through system failures.

### 33. What are `SAVEPOINT`s and how are they used?
A `SAVEPOINT` creates a marker within an active transaction. It allows you to roll back a specific portion of your uncommitted changes without abandoning the entire transaction sequence.
```sql
SAVEPOINT step_one;
-- some statements
ROLLBACK TO step_one;
```

### 34. What is the difference between an Implicit and Explicit cursor?
* **Implicit Cursor:** Created and managed automatically by Oracle whenever a single DML statement or a `SELECT INTO` query executes.
* **Explicit Cursor:** Created, named, and managed manually by a developer in PL/SQL blocks for multi-row queries using `CURSOR`, `OPEN`, `FETCH`, and `CLOSE`.

### 35. Explain the `LIKE` operator wildcards in Oracle.
The `LIKE` operator performs pattern matching on text strings:
* **Percent Sign (`%`):** Matches zero or more characters.
* **Underscore (`_`):** Matches exactly one character position.

### 36. What is the purpose of the `DECODE` function?
`DECODE` is an Oracle-proprietary conditional function that acts similarly to an inline IF-THEN-ELSE statement. It evaluates an expression against a list of search values and returns the corresponding result.
```sql
SELECT DECODE(status, 'A', 'Active', 'I', 'Inactive', 'Unknown') FROM dual;
```

### 37. How does `DECODE` differ from the `CASE` expression?
* **DECODE:** An Oracle-proprietary function that only performs equality comparisons. It cannot handle complex logical conditions or range evaluations (like `<` or `>`).
* **CASE:** An ANSI-compliant, versatile standard expression. It handles complex conditional logic, range comparisons, and can combine multiple criteria using `AND`/`OR`. It is supported across both SQL and PL/SQL blocks.

### 38. What is a Flashback Query in Oracle?
A Flashback query allows developers to view data exactly as it existed at a specific point in time or a known System Change Number (SCN) in the past, utilizing undo tablespace segments.
```sql
SELECT * FROM employees AS OF TIMESTAMP TO_TIMESTAMP('2026-07-03 10:00:00', 'YYYY-MM-DD HH24:MI:SS');
```

### 39. What is a Cartesian Product and how does it happen?
A Cartesian product (Cross Join) occurs when rows from one table are combined with all rows of another table without any matching filter criteria. This returns a result set size equal to `(Rows in Table A) × (Rows in Table B)`. It typically happens when a join condition is omitted or malformed.

### 40. Explain the concept of the High Water Mark (HWM).
The High Water Mark is a boundary marker within an Oracle segment that defines the highest limit of formatted disk blocks allocated to a table that have ever contained data. Full table scans read all blocks up to the HWM, even if those blocks were completely emptied by a large `DELETE` operation.

### 41. What is the difference between a Database and an Instance in Oracle?
* **Database:** The collection of physical operating system files located on disk storage (Data files, Control files, Redo Log files).
* **Instance:** The combination of background processes and memory structures (SGA - System Global Area) allocated in RAM when an Oracle database engine starts up.

### 42. Explain the difference between `ANY` and `ALL` operators in subqueries.
* **ANY:** Compares a value against any single result in a list. It evaluates to true if at least one match satisfies the condition (e.g., `> ANY (10, 20)` means greater than 10).
* **ALL:** Compares a value against every single result in a list. It evaluates to true only if all values satisfy the condition (e.g., `> ALL (10, 20)` means greater than 20).

### 43. What is the difference between `EXISTS` and `IN` for subqueries?
* **IN:** The inner subquery executes first, collecting its entire list of values into memory before filtering the outer query. It is efficient for small lookup datasets but struggles if the subquery returns a massive result set.
* **EXISTS:** The outer query processes row by row. It checks the subquery, which stops processing as soon as it finds the first matching row. It is generally more efficient for large datasets when the subquery filters heavily.

### 44. What does the `INSTR` function do?
`INSTR` searches a string for a specified substring and returns the 1-based integer index position of its first occurrence. If the substring is not found, it returns `0`.
```sql
SELECT INSTR('Shaik Mahaboob Basha', 'Basha') FROM dual; -- Returns 16
```

### 45. What does the `SUBSTR` function do?
`SUBSTR` extracts a specific portion of a character string based on a starting position and a defined length argument.
```sql
SELECT SUBSTR('OracleSQL', 7, 3) FROM dual; -- Returns 'SQL'
```

### 46. What are the constraints that can be deferred?
Foreign Key, Unique, and Check constraints can be declared as `DEFERRABLE`. This allows you to delay validation checking until the end of a transaction when a `COMMIT` is issued, rather than validating row-by-row during active execution.

### 47. Explain the purpose of `GRANT` and `REVOKE` statements.
* **GRANT:** A DCL statement that assigns system privileges or specific object permissions to a database user or role.
* **REVOKE:** A DCL statement that removes previously assigned privileges or permissions.

### 48. What are the `TO_DATE` and `TO_CHAR` functions used for?
* **TO_DATE:** Converts a character string representation into an Oracle internal `DATE` data type using a specific format mask.
* **TO_CHAR:** Converts a numeric or date value into a formatted character string for display purposes.

### 49. What is a "Mutating Table" error?
A mutating table error (`ORA-04091`) occurs in row-level triggers when the trigger tries to query or modify the same physical table that is currently undergoing DML changes from the statement that fired the trigger.

### 50. What is an Execution Plan?
An Execution Plan is the sequential set of steps generated by the Oracle Cost-Based Optimizer (CBO) to execute a SQL statement. It outlines details like join orders, index utilization, and table scanning methods, helping developers identify performance bottlenecks.

---

## Part 2: Practical Query-Based Interview Questions (51–100)

*The following queries assume standard organizational tables: `employees (emp_id, name, salary, dept_id, hire_date, manager_id)` and `departments (dept_id, dept_name, location)`.*

### 51. Write a query to fetch the current date and time in Oracle.
```sql
SELECT SYSDATE FROM dual;
-- Or for high precision with timezone:
SELECT SYSTIMESTAMP FROM dual;
```

### 52. Write a query to find the 3rd highest salary from the employees table.
```sql
SELECT salary FROM (
    SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) as rank
    FROM employees
) WHERE rank = 3;
```

### 53. Write a query to find the Nth highest salary from an employees table using a correlated subquery.
```sql
SELECT DISTINCT e1.salary 
FROM employees e1 
WHERE n = (
    SELECT COUNT(DISTINCT e2.salary) 
    FROM employees e2 
    WHERE e2.salary >= e1.salary
);
```

### 54. Write a query to fetch duplicate records from a table based on a column (e.g., email).
```sql
SELECT email, COUNT(*) 
FROM employees 
GROUP BY email 
HAVING COUNT(*) > 1;
```

### 55. Write a query to delete duplicate rows from a table while keeping only the original row (lowest ROWID).
```sql
DELETE FROM employees 
WHERE rowid NOT IN (
    SELECT MIN(rowid) 
    FROM employees 
    GROUP BY email
);
```

### 56. Write a query to fetch the first 5 records from a table.
```sql
-- In Oracle 12c and above:
SELECT * FROM employees 
ORDER BY emp_id 
FETCH FIRST 5 ROWS ONLY;

-- In older versions:
SELECT * FROM (
    SELECT * FROM employees ORDER BY emp_id
) WHERE rownum <= 5;
```

### 57. Write a query to fetch the last 5 records from a table.
```sql
SELECT * FROM (
    SELECT * FROM employees ORDER BY emp_id DESC
) WHERE rownum <= 5 
ORDER BY emp_id ASC;
```

### 58. How do you select all employees whose names start with the letter 'S'?
```sql
SELECT * FROM employees 
WHERE name LIKE 'S%';
```

### 59. Write a query to display employee names in uppercase, stripping any trailing spaces.
```sql
SELECT UPPER(RTRIM(name)) AS formatted_name FROM employees;
```

### 60. Write a query to count the number of employees belonging to department 10.
```sql
SELECT COUNT(*) FROM employees WHERE dept_id = 10;
```

### 61. Write a query to find the department ID that has the maximum number of employees.
```sql
SELECT dept_id FROM (
    SELECT dept_id, COUNT(*) as emp_count 
    FROM employees 
    GROUP BY dept_id 
    ORDER BY emp_count DESC
) WHERE rownum = 1;
```

### 62. Write a query to find employees who were hired in the current year.
```sql
SELECT * FROM employees 
WHERE hire_date >= TRUNC(SYSDATE, 'YYYY') 
  AND hire_date < ADD_MONTHS(TRUNC(SYSDATE, 'YYYY'), 12);
```

### 63. Write a query to display the manager name alongside each employee's name.
```sql
SELECT e.name AS Employee, m.name AS Manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.emp_id;
```

### 64. Write a query to find all employees who earn more than the average salary of the company.
```sql
SELECT * FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);
```

### 65. Write a query to find employees who earn more than the average salary of their respective departments.
```sql
SELECT * FROM employees e
WHERE salary > (
    SELECT AVG(salary) 
    FROM employees 
    WHERE dept_id = e.dept_id
);
-- Alternative analytical approach:
SELECT * FROM (
    SELECT e.*, AVG(salary) OVER (PARTITION BY dept_id) as dept_avg
    FROM employees e
) WHERE salary > dept_avg;
```

### 66. Write a query to find departments that have no employees working in them.
```sql
-- Using NOT EXISTS:
SELECT d.* FROM departments d
WHERE NOT EXISTS (
    SELECT 1 FROM employees e WHERE e.dept_id = d.dept_id
);
```

### 67. How do you find the second lowest salary in a table?
```sql
SELECT MIN(salary) FROM employees 
WHERE salary > (SELECT MIN(salary) FROM employees);
```

### 68. Write a query to fetch every alternate row (odd numbered rows) from a table.
```sql
SELECT * FROM (
    SELECT e.*, ROWNUM rnum FROM employees e
) WHERE MOD(rnum, 2) <> 0;
```

### 69. Write a query to fetch every alternate row (even numbered rows) from a table.
```sql
SELECT * FROM (
    SELECT e.*, ROWNUM rnum FROM employees e
) WHERE MOD(rnum, 2) = 0;
```

### 70. How do you replace all null values in a commission column with 0?
```sql
SELECT emp_id, name, NVL(commission, 0) AS commission FROM employees;
```

### 71. Write a query to find the length of the string 'Shaik Mahaboob Basha'.
```sql
SELECT LENGTH('Shaik Mahaboob Basha') FROM dual;
```

### 72. Write a query to get the first 3 characters of an employee's name.
```sql
SELECT SUBSTR(name, 1, 3) FROM employees;
```

### 73. Write a query to find the location of the letter 'M' in the name 'Shaik Mahaboob Basha'.
```sql
SELECT INSTR('Shaik Mahaboob Basha', 'M') FROM dual;
```

### 74. Create a query that combines `first_name` and `last_name` with a space using an operator.
```sql
SELECT first_name || ' ' || last_name AS full_name FROM employees;
```

### 75. Write a query to find the total salary expenses for each department.
```sql
SELECT dept_id, SUM(salary) AS total_expense 
FROM employees 
GROUP BY dept_id;
```

### 76. Write a query to display employee details ordered by department ID ascending and salary descending.
```sql
SELECT * FROM employees 
ORDER BY dept_id ASC, salary DESC;
```

### 77. Write a query to find the number of days an employee has been with the company.
```sql
SELECT emp_id, name, TRUNC(SYSDATE - hire_date) AS days_completed 
FROM employees;
```

### 78. Write a query to add 6 months to an employee's hire date.
```sql
SELECT name, ADD_MONTHS(hire_date, 6) AS review_date FROM employees;
```

### 79. Write a query to find the last day of the current month.
```sql
SELECT LAST_DAY(SYSDATE) FROM dual;
```

### 80. How do you extract the year value out of a date field?
```sql
SELECT EXTRACT(YEAR FROM hire_date) AS hire_year FROM employees;
```

### 81. Write a query to check if a table `EMP_TEMP` exists before creating it (Conditional Drop workaround).
```sql
DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM user_tables WHERE table_name = 'EMP_TEMP';
    IF v_count > 0 THEN
        EXECUTE IMMEDIATE 'DROP TABLE EMP_TEMP';
    END IF;
END;
/
```

### 82. Write a query to update salaries by giving a 10% raise to department 20 employees.
```sql
UPDATE employees 
SET salary = salary * 1.10 
WHERE dept_id = 20;
```

### 83. Write a query using `MERGE` to synchronize an `emp_source` staging table into the target `employees` table.
```sql
MERGE INTO employees t
USING emp_source s
ON (t.emp_id = s.emp_id)
WHEN MATCHED THEN
    UPDATE SET t.salary = s.salary, t.dept_id = s.dept_id
WHEN NOT MATCHED THEN
    INSERT (emp_id, name, salary, dept_id)
    VALUES (s.emp_id, s.name, s.salary, s.dept_id);
```

### 84. Write a query to find all employees whose salary falls between 30000 and 70000.
```sql
SELECT * FROM employees 
WHERE salary BETWEEN 30000 AND 70000;
```

### 85. How do you select rows where the employee's commission is not NULL?
```sql
SELECT * FROM employees 
WHERE commission IS NOT NULL;
```

### 86. Write a query to find the minimum, maximum, and average salary across the company.
```sql
SELECT MIN(salary) as min_sal, MAX(salary) as max_sal, AVG(salary) as avg_sal 
FROM employees;
```

### 87. Write a query to find the top 3 earning employees within each department using analytic functions.
```sql
SELECT * FROM (
    SELECT emp_id, name, salary, dept_id,
           DENSE_RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) as rank
    FROM employees
) WHERE rank <= 3;
```

### 88. How do you find the total number of characters in a table column without counting space paddings?
```sql
SELECT SUM(LENGTH(TRIM(name))) FROM employees;
```

### 89. Write a query to display a mask pattern for employee phone numbers (e.g., converting '1234567890' to '******7890').
```sql
SELECT emp_id, '******' || SUBSTR(phone_number, -4) AS masked_phone 
FROM employees;
```

### 90. Write a query to display rows from a table where the name contains exactly 5 characters.
```sql
SELECT * FROM employees 
WHERE LENGTH(name) = 5;
-- Alternative using wildcards:
SELECT * FROM employees 
WHERE name LIKE '_____';
```

### 91. Write a query to display the names of employees whose second letter is 'a'.
```sql
SELECT name FROM employees 
WHERE name LIKE '_a%';
```

### 92. Write a query to identify all tables owned by the current logged-in session user.
```sql
SELECT table_name FROM user_tables;
```

### 93. How can you find the structure/columns details of a table via SQL query?
```sql
SELECT column_name, data_type, data_length, nullable 
FROM user_tab_columns 
WHERE table_name = 'EMPLOYEES';
```

### 94. Write a query to find the number of months between an employee's hire date and today's date.
```sql
SELECT name, TRUNC(MONTHS_BETWEEN(SYSDATE, hire_date)) AS total_months_worked 
FROM employees;
```

### 95. Write a query to display employee data with a flag indicating if they earn above or below 50,000 using a CASE expression.
```sql
SELECT name, salary,
       CASE 
           WHEN salary >= 50000 THEN 'High Earner'
           ELSE 'Standard Earner'
       END AS salary_bracket
FROM employees;
```

### 96. Write a query to display records from the employees table where the row values are identical across all columns (Full row duplicate check).
```sql
SELECT emp_id, name, salary, dept_id, COUNT(*)
FROM employees
GROUP BY emp_id, name, salary, dept_id
HAVING COUNT(*) > 1;
```

### 97. Write a query to list the first word of an employee's full name string.
```sql
SELECT SUBSTR(name, 1, INSTR(name || ' ', ' ') - 1) AS first_word 
FROM employees;
```

### 98. How do you force a query to skip the default cost-based optimizer choices and execute a full table scan?
```sql
SELECT /*+ FULL(e) */ * 
FROM employees e;
```

### 99. Write a query to convert numerical IDs to words/characters by padding zeros (e.g., ID 458 to '00458').
```sql
SELECT TO_CHAR(emp_id, 'FM00000') AS padded_id FROM employees;
```

### 100. Write a query to determine which day of the week an employee was hired (e.g., Monday, Tuesday).
```sql
SELECT name, TO_CHAR(hire_date, 'Day') AS hire_day_name FROM employees;
