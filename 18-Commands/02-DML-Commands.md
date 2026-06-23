# DATA MANIPULATION LANGUAGE (DML)

## Definition

* DML stands for **Data Manipulation Language**.
* DML commands are used to manipulate the data stored in database tables.
* These commands operate on the **rows** of a table.
* The changes made by DML commands are **not permanent** until a COMMIT is issued.

---

## DML Commands

| S.No | Command | Purpose                    |
| ---- | ------- | -------------------------- |
| 1    | INSERT  | Adds new rows into a table |
| 2    | UPDATE  | Modifies existing rows     |
| 3    | DELETE  | Removes rows from a table  |

---

# 1. INSERT

## Definition

The **INSERT** command is used to insert records into a table.

---

### Syntax 1

```sql id="s1"
INSERT INTO table_name
VALUES(value1, value2, value3);
```

### Syntax 2

```sql id="s2"
INSERT INTO table_name(column1, column2)
VALUES(value1, value2);
```

---

### Question

Insert a record into the Bank table.

### Query

```sql id="q1"
INSERT INTO Bank
VALUES('State Bank', 'Hyderabad', 1);
```

### Output

| Result         |
| -------------- |
| 1 Row Inserted |

---

# 2. UPDATE

## Definition

The **UPDATE** command is used to modify the existing values in a table.

---

### Syntax

```sql id="s3"
UPDATE table_name
SET column_name = 'new_value'
WHERE condition;
```

---

### Question

Update Bank name from 'Axis Bank' to 'Bank of Baroda'.

### Query

```sql id="q2"
UPDATE Bank
SET Bname = 'Bank of Baroda'
WHERE Bname = 'Axis Bank';
```

### Output

| Result        |
| ------------- |
| 1 Row Updated |

---

# 3. DELETE

## Definition

The **DELETE** command is used to remove rows from a table.

* It can delete a specific row using a WHERE clause.
* It can delete all rows if WHERE is omitted.

---

### Syntax 1

```sql id="s4"
DELETE FROM table_name
WHERE condition;
```

### Syntax 2

```sql id="s5"
DELETE FROM table_name;
```

---

### Question

Delete the row where Bank name is 'State Bank'.

### Query

```sql id="q3"
DELETE FROM Bank
WHERE Bname = 'State Bank';
```

### Output

| Result        |
| ------------- |
| 1 Row Deleted |

---

### Question

Delete all rows from Bank table.

### Query

```sql id="q4"
DELETE FROM Bank;
```

### Output

| Result           |
| ---------------- |
| All Rows Deleted |

---

# Important Points

| Feature         | DML                    |
| --------------- | ---------------------- |
| Works On        | Rows                   |
| Permanent       | No                     |
| Requires COMMIT | Yes                    |
| Commands        | INSERT, UPDATE, DELETE |

---

# DML Summary

| Command | Description               |
| ------- | ------------------------- |
| INSERT  | Inserts new rows          |
| UPDATE  | Modifies existing rows    |
| DELETE  | Deletes rows from a table |
