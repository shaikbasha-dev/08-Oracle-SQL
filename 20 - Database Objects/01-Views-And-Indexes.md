# DATABASE OBJECTS

# 1. Views

## Definition

* Views are **virtual tables** created based on one or more original tables.
* A view does not store data physically; it stores only the SQL query.
* Views simplify complex queries and provide data independence.

### Advantages of Views

| S.No | Advantage                                                   |
| ---- | ----------------------------------------------------------- |
| 1    | Simplifies complex queries                                  |
| 2    | Provides data independence                                  |
| 3    | Improves security by restricting access to specific columns |
| 4    | Presents data in a customized format                        |

---

## Creating a View

### Syntax

```sql
CREATE VIEW view_name
AS
SQL_Query;
```

### Example

#### Question

Create a view named **dec** that displays first name, salary, and department id of employees belonging to department 22.

### Query

```sql
CREATE VIEW dec
AS
SELECT f_name,
       salary,
       dept_id
FROM emp
WHERE dept_id = 22;
```

### Output

| Result       |
| ------------ |
| View Created |

---

## Fetching Data from a View

### Syntax

```sql
SELECT *
FROM view_name;
```

### Example

#### Query

```sql
SELECT *
FROM dec;
```

### Output

| F_NAME      | SALARY | DEPT_ID |
| ----------- | -----: | ------: |
| Prabhakaran |  45000 |      22 |
| Shashi      |  85000 |      22 |
| Andy        |  28500 |      22 |
| Braven      |  45500 |      22 |
| Pankaj      |  39500 |      22 |
| Janardhan   |  29500 |      22 |

---

## Deleting a View

### Syntax

```sql
DROP VIEW view_name;
```

### Example

```sql
DROP VIEW dec;
```

### Output

| Result       |
| ------------ |
| View Dropped |

---

# 2. Index

## Definition

* Indexes are database objects used to speed up **SELECT** queries.
* An Index is a data structure that improves data retrieval performance.
* It reduces the time required to search records in a table.

---

## When to Create an Index

| Suitable                               | Not Suitable                     |
| -------------------------------------- | -------------------------------- |
| Large amount of data                   | Small amount of data             |
| Column used frequently in WHERE clause | Column rarely used in conditions |
| Table updated less frequently          | Table updated frequently         |

---

## Creating an Index

### Syntax

```sql
CREATE INDEX index_name
ON table_name(column_name);
```

### Example

#### Question

Create an index named **dec** on the `dept_id` column of EMP table.

### Query

```sql
CREATE INDEX dec
ON emp(dept_id);
```

### Output

| Result        |
| ------------- |
| Index Created |

---

## Deleting an Index

### Syntax

```sql
DROP INDEX index_name;
```

### Example

```sql
DROP INDEX dec;
```

### Output

| Result        |
| ------------- |
| Index Dropped |

---

# Summary

| Database Object | Purpose                       |
| --------------- | ----------------------------- |
| View            | Creates a virtual table       |
| Index           | Improves data retrieval speed |
