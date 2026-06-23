# Dual Table and Complex Concatenations

## The DUAL Table

The DUAL table is a special one-row, one-column table present by default in Oracle and other database installations. In Oracle, the table has a single `VARCHAR2(1)` column called `DUMMY` that has a value of `X`.

> **Note 1:** If the query `DESC dual;` is executed, then following will be the output:

| Table | Column | Data Type | Length | Precision | Scale | Primary Key | Nullable | Default | Comment |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| DUAL | DUMMY | VarChar2 | 1 | - | - | - | Yes | - | - |

> **Note 2:** If the query `SELECT * FROM dual;` is executed, then following will be the output:

| DUMMY |
| :--- |
| X |

> **Note 3:** Selecting from the DUAL table is useful for computing a constant expression with the SELECT statement. Because DUAL has only one row, the constant is returned only once. Alternatively, you can select a constant, pseudo column, or expression from any table, but the value will be returned as many times as there are rows in the table.

---

## Practical Application Queries via DUAL

### Query 1
Write a query to concatenate 111 and 222 and display it as full number.

```sql
SELECT 111 || 222 AS "full number" FROM dual;

```

#### Output

| full number |
| --- |
| 111222 |

### Query 2

Write a query to concatenate Bond and 7777 and display it as movie character.

```sql
SELECT 'Bond' || 7777 AS "movie character" FROM dual;

```

#### Output

| movie character |
| --- |
| Bond7777 |

### Query 3

Write a query to concatenate bond with null and display the result.

```sql
SELECT 'bond' || NULL AS "result" FROM dual;

```

#### Output

| result |
| --- |
| bond |

---

## Dynamic Table String Concatenations

### Query 4

Write a query in order to display the following output by accessing the data from emp table.

```text
Salary Details
Akash works in department 21
Prabhakaran works in department 22
Andy works in department 22
...

```

```sql
SELECT f_name || ' works in department ' || dept_id AS "Salary Details" FROM emp;

```

#### Output

| Salary Details |
| --- |
| Akash works in department 21 |
| Prabhakaran works in department 22 |
| DEEP works in department 24 |
| Ashwin works in department 110 |
| John works in department 25 |
| Shashi works in department 22 |
| Andy works in department 22 |
| Daniel works in department 23 |
| Adam works in department 110 |
| Meghana works in department 24 |
| Madavan works in department 23 |
| Braven works in department 22 |
| Mamatha works in department 23 |
| Savitha works in department 24 |
| Mrudul works in department 23 |
| Pankaj works in department 22 |
| Janardhan works in department 22 |
| Sardhar works in department 110 |
| Jinnath works in department 110 |

```

