# Logical Operators

## Definition

Logical Operators are used to combine multiple conditions in the WHERE clause of an SQL statement.

The commonly used logical operators are:

| Operator | Description                                         |
| -------- | --------------------------------------------------- |
| AND      | Returns records when all conditions are TRUE        |
| OR       | Returns records when at least one condition is TRUE |
| NOT      | Reverses the result of a condition                  |

---

# AND Operator

## Definition

The AND operator displays records only when all the specified conditions are satisfied.

---

## Question 1

### Question

Write a query to display details of employees whose salary is 12000 and job id is 'ST_CLERK'.

### Query

```sql
SELECT *
FROM emp
WHERE salary = 12000
  AND job_id = 'ST_CLERK';
```

### Output

| EMP_ID | F_NAME | L_NAME | JOB_ID   | SALARY | COMMISSION_PCT | MANAGER_ID | DEPT_ID |
| -----: | ------ | ------ | -------- | -----: | -------------: | ---------: | ------: |
|      9 | Daniel | King   | ST_CLERK |  12000 |            1.2 |        117 |      23 |

---

## Question 2

### Question

Write a query to display details of employees whose department id is 22 and manager id is 100.

### Query

```sql
SELECT *
FROM emp
WHERE dept_id = 22
  AND manager_id = 100;
```

### Output

| EMP_ID | F_NAME      | L_NAME   | JOB_ID | SALARY | COMMISSION_PCT | MANAGER_ID | DEPT_ID |
| -----: | ----------- | -------- | ------ | -----: | -------------: | ---------: | ------: |
|      2 | Prabhakaran | Ganeshan | AD_VP  |  45000 |           NULL |        100 |      22 |

---

# OR Operator

## Definition

The OR operator displays records when at least one of the specified conditions is TRUE.

---

## Question 3

### Question

Write a query to display the grade from the Job Grade table where grade is 'A' or high salary is greater than 80000.

### Query

```sql
SELECT grade
FROM j_grade
WHERE grade = 'A'
   OR high_sal > 80000;
```

### Output

| GRADE |
| ----- |
| A     |
| H     |
| I     |
| J     |

---

## Question 4

### Question

Write a query to display the details of employees whose job id is 'ST_CLERK' or the salary is less than 19000.

### Query

```sql
SELECT *
FROM emp
WHERE job_id = 'ST_CLERK'
   OR salary < 19000;
```

### Output

| EMP_ID | F_NAME  | L_NAME   | JOB_ID     | SALARY | DEPT_ID |
| -----: | ------- | -------- | ---------- | -----: | ------: |
|      5 | John    | Williams | IT_PROG    |  18000 |      25 |
|      8 | Andy    | J        | ST_CLERK   |  28500 |      22 |
|      9 | Daniel  | King     | ST_CLERK   |  12000 |      23 |
|     10 | Adam    | Sam      | ST_CLERK   |  53000 |     110 |
|     11 | Meghana | Devraj   | ST_CLERK   |  53000 |      24 |
|     15 | Savitha | Singh    | SA_REP     |  12000 |      24 |
|     20 | Jinnath | Whala    | AC_ACCOUNT |   9500 |     110 |

---

## Question 5

### Question

Write a query to display if an employee is President ('AD_PRES') or Sales Representative ('SA_REP') or if he earns more than 35000.

### Query

```sql
SELECT *
FROM emp
WHERE job_id = 'AD_PRES'
   OR job_id = 'SA_REP'
   OR salary > 35000;
```

### Output

| EMP_ID | F_NAME      | L_NAME   | JOB_ID   | SALARY | DEPT_ID |
| -----: | ----------- | -------- | -------- | -----: | ------: |
|      1 | Akash       | Pandey   | AD_PRES  |  34000 |      21 |
|      2 | Prabhakaran | Ganeshan | AD_VP    |  45000 |      22 |
|      3 | DEEP        | Nair     | AD_VP    |  55000 |      24 |
|      4 | Ashwin      | K        | IT_PROG  |  36000 |     110 |
|      7 | Shashi      | Raj      | ST_MAN   |  85000 |      22 |
|     10 | Adam        | Sam      | ST_CLERK |  53000 |     110 |
|     11 | Meghana     | Devraj   | ST_CLERK |  53000 |      24 |
|     13 | Braven      | Bhupathi | SA_REP   |  45500 |      22 |
|     14 | Mamatha     | T        | SA_REP   |  46000 |      23 |
|     15 | Savitha     | Singh    | SA_REP   |  12000 |      24 |
|     17 | Pankaj      | Patel    | MD_MAN   |  39500 |      22 |

---

## Question 6

### Question

Write a query to display the details of all employees who are President or Sales Representatives, but they must earn more than 25000.

### Query

```sql
SELECT *
FROM emp
WHERE (job_id = 'AD_PRES'
       OR job_id = 'SA_REP')
  AND salary > 25000;
```

### Output

| EMP_ID | F_NAME  | L_NAME   | JOB_ID  | SALARY | DEPT_ID |
| -----: | ------- | -------- | ------- | -----: | ------: |
|      1 | Akash   | Pandey   | AD_PRES |  34000 |      21 |
|     13 | Braven  | Bhupathi | SA_REP  |  45500 |      22 |
|     14 | Mamatha | T        | SA_REP  |  46000 |      23 |

---

# Operator Precedence

Operator precedence determines the order in which SQL evaluates logical operators.

| Operator | Priority |
| -------- | -------- |
| AND      | 1        |
| OR       | 2        |

**Note:** AND operator has higher precedence than OR operator. Parentheses `()` can be used to change the order of evaluation.
