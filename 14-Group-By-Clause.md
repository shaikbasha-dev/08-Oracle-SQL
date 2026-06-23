# THE GROUP BY CLAUSE

## Definition

The SQL **GROUP BY** clause is used along with the **SELECT** statement to arrange identical data into groups.

The **GROUP BY** clause:

* Groups rows that have the same values in specified columns.
* Is generally used with aggregate functions such as:

  * COUNT()
  * SUM()
  * AVG()
  * MIN()
  * MAX()

### Order of Execution

```text
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
```

**Note:**

* The `GROUP BY` clause follows the `WHERE` clause.
* The `GROUP BY` clause precedes the `ORDER BY` clause.
* The `HAVING` clause is used to filter grouped records.

---

## Question 1

### Question

Write a query to display the department id and the least salary of each department.

### Query

```sql id="2xjlwm"
SELECT dept_id,
       MIN(salary) AS min_salary
FROM emp
GROUP BY dept_id;
```

### Output

| DEPT_ID | MIN(SALARY) |
| ------: | ----------: |
|      22 |       28500 |
|      25 |       18000 |
|      21 |       34000 |
|      24 |       12000 |
|     110 |        9500 |
|      23 |       12000 |

---

## Question 2

### Question

Display the department id and highest salary of each department for all departments whose department id is greater than 50.

### Query

```sql id="87cm9k"
SELECT dept_id,
       MAX(salary) AS max_salary
FROM emp
WHERE dept_id > 50
GROUP BY dept_id;
```

### Output

| DEPT_ID | MAX(SALARY) |
| ------: | ----------: |
|     110 |       53000 |

---

## Question 3

### Question

Write a query to display the department id and count of employees for all employees whose department id is equal to 90.

### Query

```sql id="2t9x0v"
SELECT dept_id,
       COUNT(dept_id) AS employee_count
FROM emp
WHERE dept_id = 90
GROUP BY dept_id;
```

### Output

| Result        |
| ------------- |
| No Data Found |

---

## Question 4

### Question

Write a query to display the department id and maximum salary of all employees whose maximum salary is greater than 30000.

### Query

```sql id="1frx7l"
SELECT dept_id,
       MAX(salary) AS max_salary
FROM emp
GROUP BY dept_id
HAVING MAX(salary) > 30000;
```

### Output

| DEPT_ID | MAX(SALARY) |
| ------: | ----------: |
|      22 |       85000 |
|      21 |       34000 |
|      24 |       55000 |
|     110 |       53000 |
|      23 |       46000 |
