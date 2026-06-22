# Retrieving Data in Oracle SQL

## Introduction

Retrieving data means fetching records from one or more tables stored in the database.

In Oracle SQL, the **SELECT** statement is used to retrieve data from tables.

---

## SELECT Statement

The SELECT statement is one of the most frequently used SQL commands.

### Syntax

```sql
SELECT column_name
FROM table_name;
```

---

## Retrieving All Columns

To retrieve all columns from a table, use:

```sql
SELECT * FROM table_name;
```

### Example

```sql
SELECT * FROM student;
```

This command displays all rows and all columns from the student table.

---

## Retrieving Specific Columns

You can retrieve only the required columns.

### Syntax

```sql
SELECT column1, column2
FROM table_name;
```

### Example

```sql
SELECT name, age
FROM student;
```

Output:

```text
Displays only name and age columns.
```

---

## Example Student Table

| Name | Age | Gender | Branch | ID | Marks |
|------|----:|--------|--------|----:|------:|
| Basha | 23 | Male | ECE | 458 | 93 |
| Ravi | 22 | Male | CSE | 459 | 89 |
| Sneha | 21 | Female | ECE | 460 | 95 |

---

## Retrieve Only Name Column

```sql
SELECT name
FROM student;
```

Output:

```text
Basha
Ravi
Sneha
```

---

## Retrieve Multiple Columns

```sql
SELECT name, branch, marks
FROM student;
```

Output:

```text
Name      Branch     Marks

Basha     ECE        93

Ravi      CSE        89

Sneha     ECE        95
```

---

## Using DISTINCT Keyword

DISTINCT removes duplicate values.

### Syntax

```sql
SELECT DISTINCT column_name
FROM table_name;
```

### Example

```sql
SELECT DISTINCT branch
FROM student;
```

Output:

```text
ECE

CSE
```

Duplicate ECE values are removed.

---

## Column Alias

Alias is a temporary name given to a column.

### Syntax

```sql
SELECT column_name AS alias_name
FROM table_name;
```

### Example

```sql
SELECT name AS Student_Name
FROM student;
```

Output:

```text
Student_Name

Basha

Ravi

Sneha
```

---

## Arithmetic Operations in SELECT

SQL allows arithmetic operations.

### Example

```sql
SELECT salary + 1000
FROM employee;
```

or

```sql
SELECT marks + 5
FROM student;
```

---

## Concatenation Operator

Oracle uses:

```sql
||
```

to join strings.

### Example

```sql
SELECT name || ' belongs to ' || branch
FROM student;
```

Output:

```text
Basha belongs to ECE

Ravi belongs to CSE
```

---

## Display Constant Values

You can display fixed values.

Example:

```sql
SELECT 'Welcome to Oracle SQL'
FROM dual;
```

Output:

```text
Welcome to Oracle SQL
```

---

## What is DUAL Table?

DUAL is a special dummy table provided by Oracle.

It contains:

```text
One Row

One Column
```

It is used to:

- Display constants
- Evaluate expressions
- Test functions

---

## Example

```sql
SELECT 10 + 20
FROM dual;
```

Output:

```text
30
```

---

## Retrieve Current Date

```sql
SELECT SYSDATE
FROM dual;
```

Output:

```text
Current System Date
```

---

## Important Points

- SELECT is used to retrieve data.
- * retrieves all columns.
- DISTINCT removes duplicate values.
- AS gives alias names.
- DUAL is a special Oracle table.
- Concatenation is done using `||`.

---

## Repository Goal 

This file provides complete notes on retrieving data using SELECT statements in Oracle SQL including SELECT *, DISTINCT, Aliases, Concatenation, DUAL table, and practical examples for beginners and interview preparation.

Happy Learning and Keep Practicing SQL!
