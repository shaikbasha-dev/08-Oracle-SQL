# Keywords As Operators

## Definition

Keywords as Operators are special SQL keywords used to filter data based on specific conditions. Common keyword operators are:

* DISTINCT – Displays unique values.
* BETWEEN ... AND – Displays values within a specified range.
* IN – Displays values that match any value in a list.
* NOT IN – Excludes values present in a list.
* IS NULL – Displays rows having NULL values.
* IS NOT NULL – Displays rows having non-NULL values.

---

## 1. DISTINCT Keyword

### Definition

The **DISTINCT** keyword is used to display **only unique values** from a column by **removing duplicate values.**

| Question                                                           |
| ------------------------------------------------------------------ |
| Write a query to display unique department id from employee table. |

**Query**

```sql
select distinct dept_id from emp;
```

**Answer**

| DEPT_ID |
| ------- |
| 22      |
| 25      |
| 21      |
| 24      |
| 110     |
| 23      |

---

### Question

| Question                                      |
| --------------------------------------------- |
| Display the distinct salaries from employees. |

**Query**

```sql
select distinct salary from emp;
```

**Answer**

| SALARY |
| ------ |
| 28500  |
| 12000  |
| 29500  |
| 55000  |
| 45500  |
| 9500   |
| 18000  |
| 85000  |
| 45000  |
| 53000  |
| 39500  |
| 36000  |
| 25000  |
| 19500  |
| 46000  |
| 34000  |

---

## 2. BETWEEN Operator

### Definition

The **BETWEEN** operator is used to **retrieve values within a specified range.**

| Question                                                                                            |
| --------------------------------------------------------------------------------------------------- |
| Write a query to display the grade and low salary whose low salary is in the range of 2000 to 4000. |

**Query**

```sql
select grade, low_sal from j_grade where low_sal between 2000 and 4000;
```

**Answer**

| GRADE | LOW_SAL |
| ----- | ------- |
| A     | 2000    |

---

### Question

| Question                                                                                               |
| ------------------------------------------------------------------------------------------------------ |
| Write a query to display the details of employees whose commission percentage is the range 1.2 to 1.5. |

**Query**

```sql
select * from emp where commission_pct between 1.2 and 1.5;
```

**Answer**

| EMP_ID | F_NAME    | L_NAME   | JOB_ID     | SALARY | COMMISSION_PCT | DEPT_ID |
| ------ | --------- | -------- | ---------- | -----: | -------------: | ------: |
| 5      | John      | Williams | IT_PROG    |  18000 |            1.5 |      25 |
| 7      | Shashi    | Raj      | ST_MAN     |  85000 |            1.2 |      22 |
| 9      | Daniel    | King     | ST_CLERK   |  12000 |            1.2 |      23 |
| 10     | Adam      | Sam      | ST_CLERK   |  53000 |            1.2 |     110 |
| 11     | Meghana   | Devraj   | ST_CLERK   |  53000 |            1.2 |      24 |
| 16     | Mrudul    | Kumar    | AD_ASST    |  19500 |            1.2 |      23 |
| 17     | Pankaj    | Patel    | MD_MAN     |  39500 |            1.2 |      22 |
| 18     | Janardhan | Tohn     | MD_REP     |  29500 |            1.2 |      22 |
| 19     | Sardhar   | L        | AC_MGR     |  29500 |            1.2 |     110 |
| 20     | Jinnath   | Whala    | AC_ACCOUNT |   9500 |            1.2 |     110 |

---

### Question

| Question                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------- |
| Write a query to display department id and department name where location id is not in the range from 2400 to 2500. |

**Query**

```sql
select dept_id, dept_name from dept where loc_id not between 2400 and 2500;
```

**Answer**

| DEPT_ID | DEPT_NAME   |
| ------- | ----------- |
| 20      | Admin       |
| 21      | Marketing   |
| 22      | Shipping    |
| 25      | Executive   |
| 110     | Acc         |
| 190     | Contracting |
| 26      | Admin       |

---

### Question

| Question                                                                                                     |
| ------------------------------------------------------------------------------------------------------------ |
| Write a query to display the details from job grades where high salary is not in the range of 3000 to 55000. |

