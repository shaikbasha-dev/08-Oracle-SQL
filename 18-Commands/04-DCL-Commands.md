# DATA CONTROL LANGUAGE (DCL)

## Definition

* DCL stands for **Data Control Language**.
* DCL commands are used to control access to the data present in database tables.
* These commands provide or remove privileges from database users.

---

## DCL Commands

| S.No | Command | Purpose                       |
| ---- | ------- | ----------------------------- |
| 1    | GRANT   | Gives privileges to users     |
| 2    | REVOKE  | Removes privileges from users |

---

## Important Note

Before granting or revoking privileges, users must be created.

---

# Creating Users

### Syntax

```sql id="cu1"
CREATE USER user_name
IDENTIFIED BY password;
```

### Example

```sql id="cu2"
CREATE USER December
IDENTIFIED BY December;
```

### Output

| Result       |
| ------------ |
| User Created |

---

# Dropping Users

### Syntax

```sql id="du1"
DROP USER user_name;
```

### Example

```sql id="du2"
DROP USER December;
```

### Output

| Result       |
| ------------ |
| User Dropped |

---

# 1. GRANT

## Definition

The **GRANT** command is used to provide privileges on database objects to users.

---

### Syntax

```sql id="g1"
GRANT privilege
ON table_name
TO user_name;
```

---

### Question

Grant SELECT permission on EMP table to user December.

### Query

```sql id="g2"
GRANT SELECT
ON emp
TO December;
```

### Output

| Result          |
| --------------- |
| Grant Succeeded |

---

# 2. REVOKE

## Definition

The **REVOKE** command is used to remove previously granted privileges from users.

---

### Syntax

```sql id="r1"
REVOKE privilege
ON table_name
FROM user_name;
```

---

### Question

Remove SELECT permission on EMP table from user December.

### Query

```sql id="r2"
REVOKE SELECT
ON emp
FROM December;
```

### Output

| Result           |
| ---------------- |
| Revoke Succeeded |

---

# Complete Example

### Query

```sql id="ex1"
CREATE USER December
IDENTIFIED BY December;

GRANT SELECT
ON emp
TO December;

REVOKE SELECT
ON emp
FROM December;

DROP USER December;
```

### Output

| Statement   | Result            |
| ----------- | ----------------- |
| CREATE USER | User Created      |
| GRANT       | Privilege Granted |
| REVOKE      | Privilege Revoked |
| DROP USER   | User Dropped      |

---

# DCL Summary

| Command     | Description                    |
| ----------- | ------------------------------ |
| CREATE USER | Creates a database user        |
| DROP USER   | Deletes a database user        |
| GRANT       | Gives privileges to a user     |
| REVOKE      | Removes privileges from a user |
