# THE HAVING CLAUSE

## Definition

The **HAVING** clause was added to SQL because the **WHERE** clause cannot be used with aggregate functions.

The HAVING clause is used to filter groups created by the **GROUP BY** clause based on aggregate conditions.

### Difference Between WHERE and HAVING

| WHERE                          | HAVING                        |
| ------------------------------ | ----------------------------- |
| Filters rows before grouping   | Filters groups after grouping |
| Cannot use aggregate functions | Can use aggregate functions   |
| Executed before GROUP BY       | Executed after GROUP BY       |

---

## Order of Execution

```text id="mkx4gr"
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
```

---

## Question 1

### Question

Write a query to display department id and minimum salary of all employees whose department id is greater than 10 and having maximum salary greater than 30000 for each department. While displaying, sort the data in descending order with respect to department id.

### Query

```sql id="bph8w0"
SELECT dept_id,
       MIN(salary) AS min_salary
FROM emp
WHERE dept_id > 10
GROUP BY dept_id
HAVING MAX(salary) > 30000
ORDER BY dept_id DESC;
```

### Output

| DEPT_ID | MIN(SALARY) |
| ------: | ----------: |
|     110 |        9500 |
|      24 |       12000 |
|      23 |       12000 |
|      22 |       28500 |
|      21 |       34000 |

---

## Question 2

### Question

Write a query to display department id and minimum salary whose job id is 'ST_CLERK' or 'IT_PROG', having the sum of salary less than 25000. Group the result based on each department and display the result in descending order.

### Query

```sql id="q4tbz0"
SELECT dept_id,
       MIN(salary) AS min_salary
FROM emp
WHERE job_id IN ('ST_CLERK', 'IT_PROG')
GROUP BY dept_id
HAVING SUM(salary) < 25000
ORDER BY dept_id DESC;
```

### Output

| DEPT_ID | MIN(SALARY) |
| ------: | ----------: |
|      25 |       18000 |
|      23 |       12000 |

---

## Important Points

| Point               | Description                                     |
| ------------------- | ----------------------------------------------- |
| HAVING              | Used with GROUP BY                              |
| Aggregate Functions | MIN(), MAX(), SUM(), AVG(), COUNT() can be used |
| WHERE               | Filters rows before grouping                    |
| HAVING              | Filters groups after grouping                   |
| ORDER BY            | Can be used after HAVING                        |
