# OUTER JOINS

## Definition

Outer Join is used to retrieve both **matching** and **non-matching** records from two tables.

Types of Outer Joins:

1. Left Outer Join
2. Right Outer Join
3. Full Outer Join

---

# 1. LEFT OUTER JOIN

## Definition

* Left Outer Join returns **all rows from the left table**.
* It returns only the matching rows from the right table.
* If there is no matching record in the right table, NULL values are displayed.

---

## Syntax

```sql id="a1u2lv"
SELECT *
FROM table1
LEFT OUTER JOIN table2
ON table1.B = table2.B;
```

OR

```sql id="k6cuxr"
SELECT *
FROM table1
LEFT JOIN table2
ON table1.B = table2.B;
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

| A | B | B    | C    |
| - | - | ---- | ---- |
| 1 | 2 | 2    | 1    |
| 3 | 4 | NULL | NULL |
| 5 | 6 | NULL | NULL |
| 7 | 8 | 8    | 1    |

---

## Practice Query

### Question

Display all the details from table1 and table2 using Left Outer Join.

### Query

```sql id="d0szef"
SELECT *
FROM table1
LEFT JOIN table2
ON table1.B = table2.B;
```

### Output

| A | B | B    | C    |
| - | - | ---- | ---- |
| 1 | 2 | 2    | 1    |
| 3 | 4 | NULL | NULL |
| 5 | 6 | NULL | NULL |
| 7 | 8 | 8    | 1    |

---

# 2. RIGHT OUTER JOIN

## Definition

* Right Outer Join returns **all rows from the right table**.
* It returns matching rows from the left table.
* Non-matching values from the left table are displayed as NULL.

---

## Syntax

```sql id="qcw71o"
SELECT *
FROM table1
RIGHT OUTER JOIN table2
ON table1.B = table2.B;
```

OR

```sql id="yo1d5a"
SELECT *
FROM table1
RIGHT JOIN table2
ON table1.B = table2.B;
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

| A    | B    | B | C |
| ---- | ---- | - | - |
| 1    | 2    | 2 | 1 |
| 7    | 8    | 8 | 1 |
| NULL | NULL | 9 | 1 |

---

## Practice Query

### Question

Write a query to display all the details from table1 and table2 using Right Outer Join.

### Query

```sql id="zn8mwq"
SELECT *
FROM table1
RIGHT JOIN table2
ON table1.B = table2.B;
```

### Output

| A    | B    | B | C |
| ---- | ---- | - | - |
| 1    | 2    | 2 | 1 |
| 7    | 8    | 8 | 1 |
| NULL | NULL | 9 | 1 |

---

# 3. FULL OUTER JOIN

## Definition

* Full Outer Join is a combination of Left Outer Join and Right Outer Join.
* It returns:

  * Matching records
  * Non-matching records from left table
  * Non-matching records from right table

---

## Syntax

```sql id="q5i0u8"
SELECT *
FROM table1
FULL OUTER JOIN table2
ON table1.B = table2.B;
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

| A    | B    | B    | C    |
| ---- | ---- | ---- | ---- |
| 1    | 2    | 2    | 1    |
| 3    | 4    | NULL | NULL |
| 5    | 6    | NULL | NULL |
| 7    | 8    | 8    | 1    |
| NULL | NULL | 9    | 1    |

---

## Practice Query

### Question

Write a query to display all the details from table1 and table2 using Full Outer Join.

### Query

```sql id="4w5iof"
SELECT *
FROM table1
FULL OUTER JOIN table2
ON table1.B = table2.B;
```

### Output

| A    | B    | B    | C    |
| ---- | ---- | ---- | ---- |
| 1    | 2    | 2    | 1    |
| 3    | 4    | NULL | NULL |
| 5    | 6    | NULL | NULL |
| 7    | 8    | 8    | 1    |
| NULL | NULL | 9    | 1    |

---

# EMP and DEPT Table Examples

### Question

Perform EMP table Left Outer Join with DEPT table.

### Query

```sql id="tv8rz0"
SELECT *
FROM emp
LEFT OUTER JOIN dept
ON emp.dept_id = dept.dept_id;
```

---

### Question

Perform EMP table Right Outer Join with DEPT table.

### Query

```sql id="6z8dbp"
SELECT *
FROM emp
RIGHT OUTER JOIN dept
ON emp.dept_id = dept.dept_id;
```

---

### Question

Perform EMP table Full Outer Join with DEPT table.

### Query

```sql id="j3j3r1"
SELECT *
FROM emp
FULL OUTER JOIN dept
ON emp.dept_id = dept.dept_id;
```

---

### Question

Insert the missing parts in the JOIN clause to join EMP and DEPT tables using dept_id.

### Query

```sql id="1qcvso"
SELECT *
FROM emp e
LEFT OUTER JOIN dept d
ON e.dept_id = d.dept_id;
```

---

### Question

Choose the correct JOIN clause to select all records from both tables where there is a match in both tables.

### Query

```sql id="e9d7br"
SELECT *
FROM emp e
INNER JOIN dept d
ON e.dept_id = d.dept_id;
```
