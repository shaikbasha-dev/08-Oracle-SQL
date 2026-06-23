# JOINS

## Definition

A **JOIN** clause is used to combine records from two or more tables in a relational database based on a related column between them.

Joins are used whenever we want to fetch data from multiple tables.

---

## Types of Joins

| S.No | Join Type        |
| ---- | ---------------- |
| 1    | Inner Join       |
| 2    | Equi Join        |
| 3    | Natural Join     |
| 4    | Left Outer Join  |
| 5    | Right Outer Join |
| 6    | Full Outer Join  |
| 7    | Cross Join       |
| 8    | Cartesian Join   |
| 9    | Self Join        |

---

# INNER JOIN

## Definition

* Inner Join combines two or more tables based on a common column.
* It returns **only matching records** from both tables.
* It is also called **Simple Join**.

---

## Syntax

```sql id="6wxw98"
SELECT *
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
```

---

## Example

### Table1

| A | B |
| - | - |
| 1 | 2 |
| 3 | 4 |
| 5 | 6 |
| 7 | 8 |

### Table2

| B | C |
| - | - |
| 2 | 1 |
| 8 | 1 |
| 9 | 1 |

### Output

| A | B | B | C |
| - | - | - | - |
| 1 | 2 | 2 | 1 |
| 7 | 8 | 8 | 1 |

---

# EQUI JOIN

## Definition

* Equi Join is similar to Inner Join.
* The join condition is written in the **WHERE** clause using the equality operator (`=`).

---

## Syntax

```sql id="rmz4ln"
SELECT *
FROM table1, table2
WHERE table1.B = table2.B;
```

---

## Example

### Table1

| A | B |
| - | - |
| 1 | 2 |
| 3 | 4 |
| 5 | 6 |
| 7 | 8 |

### Table2

| B | C |
| - | - |
| 2 | 1 |
| 8 | 1 |
| 9 | 1 |

### Output

| A | B | B | C |
| - | - | - | - |
| 1 | 2 | 2 | 1 |
| 7 | 8 | 8 | 1 |

---

# NATURAL JOIN

## Definition

* Natural Join performs an Inner Join automatically based on columns having the same name.
* It removes duplicate columns from the result.
* The `ON` clause is not required.

---

## Syntax

```sql id="ehqg3a"
SELECT *
FROM table1
NATURAL JOIN table2;
```

---

## Example

### Table1

| A | B |
| - | - |
| 1 | 2 |
| 3 | 4 |
| 5 | 6 |
| 7 | 8 |

### Table2

| B | C |
| - | - |
| 2 | 1 |
| 8 | 1 |
| 9 | 1 |

### Inner Join Output

| A | B | B | C |
| - | - | - | - |
| 1 | 2 | 2 | 1 |
| 7 | 8 | 8 | 1 |

### Natural Join Output

| B | A | C |
| - | - | - |
| 2 | 1 | 1 |
| 8 | 7 | 1 |

---

# Practice Queries

## Question 1

### Question

Write a query to display all the details from table1 and table2 where the value of column B in table1 is equal to the value of column B in table2.

### Query

```sql id="1hjtbw"
SELECT *
FROM table1
INNER JOIN table2
ON table1.B = table2.B;
```

### Output

| A | B | B | C |
| - | - | - | - |
| 1 | 2 | 2 | 1 |
| 7 | 8 | 8 | 1 |

---

## Question 2

### Question

Write a query to display all the details from table1 and table2 using NATURAL JOIN.

### Query

```sql id="byv0ea"
SELECT *
FROM table1
NATURAL JOIN table2;
```

### Output

| B | A | C |
| - | - | - |
| 2 | 1 | 1 |
| 8 | 7 | 1 |

---

## Question 3

### Question

Write a query to display emp_id, employee name, salary and department name for all employees whose dept_id in EMP table is equal to dept_id in DEPT table using INNER JOIN.

### Query

```sql id="gz9m1h"
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
|    ... | ...         |    ... | ...       |

---

## Question 4

### Question

Give an example to perform Natural Join.

### Query

```sql id="38zvgv"
SELECT *
FROM emp
NATURAL JOIN dept;
```

### Output

| Result                                                                   |
| ------------------------------------------------------------------------ |
| Returns matching records by common columns and removes duplicate columns |
