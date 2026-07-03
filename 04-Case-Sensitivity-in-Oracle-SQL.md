# Case Sensitivity in Oracle SQL

## Core Case Sensitivity Rules

I. Commands and Keywords are not case sensitive.

II. Table name and Column name are not case sensitive.

III. Data types are not case sensitive.

IV. Data in the table are case sensitive.

V. Constraints are not case sensitive.

## Technical Explanations and Practical Examples

### I. Commands and Keywords are not case sensitive.

#### Commands in Oracle SQL

Commands are the main action words or verbs that start a SQL statement to instruct the database engine on what operation to perform.

* **List:** `SELECT`, `INSERT`, `UPDATE`, `DELETE`, `CREATE`, `DROP`, `ALTER`, `TRUNCATE`, `GRANT`, `REVOKE`, `COMMIT`, `ROLLBACK`.

#### Keywords in Oracle SQL

Keywords are reserved words that have a special structural meaning within a statement to help construct clauses or specify conditions.

* **List:** `FROM`, `WHERE`, `AND`, `OR`, `NOT`, `IN`, `LIKE`, `BETWEEN`, `IS`, `NULL`, `INTO`, `VALUES`, `TABLE`, `AS`, `ORDER`, `BY`, `GROUP`, `HAVING`.

#### Examples
* **Example (UPPERCASE):**
  ```sql
  SELECT * FROM student WHERE age = 23;

  ```

* **Example (lowercase):**
```sql
select * from student where age = 23;

```


* **Example (Mixed Case):**
```sql
SeLeCt * FrOm student WhErE age = 23;

```


*All three options run exactly the same way on the server.*

---

### II. Table name and Column name are not case sensitive.

#### Table Names in Oracle SQL

The names given to database tables when they are created.

* **List:** `student`, `employee`, `dept`, `orders`, `products`.

#### Column Names in Oracle SQL

The identifiers assigned to individual vertical fields inside a table.

* **List:** `name`, `age`, `gender`, `marks`, `id`, `salary`.

#### Examples

* **Example (lowercase references):**
```sql
SELECT name, age FROM student;

```


* **Example (UPPERCASE references):**
```sql
SELECT NAME, AGE FROM STUDENT;

```


* **Example (Mixed Case references):**
```sql
SELECT NaMe, AgE FROM StUdEnT;

```



---

### III. Data types are not case sensitive.

#### Data Types in Oracle SQL

The structural data format classifications assigned to columns during table definitions.

* **List:** `CHAR`, `VARCHAR2`, `NUMBER`, `DATE`, `INT`, `FLOAT`.

#### Examples

* **Example (lowercase Data Types):**
```sql
CREATE TABLE demo_one (
    username varchar2(20),
    user_id int
);

```


* **Example (UPPERCASE Data Types):**
```sql
CREATE TABLE demo_two (
    username VARCHAR2(20),
    user_id INT
);

```



---

### IV. Data in the table are case sensitive.

#### Data in Oracle SQL

The literal alphanumeric text values saved inside individual row cells.

* **List:** `'Basha'`, `'Male'`, `'ECE'`, `'Apple'`, `'Cat'`.

#### Examples

* **Baseline Data Present in Table:**
| NAME | AGE | GENDER |
| --- | --- | --- |
| Cat | 23 | Male |


* **Example Query A (Exact Match):**
```sql
SELECT * FROM student WHERE gender = 'Male';

```


*Result:* **Returns Row.** (Matches literal table data)

* **Example Query B (Mismatched Case):**
```sql
SELECT * FROM student WHERE gender = 'male';

```


*Result:* **no data found** (lowercase 'm' does not match uppercase 'M')

* **Example Query C (Mismatched Case):**
```sql
SELECT * FROM student WHERE gender = 'MALE';

```


*Result:* **no data found**

---

### V. Constraints are not case sensitive.

#### Constraints in Oracle SQL

The validation rules or integrity checks applied to columns to restrict what kind of data can be entered.

* **List:** `PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `CHECK`, `FOREIGN KEY`, `DEFAULT`.

#### Examples

* **Example (lowercase Constraints):**
```sql
CREATE TABLE verification_one (
    id INT primary key
);

```


* **Example (UPPERCASE Constraints):**
```sql
CREATE TABLE verification_two (
    id INT PRIMARY KEY
);

```

