# Constraints in Oracle SQL

Constraints are the rules or restrictions which are implemented on particular column of the table. Constraints will standardize the table and helps in achieving business rules, clients requirements.

## Types of Constraints
1. Unique
2. Not null
3. Primary key
4. Foreign key
5. Default
6. Check

---

## 1. Unique

**Unique** constraint ensures that the particular column on which it is implemented **cannot have duplicate values but can have null values.**

### Syntax
```sql
CREATE TABLE student (
    id INT UNIQUE, 
    name VARCHAR2(54), 
    age INT, 
    institute VARCHAR2(64)
);

```

### Example Table Simulation

| ID (UNIQUE) | NAME | AGE | INSTITUTE | STATUS |
| --- | --- | --- | --- | --- |
| 101 | 'Basha' | 23 | 'KodNest' | **Accepted** |
| 102 | 'Tom' | 24 | 'KodNest' | **Accepted** |
| `NULL` | 'Jerry' | 22 | 'KodNest' | **Accepted** (Allows Null) |
| 101 | 'Sam' | 25 | 'KodNest' | **Rejected** (Duplicate ID 101) |

> **Important Mathematical Properties of NULL in SQL:**
> * $\text{Null} \neq \text{Null}$
> * $\text{Null} \neq 0$
> * $\text{Null} + 5 = \text{Null}$ (Where $+$ acts as an Arithmetic operator)

---

## 2. Not Null

**Not null** constraint ensures that particular column on which it is applied or implemented **cannot have null values but can have duplicates.**

### Syntax

```sql
CREATE TABLE student (
    id INT NOT NULL, 
    name VARCHAR2(67), 
    age INT, 
    institute VARCHAR2(56)
);

```

### Example Table Simulation

| ID (NOT NULL) | NAME | AGE | INSTITUTE | STATUS |
| --- | --- | --- | --- | --- |
| 101 | 'Basha' | 23 | 'KodNest' | **Accepted** |
| 101 | 'Tom' | 24 | 'KodNest' | **Accepted** (Allows Duplicate) |
| `NULL` | 'Jerry' | 22 | 'KodNest' | **Rejected** (Null value not allowed) |

---

## 3. Primary Key

* Primary key is a combination of **Unique and Not null constraint.**
* Primary Key constraint ensures that the particular column on which is implemented **cannot have duplicate values and cannot have null values.**
* There can be only and one primary key for one table.
* Primary Key is the one which will help to identify each row uniqly in a table.
* A table with primary key is called **Parent Key.**

### Syntax

```sql
CREATE TABLE student (
    id INT, 
    name VARCHAR2(54) PRIMARY KEY, 
    age INT, 
    institute VARCHAR2(65)
);

```

### Example Table Simulation

| ID | NAME (PRIMARY KEY) | AGE | INSTITUTE | STATUS |
| --- | --- | --- | --- | --- |
| 101 | 'Basha' | 23 | 'KodNest' | **Accepted** |
| 102 | 'Tom' | 24 | 'KodNest' | **Accepted** |
| 103 | `NULL` | 22 | 'KodNest' | **Rejected** (Violates NOT NULL) |
| 104 | 'Basha' | 25 | 'KodNest' | **Rejected** (Violates UNIQUE) |

---

## 4. Foreign Key

* Foreign Key will always refer primary key column of another table for its identity.
* The concept of **RDBMS** is achieved by Foreign Key.
* RDBMS stands for **Relational Database Management System / Software.**
* Foreign Key column will always **accept both duplicate and null values.**
* Foreign Key constraint is also called as **“Referential Integrity Constraint”.**
* A table with Foreign Key is called **Child table.**

### Syntax

```sql
CREATE TABLE Department (
    did INT PRIMARY KEY, 
    dname VARCHAR2(54)
);

CREATE TABLE Employee (
    id INT PRIMARY KEY, 
    name VARCHAR2(87), 
    salary NUMBER, 
    did INT, 
    FOREIGN KEY(did) REFERENCES Department(did)
);

```

### Example Table Simulation

#### Parent Table: Department

| DID (PRIMARY KEY) | DNAME |
| --- | --- |
| 10 | 'HR' |
| 20 | 'IT' |

#### Child Table: Employee

| ID | NAME | SALARY | DID (FOREIGN KEY) | STATUS |
| --- | --- | --- | --- | --- |
| 1 | 'Alex' | 50000 | 10 | **Accepted** (Exists in Parent) |
| 2 | 'Alan' | 60000 | 20 | **Accepted** (Exists in Parent) |
| 3 | 'Ryan' | 55000 | 10 | **Accepted** (Allows Duplicates) |
| 4 | 'John' | 45000 | `NULL` | **Accepted** (Allows Nulls) |
| 5 | 'Jack' | 70000 | 99 | **Rejected** (99 does not exist in Parent DID) |

---

## 5. Check

**Check** constraint ensures that the values that are getting inserted into the particular column in which it is implemented **satisfies the given check condition.**

### Syntax

```sql
CREATE TABLE student (
    id INT, 
    name VARCHAR2(54), 
    age INT CHECK(age > 18), 
    institute VARCHAR2(54)
);

```

### Example Table Simulation

| ID | NAME | AGE (CHECK > 18) | INSTITUTE | STATUS |
| --- | --- | --- | --- | --- |
| 101 | 'Basha' | 23 | 'KodNest' | **Accepted** (23 > 18) |
| 102 | 'Tom' | 16 | 'KodNest' | **Rejected** (16 is not > 18) |

---

## 6. Default

**Default** Constraint ensures that when there is no value specified into the column on which it is implemented it well **take the default value mentioned.**

### Syntax

```sql
CREATE TABLE student (
    id INT, 
    name VARCHAR2(54), 
    age INT, 
    institute VARCHAR2(54) DEFAULT 'KodNest'
);

```

### Example Table Simulation

| ID | NAME | AGE | INSTITUTE (DEFAULT 'KodNest') | STATUS / RESULT |
| --- | --- | --- | --- | --- |
| 101 | 'Basha' | 23 | 'ABC Corp' | **Accepted** (Uses explicit value 'ABC Corp') |
| 102 | 'Tom' | 24 | *Not Provided* | **Accepted** (Automatically sets to 'KodNest') |

---

## Assignment Exercise

### Scenario Requirements

Write a query to create citizen table with the following columns present in it:

1. Id which should accept integers
2. Name, which should accept varchar2
3. Gender, which should accept varchar2
4. Address, which should accept varchar2
5. Phone_number, which should accept number
6. Age, which should accept integers

**Constraints to Implement:**

* Id should be unique and it should not be null (Primary Key).
* Name should not be null.
* If no value is entered to gender then by default it should be male.
* Before accepting the value to age, DBMS should check whether the value is greater than 18 or not.

### Solution Schema Query

```sql
CREATE TABLE citizen (
    id INT PRIMARY KEY,
    name VARCHAR2(65) NOT NULL,
    gender VARCHAR2(65) DEFAULT 'Male',
    address VARCHAR2(54),
    phone_number NUMBER,
    age INT CHECK(age > 18)
);
```
