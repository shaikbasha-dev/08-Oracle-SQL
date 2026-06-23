# Operators in SQL

There are two types of operators in SQL:
1. Symbolic Operators
2. Keywords As Operators

---

## Symbolic Operators

### 1. Arithmetic Operators

Arithmetic operators are used to perform mathematical calculations on numeric columns or values within queries.

#### Precedence of Arithmetic Operators
When an expression contains multiple arithmetic operators, Oracle evaluates them according to fixed precedence levels:

| Operator | Precedence Level | Description |
| :---: | :---: | :--- |
| `*` | 1 | Multiplication |
| `/` | 2 | Division |
| `+` | 3 | Addition |
| `-` | 4 | Subtraction |

---

## Practical Application Queries

### Query 1
Write a query to display employee id, employee first name, employee last name and salary from emp table by increasing the salary of 1000rs.

```sql
SELECT emp_id, f_name, l_name, salary + 1000
FROM emp;

```

#### Output

| EMP_ID | F_NAME | L_NAME | SALARY+1000 |
| --- | --- | --- | --- |
| 1 | Akash | Pandey | 35000 |
| 2 | Prabhakaran | Ganeshan | 46000 |
| 3 | DEEP | Nair | 56000 |
| 4 | Ashwin | K | 37000 |
| 5 | John | Williams | 19000 |
| 7 | Shashi | Raj | 86000 |
| 8 | Andy | J | 29500 |
| 9 | Daniel | King | 13000 |
| 10 | Adam | Sam | 54000 |
| 11 | Meghana | Devraj | 54000 |
| 12 | Madavan | Manish | 26000 |
| 13 | Braven | Bhupathi | 46500 |
| 14 | Mamatha | T | 47000 |
| 15 | Savitha | Singh | 13000 |
| 16 | Mrudul | Kumar | 20500 |
| 17 | Pankaj | patel | 40500 |
| 18 | Janardhan | Tohn | 30500 |
| 19 | Sardhar | L | 30500 |
| 20 | Jinnath | Whala | 10500 |

### Query 2

Write a query to display employee id, email id, phone number and salary from the employee table by reducing the salary of 1000rs.

```sql
SELECT emp_id, email, phone_number, salary - 1000
FROM emp;

```

#### Output

| EMP_ID | EMAIL | PHONE_NUMBER | SALARY-1000 |
| --- | --- | --- | --- |
| 1 | akash@gmail.com | 9997766 | 33000 |
| 2 | pk@gmail.com | 77665522 | 44000 |
| 3 | deep@gmail.com | 876297 | 54000 |
| 4 | ash@gmail.com | 66554433 | 35000 |
| 5 | sfda@gmail.com | 7456465 | 17000 |
| 7 | Sac@gmail.com | 9575673 | 84000 |
| 8 | And@gmail.com | 8579452 | 27500 |
| 9 | sas@gmail.com | 5423424 | 11000 |
| 10 | adam@gmail.com | 325674 | 52000 |
| 11 | Meg@gmail.com | 3453424 | 52000 |
| 12 | mad@gmail.com | 4353213 | 24000 |
| 13 | Brav@gmail.com | 12342231 | 44500 |
| 14 | Mam@gmail.com | 53434334 | 45000 |
| 15 | savi@gmail.com | 3443333 | 11000 |
| 16 | mru@gmail.com | 322378445 | 18500 |
| 17 | pap@gmail.com | 322378445 | 38500 |
| 18 | Tohn@gmail.com | 322378445 | 28500 |
| 19 | Sar@gmail.com | 322378445 | 28500 |
| 20 | jinn@gmail.com | 322378445 | 8500 |

### Query 3

Write a query to display employee id, job id, department id and salary by giving hike of 10 percent.

```sql
SELECT emp_id, job_id, dept_id, salary + (salary * (10 / 100))
FROM emp;

```

#### Output

| EMP_ID | JOB_ID | DEPT_ID | SALARY+(SALARY*(10/100)) |
| --- | --- | --- | --- |
| 1 | AD_PRES | 21 | 37400 |
| 2 | AD_VP | 22 | 49500 |
| 3 | AD_VP | 24 | 60500 |
| 4 | IT_PROG | 110 | 39600 |
| 5 | IT_PROG | 25 | 19800 |
| 7 | ST_MAN | 22 | 93500 |
| 8 | ST_CLERK | 22 | 31350 |
| 9 | ST_CLERK | 23 | 13200 |
| 10 | ST_CLERK | 110 | 58300 |
| 11 | ST_CLERK | 24 | 58300 |
| 12 | SA_MAN | 23 | 27500 |
| 13 | SA_REP | 22 | 50050 |
| 14 | SA_REP | 23 | 50600 |
| 15 | SA_REP | 24 | 13200 |
| 16 | AD_ASST | 23 | 21450 |
| 17 | MD_MAN | 22 | 43450 |
| 18 | MD_REP | 22 | 32450 |
| 19 | AC_MGR | 110 | 32450 |
| 20 | AC_ACCOUNT | 110 | 10450 |

### Query 4

Write a query to display employee id, job id, department id and salary by reducing the salary of 20 percent.

```sql
SELECT emp_id, job_id, dept_id, salary - (salary * (20 / 100))
FROM emp;

```

#### Output

| EMP_ID | JOB_ID | DEPT_ID | SALARY-(SALARY*(20/100)) |
| --- | --- | --- | --- |
| 1 | AD_PRES | 21 | 27200 |
| 2 | AD_VP | 22 | 36000 |
| 3 | AD_VP | 24 | 44000 |
| 4 | IT_PROG | 110 | 28800 |
| 5 | IT_PROG | 25 | 14400 |
| 7 | ST_MAN | 22 | 68000 |
| 8 | ST_CLERK | 22 | 22800 |
| 9 | ST_CLERK | 23 | 9600 |
| 10 | ST_CLERK | 110 | 42400 |
| 11 | ST_CLERK | 24 | 42400 |
| 12 | SA_MAN | 23 | 20000 |
| 13 | SA_REP | 22 | 36400 |
| 14 | SA_REP | 23 | 36800 |
| 15 | SA_REP | 24 | 9600 |
| 16 | AD_ASST | 23 | 15600 |
| 17 | MD_MAN | 22 | 31600 |
| 18 | MD_REP | 22 | 23600 |
| 19 | AC_MGR | 110 | 23600 |
| 20 | AC_ACCOUNT | 110 | 7600 |

### Query 5

Write a query to display half yearly salary.

```sql
SELECT salary / 6
FROM emp;

```

#### Output

| SALARY/6 |
| --- |
| 5666.66666666666666666666666666666666667 |
| 7500 |
| 9166.66666666666666666666666666666666667 |
| 6000 |
| 3000 |
| 14166.6666666666666666666666666666666667 |
| 4750 |
| 2000 |
| 8833.33333333333333333333333333333333333 |
| 8833.33333333333333333333333333333333333 |
| 4166.66666666666666666666666666666666667 |
| 7583.33333333333333333333333333333333333 |
| 7666.66666666666666666666666666666666667 |
| 2000 |
| 3250 |
| 6583.33333333333333333333333333333333333 |
| 4916.66666666666666666666666666666666667 |
| 4916.66666666666666666666666666666666667 |
| 1583.33333333333333333333333333333333333 |

```
