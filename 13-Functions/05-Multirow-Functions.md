# Multirow Functions (Aggregate Functions)

## Definition

Multirow Functions are also called:

* Aggregate Functions
* Group Functions

These functions accept one or more rows as input and return **a single result for the group of rows**.

### Types of Aggregate Functions

| S.No | Function |
| ---- | -------- |
| 1    | COUNT()  |
| 2    | SUM()    |
| 3    | MIN()    |
| 4    | MAX()    |
| 5    | AVG()    |

---

# 1. COUNT()

### Definition

The `COUNT()` function returns the total number of rows.

---

## Question

Write a query to display count of all the rows present in emp table.

### Query

```sql id="vjlwmq"
SELECT COUNT(*)
FROM emp;
```

### Output

| COUNT(*) |
| -------: |
|       19 |

---

## Question

Write a query to display the count of distinct salaries in emp table.

### Query

```sql id="6xy7sj"
SELECT COUNT(DISTINCT salary)
FROM emp;
```

### Output

| COUNT(DISTINCT SALARY) |
| ---------------------: |
|                     16 |

---

# 2. MIN()

### Definition

The `MIN()` function returns the smallest value.

---

## Question

Write a query to display the minimum salary from emp table.

### Query

```sql id="7uxcpm"
SELECT MIN(salary)
FROM emp;
```

### Output

| MIN(SALARY) |
| ----------: |
|        9500 |

---

## Question

Write a query to display the minimum salary excluding duplicates.

### Query

```sql id="v83zw0"
SELECT MIN(DISTINCT salary)
FROM emp;
```

### Output

| MIN(DISTINCT SALARY) |
| -------------------: |
|                 9500 |

---

## Question

Write a query to display the minimum hire date from emp table.

### Query

```sql id="zz7xkq"
SELECT MIN(hire_date)
FROM emp;
```

### Output

| MIN(HIRE_DATE) |
| -------------- |
| 16-APR-07      |

---

# 3. MAX()

### Definition

The `MAX()` function returns the largest value.

---

## Question

Write a query to display the maximum salary from emp table.

### Query

```sql id="h1w9dz"
SELECT MAX(salary)
FROM emp;
```

### Output

| MAX(SALARY) |
| ----------: |
|       85000 |

---

## Question

Write a query to display the maximum salary excluding duplicates.

### Query

```sql id="tqjq2j"
SELECT MAX(DISTINCT salary)
FROM emp;
```

### Output

| MAX(DISTINCT SALARY) |
| -------------------: |
|                85000 |

---

## Question

Write a query to display the maximum hire date from emp table.

### Query

```sql id="6q4ryv"
SELECT MAX(hire_date)
FROM emp;
```

### Output

| MAX(HIRE_DATE) |
| -------------- |
| 28-AUG-12      |

---

# 4. SUM()

### Definition

The `SUM()` function returns the total sum of numeric values.

---

## Question

Write a query to display the sum of all salaries from emp table.

### Query

```sql id="jlwmor"
SELECT SUM(salary)
FROM emp;
```

### Output

| SUM(SALARY) |
| ----------: |
|      675500 |

---

## Question

Write a query to display the sum of all salaries excluding duplicates.

### Query

```sql id="g38d3v"
SELECT SUM(DISTINCT salary)
FROM emp;
```

### Output

| SUM(DISTINCT SALARY) |
| -------------------: |
|               581000 |

---

# 5. AVG()

### Definition

The `AVG()` function returns the average of numeric values.

---

## Question

Write a query to display the average salary from emp table.

### Query

```sql id="3dgjpd"
SELECT AVG(salary)
FROM emp;
```

### Output

|                              AVG(SALARY) |
| ---------------------------------------: |
| 35552.6315789473684210526315789473684211 |

---

## Question

Write a query to display the average salary excluding duplicates.

### Query

```sql id="3q2x2u"
SELECT AVG(DISTINCT salary)
FROM emp;
```

### Output

| AVG(DISTINCT SALARY) |
| -------------------: |
|              36312.5 |

---

## Question

Write a query to display the hire date of the oldest employee in the emp table.

### Query

```sql id="gwk6rf"
SELECT MIN(hire_date)
FROM emp;
```

### Output

| MIN(HIRE_DATE) |
| -------------- |
| 16-APR-07      |

---

## Summary of Aggregate Functions

| Function | Purpose               |
| -------- | --------------------- |
| COUNT()  | Counts rows           |
| MIN()    | Returns minimum value |
| MAX()    | Returns maximum value |
| SUM()    | Returns total sum     |
| AVG()    | Returns average value |
