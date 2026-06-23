# Practical SQL JOIN Queries

This file contains practical JOIN queries using **EMP** and **DEPT** tables.

---

## Question 1

### Question

Write a query to display the employee id, employee name, salary, and department name for all employees whose department id in the EMP table is equal to the department id in the DEPT table using INNER JOIN.

### Query

```sql
SELECT emp_id,
       f_name,
       salary,
       dept_name
FROM emp
INNER JOIN dept
ON emp.dept_id = dept.dept_id;
```

### Output

| EMP_ID | F_NAME      | SALARY | DEPT_NAME |
| -----: | ----------- | -----: | --------- |
|      1 | Akash       |  34000 | Marketing |
|      2 | Prabhakaran |  45000 | Shipping  |
|      3 | DEEP        |  55000 | Sales     |
|      4 | Ashwin      |  36000 | Acc       |
|      5 | John        |  18000 | Executive |
|      7 | Shashi      |  85000 | Shipping  |
|      8 | Andy        |  28500 | Shipping  |
|      9 | Daniel      |  12000 | Admin     |
|     10 | Adam        |  53000 | Acc       |
|     11 | Meghana     |  53000 | Sales     |
|    ... | ...         |    ... | ...       |

---

## Question 2

### Question

Give an example to perform NATURAL JOIN.

### Query

```sql
SELECT *
FROM emp
NATURAL JOIN dept;
```

### Output

| Result                                                                                                       |
| ------------------------------------------------------------------------------------------------------------ |
| Returns matching rows based on columns with the same name and removes duplicate columns from the result set. |

---

## Question 3

### Question

Perform EMP table CROSS JOIN with DEPT table.

### Query

```sql
SELECT *
FROM emp
CROSS JOIN dept;
```

### Output

| Result                                                |
| ----------------------------------------------------- |
| Returns the Cartesian Product of EMP and DEPT tables. |

---

## Question 4

### Question

Perform EMP table LEFT OUTER JOIN with DEPT table.

### Query

```sql
SELECT *
FROM emp
LEFT OUTER JOIN dept
ON emp.dept_id = dept.dept_id;
```

### Output

| Result                                                             |
| ------------------------------------------------------------------ |
| Returns all rows from EMP table and matching rows from DEPT table. |

---

## Question 5

### Question

Perform EMP table RIGHT OUTER JOIN with DEPT table.

### Query

```sql
SELECT *
FROM emp
RIGHT OUTER JOIN dept
ON emp.dept_id = dept.dept_id;
```

### Output

| Result                                                             |
| ------------------------------------------------------------------ |
| Returns all rows from DEPT table and matching rows from EMP table. |

---

## Question 6

### Question

Perform EMP table FULL OUTER JOIN with DEPT table.

### Query

```sql
SELECT *
FROM emp
FULL OUTER JOIN dept
ON emp.dept_id = dept.dept_id;
```

### Output

| Result                                                                |
| --------------------------------------------------------------------- |
| Returns matching and non-matching rows from both EMP and DEPT tables. |

---

# JOIN Interview Questions

## Question 7

### Question

Insert the missing parts in the JOIN clause to join the two tables EMP and DEPT using the dept_id field.

### Query

```sql
SELECT *
FROM emp e
LEFT OUTER JOIN dept d
ON e.dept_id = d.dept_id;
```

### Output

| Result                                                             |
| ------------------------------------------------------------------ |
| EMP and DEPT tables are joined using dept_id with LEFT OUTER JOIN. |

---

## Question 8

### Question

Choose the correct JOIN clause to select all records from the two tables where there is a match in both tables.

### Query

```sql
SELECT *
FROM emp e
INNER JOIN dept d
ON e.dept_id = d.dept_id;
```

### Output

| Result                                                  |
| ------------------------------------------------------- |
| Returns only matching records from EMP and DEPT tables. |

---

# Summary of Joins

| Join Type        | Returns                                                   |
| ---------------- | --------------------------------------------------------- |
| INNER JOIN       | Only matching rows                                        |
| NATURAL JOIN     | Matching rows with duplicate columns removed              |
| LEFT OUTER JOIN  | All rows from left table + matching rows from right table |
| RIGHT OUTER JOIN | All rows from right table + matching rows from left table |
| FULL OUTER JOIN  | Matching + non-matching rows from both tables             |
| CROSS JOIN       | Cartesian Product                                         |
| SELF JOIN        | Table joined with itself                                  |
