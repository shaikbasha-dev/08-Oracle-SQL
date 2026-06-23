# MISCELLANEOUS QUERIES

## Question 1

### Question

Get first names from EMP table after replacing character 'p' with '&'.

### Query

```sql
SELECT REPLACE(f_name, 'p', '&')
FROM emp;
```

### Output

| REPLACE(F_NAME,'P','&') |
| ----------------------- |
| Akash                   |
| Prabhakaran             |
| DEEP                    |
| Ashwin                  |
| John                    |
| Shashi                  |
| Andy                    |
| Daniel                  |
| Adam                    |
| Meghana                 |
| Madavan                 |
| Braven                  |
| Mamatha                 |
| Savitha                 |
| Mrudul                  |
| Pankaj                  |
| Janardhan               |
| Sardhar                 |
| Jinnath                 |

---

## Question 2

### Question

Select 35% of salary for Pandey, 35% of salary for Ganeshan and 15% of salary for all other employees.

### Query

```sql
SELECT CASE
           WHEN l_name = 'Pandey'
                THEN salary * 0.35
           WHEN l_name = 'Ganeshan'
                THEN salary * 0.35
           ELSE salary * 0.15
       END AS calculated_salary
FROM emp;
```

### Output

| CALCULATED_SALARY |
| ----------------: |
|             11900 |
|             15750 |
|              8250 |
|              5400 |
|              2700 |
|             12750 |
|              4275 |
|              1800 |
|              7950 |
|              7950 |
|              3750 |
|              6825 |
|              6900 |
|              1800 |
|              2925 |
|              5925 |
|              4425 |
|              4425 |
|              1425 |

---

## Question 3

### Question

Select Top 2 salaries from EMP table.

### Query

```sql
SELECT salary
FROM
(
    SELECT salary
    FROM emp
    ORDER BY salary DESC
)
WHERE ROWNUM < 3;
```

### Output

| SALARY |
| -----: |
|  85000 |
|  55000 |

---

## Question 4

### Question

Select the 2nd highest salary from EMP table.

### Query

```sql
SELECT MIN(salary)
FROM
(
    SELECT DISTINCT salary
    FROM emp
    ORDER BY salary DESC
)
WHERE ROWNUM <= 2;
```

### Output

| MIN(SALARY) |
| ----------: |
|       55000 |

---

## Question 5

### Question

If there are two tables Employee1 and Employee2, and both have common records, how can I fetch all the records but common records only once?

### Query

```sql
SELECT *
FROM employee1

UNION

SELECT *
FROM employee2;
```

### Output

| Result                                                                            |
| --------------------------------------------------------------------------------- |
| Returns all records from both tables and removes duplicate records automatically. |

---

## Question 6

### Question

How to fetch only common records from two tables Employee1 and Employee2?

### Query

```sql
SELECT *
FROM employee1

INTERSECT

SELECT *
FROM employee2;
```

### Output

| Result                                                                           |
| -------------------------------------------------------------------------------- |
| Returns only the records that are common in both Employee1 and Employee2 tables. |

---

## Question 7

### Question

How can I retrieve all records of Employee1 that are not present in Employee2?

### Query

```sql
SELECT *
FROM employee1

MINUS

SELECT *
FROM employee2;
```

### Output

| Result                                                                 |
| ---------------------------------------------------------------------- |
| Returns records that exist in Employee1 but do not exist in Employee2. |

---

# Summary of Set Operators

| Operator  | Description                                                     |
| --------- | --------------------------------------------------------------- |
| UNION     | Combines records and removes duplicates                         |
| INTERSECT | Returns only common records                                     |
| MINUS     | Returns records from first table excluding second table records |