**Query**

```sql
select * from j_grade where high_sal not between 3000 and 55000;
```

**Answer**

| GRADE | LOW_SAL | HIGH_SAL |
| ----- | ------: | -------: |
| A     |    2000 |    60000 |
| H     |   35001 |    89000 |
| I     |   45001 |    99000 |
| J     |   55001 |   199000 |

---

## 3. IN Operator

### Definition

The **IN** operator is used to **compare a value with multiple values specified in a list.**

| Question                                                                           |
| ---------------------------------------------------------------------------------- |
| Write a query to display details of employees whose salary is 12000, 18000, 19000. |

**Query**

```sql
select * from emp where salary in(12000, 18000, 19000);
```

**Answer**

| EMP_ID | F_NAME  | L_NAME   | JOB_ID   | SALARY |
| ------ | ------- | -------- | -------- | -----: |
| 5      | John    | Williams | IT_PROG  |  18000 |
| 9      | Daniel  | King     | ST_CLERK |  12000 |
| 15     | Savitha | Singh    | SA_REP   |  12000 |

---

### Question

| Question                                                                                     |
| -------------------------------------------------------------------------------------------- |
| Write a query to display department id, department name whose location id is 2500,2700,2900. |

**Query**

```sql
select dept_id, dept_name from dept where loc_id in(2500, 2700, 2900);
```

**Answer**

| DEPT_ID | DEPT_NAME |
| ------- | --------- |
| 24      | Sales     |
| 110     | Acc       |
| 26      | Admin     |

---

## 4. NOT IN Operator

### Definition

The **NOT IN** operator is used to **exclude values specified in the list.**

| Question                                                                        |
| ------------------------------------------------------------------------------- |
| Write a query to display low salary and high salary whose grade is not A, B, C. |

**Query**

```sql
select low_sal,high_sal from j_grade where grade not in('A','B','C');
```

**Answer**

| LOW_SAL | HIGH_SAL |
| ------: | -------: |
|    1001 |    25000 |
|   25001 |    35000 |
|   35001 |    89000 |
|   45001 |    99000 |
|   55001 |   199000 |

---

## 5. IS NULL Operator

### Definition

The **IS NULL** operator is used to **display rows where a column contains NULL values.**

| Question                                                                          |
| --------------------------------------------------------------------------------- |
| Write a query to display the details of employees who do not take any commission. |

**Query**

```sql
select * from emp where commission_pct is null;
```

**Answer**

| EMP_ID | F_NAME      | L_NAME   | JOB_ID  | SALARY | COMMISSION_PCT | DEPT_ID |
| ------ | ----------- | -------- | ------- | -----: | -------------- | ------: |
| 1      | Akash       | Pandey   | AD_PRES |  34000 | NULL           |      21 |
| 2      | Prabhakaran | Ganeshan | AD_VP   |  45000 | NULL           |      22 |

---

## 6. IS NOT NULL Operator

### Definition

The **IS NOT NULL** operator is used to display **rows where a column contains values other than NULL.**

| Question                                                             |
| -------------------------------------------------------------------- |
| Write a query to display the details of employees who has a manager. |

**Query**

```sql
select * from emp where manager_id is not null;
```

**Answer**

| EMP_ID | F_NAME      | L_NAME   | JOB_ID   | SALARY | MANAGER_ID | DEPT_ID |
| ------ | ----------- | -------- | -------- | -----: | ---------: | ------: |
| 2      | Prabhakaran | Ganeshan | AD_VP    |  45000 |        100 |      22 |
| 3      | DEEP        | Nair     | AD_VP    |  55000 |        101 |      24 |
| 5      | John        | Williams | IT_PROG  |  18000 |        110 |      25 |
| 9      | Daniel      | King     | ST_CLERK |  12000 |        117 |      23 |
| 10     | Adam        | Sam      | ST_CLERK |  53000 |        196 |     110 |
| 11     | Meghana     | Devraj   | ST_CLERK |  53000 |        165 |      24 |
| 12     | Madavan     | Manish   | SA_MAN   |  25000 |        198 |      23 |
| 13     | Braven      | Bhupathi | SA_REP   |  45500 |        114 |      22 |
