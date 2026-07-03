# Introduction to Oracle SQL

## What is Data?

Data is a collection of **small volume of facts and figures** representing information.

### Examples

- Name
- Age
- Gender
- Phone Number
- Email ID

---

## What is a Database?

A Database is a collection of a **large volume of facts and figures** stored in an organized manner.

### Examples

- University Details
- Hospital Details
- Bank Details
- Employee Details

---

## Management of Facts and Figures

The main objectives of data management are:

- Store data permanently
- Retrieve data efficiently

---

## Data Management in Olden Days

In earlier days, information was stored manually using **ledgers.**

Managing large volumes of data manually was:

- Time consuming
- Difficult to maintain
- Difficult to retrieve quickly
- More prone to errors

---

## Data Management using Programming Languages

Programming languages such as:

- C
- Java

can store small amounts of data using variables.

Example:

```java
String name = "Basha";
int age = 23;
String gender = "Male";
String branch = "ECE";
int studentId = 458;
int percentage = 93;
```

### Limitation

Programming languages are effective for storing small amounts of data but become difficult when handling large volumes of information because:

- Every value requires a variable declaration
- Data types must be specified
- Initialization is required for each variable

---

## DBMS (Database Management System)

DBMS was introduced to manage **large amounts of data efficiently.**

DBMS stands for:

**D** – Data  
**B** – Base  
**M** – Management  
**S** – System

### Advantages of DBMS

- Stores large volumes of data
- Reduces redundancy
- Provides data security
- Supports efficient data retrieval
- Maintains data consistency

---

## Popular Databases

Some widely used database systems are:

1. Oracle
2. MySQL
3. Sybase
4. DB2

---

## History of Oracle

- In 1977, Larry Ellison, Bob Miner, and Ed Oates founded Software Development Laboratory (SDL).
- In 1979, SDL was renamed to Relational Software Inc. (RSI).
- In 1982, RSI became Oracle Systems Corporation (OSC).
- In 1995, OSC was renamed Oracle Corporation.

Today, it is popularly known as **Oracle**.

---

## Oracle Versions

| Version | Year |
|---------|------|
| Oracle 1 | 1978 |
| Oracle 2 | 1979 |
| Oracle 3 | 1983 |
| Oracle 4 | 1984 |
| Oracle 5 | 1985 |
| Oracle 6 | 1988 |
| Oracle 7 | 1992 |
| Oracle 8 | 1997 |
| Oracle 8i | 1999 |
| Oracle 9i | 2001 |
| Oracle 10g | 2004 |
| Oracle 11g | 2007 |
| Oracle 12c | 2013 |
| Oracle 18c | 2018 |
| Oracle 19c | 2019 |

---

## What is SQL?

SQL stands for **Structured Query Language**.

- Structured → Data is stored in tables.
- Query → Used to ask questions from the database.
- Language → Used to communicate with the database.

---

## History of SQL

- SQL was developed in **1970.**
- Invented by **Raymond Boyce and Donald Chamberlin.**
- SQL is also known as **SEQUEL** (Structured English Query Language).

---

## Structure of a Table

A table consists of:

### Rows

Rows are also called:

- Tuples
- Records

### Columns

Columns are also called:

- Attributes
- Fields

A table is also known as a **Relation**.

---

## Rules for Storing Data in a Database

1. Create a table.
2. Define columns with data types.
3. Insert records into the table.

---

## Creating a Table

### Syntax

```sql
CREATE TABLE table_name(
    column_name1 datatype,
    column_name2 datatype,
    column_name3 datatype
);
```

### Example

```sql
CREATE TABLE student(
    name VARCHAR2(16),
    age NUMBER,
    gender CHAR(6),
    branch VARCHAR2(16),
    id INT,
    marks INT
);
```

---

## Inserting Data into a Table

### Syntax

```sql
INSERT INTO table_name
VALUES(value1, value2, value3);
```


### Example

```sql
INSERT INTO student
VALUES(
'Shaik Mahaboob Basha',
23,
'Male',
'ECE',
458,
93
);
```

```sql
INSERT INTO table_name (column_name1, column_name2, column_name3) VALUES(value1, value2, value3);
```


### Example

```sql
INSERT INTO student (name, age)
VALUES(
'Shaik Mahaboob Basha',
23);
```

---

## Important Note

In SQL, every statement ends with a **semicolon (`;`).**

The semicolon indicates the **end of a SQL statement.**

---

## Repository Goal ⭐

This file provides the fundamental concepts of Oracle SQL including Data, Database, DBMS, Oracle History, SQL Basics, Table Structure, and Database Creation concepts for beginners and interview preparation.

Happy Learning and Keep Practicing SQL!
