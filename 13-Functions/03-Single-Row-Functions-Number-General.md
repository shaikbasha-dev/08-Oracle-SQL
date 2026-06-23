# Single Row Functions - Number Functions and General Functions

---

# Number Functions

## 1. ROUND()

### Definition

The `ROUND()` function rounds a number to the specified decimal places.

**Syntax**

```sql
ROUND(number, decimal_places)
```

---

### Question

What would be the output of the following query?

### Query

```sql
SELECT ROUND(45.326, 2)
FROM dual;
```

### Output

| ROUND(45.326,2) |
| --------------: |
|           45.33 |

---

### Question

What would be the output of the following query?

### Query

```sql
SELECT ROUND(1234.356, 1)
FROM dual;
```

### Output

| ROUND(1234.356,1) |
| ----------------: |
|            1234.4 |

---

### Question

What would be the output of the following query?

### Query

```sql
SELECT ROUND(2678.345, -2)
FROM dual;
```

### Output

| ROUND(2678.345,-2) |
| -----------------: |
|               2700 |

---

### Question

What would be the output of the following query?

### Query

```sql
SELECT ROUND(123, -2)
FROM dual;
```

### Output

| ROUND(123,-2) |
| ------------: |
|           100 |

---

# 2. TRUNC()

### Definition

The `TRUNC()` function truncates the number without rounding.

**Syntax**

```sql
TRUNC(number, decimal_places)
```

---

### Question

What would be the output of the following query?

### Query

```sql
SELECT TRUNC(45.326, 2)
FROM dual;
```

### Output

| TRUNC(45.326,2) |
| --------------: |
|           45.32 |

---

### Question

What would be the output of the following query?

### Query

```sql
SELECT TRUNC(1234.356, 1)
FROM dual;
```

### Output

| TRUNC(1234.356,1) |
| ----------------: |
|            1234.3 |

---

### Question

What would be the output of the following query?

### Query

```sql
SELECT TRUNC(2678.345, -2)
FROM dual;
```

### Output

| TRUNC(2678.345,-2) |
| -----------------: |
|               2600 |

---

### Question

What would be the output of the following query?

### Query

```sql
SELECT TRUNC(123, -2)
FROM dual;
```

### Output

| TRUNC(123,-2) |
| ------------: |
|           100 |

---

# 3. MOD()

### Definition

The `MOD()` function returns the remainder after division.

**Syntax**

```sql
MOD(number1, number2)
```

---

### Question

What would be the output of the following query?

### Query

```sql
SELECT MOD(120, 2)
FROM dual;
```

### Output

| MOD(120,2) |
| ---------: |
|          0 |

---

# General Functions

## 4. NVL()

### Definition

The `NVL()` function replaces NULL with the specified value.

**Syntax**

```sql
NVL(expression, replacement_value)
```

---

### Question

Write a query to display commission_pct. If commission_pct is NULL replace it with 0.

### Query

```sql
SELECT NVL(commission_pct, 0)
FROM emp;
```

### Output

| NVL(COMMISSION_PCT,0) |
| --------------------: |
|                     0 |
|                     0 |
|                    .5 |
|                   .75 |
|                   1.5 |
|                   1.2 |
|                    .9 |
|                   1.2 |
|                   1.2 |
|                   1.2 |
|                    .3 |
|                    .2 |
|                    .2 |
|                   .15 |
|                   1.2 |
|                   1.2 |
|                   1.2 |
|                   1.2 |
|                   1.2 |

---

## 5. NVL2()

### Definition

The `NVL2()` function checks whether a value is NULL or NOT NULL.

* If NOT NULL → returns first value.
* If NULL → returns second value.

**Syntax**

```sql
NVL2(expression, value_if_not_null, value_if_null)
```

---

### Question

Write a query to display commission_pct. If commission_pct is NULL replace with 0 else replace with 5.

### Query

```sql
SELECT NVL2(commission_pct, 5, 0)
FROM emp;
```

### Output

| NVL2(COMMISSION_PCT,5,0) |
| -----------------------: |
|                        0 |
|                        0 |
|                        5 |
|                        5 |
|                        5 |
|                        5 |
|                        5 |
|                        5 |
|                        5 |
|                        5 |
|                        5 |
|                        5 |
|                        5 |
|                        5 |
|                        5 |
|                        5 |
|                        5 |
|                        5 |
|                        5 |

---

## 6. CASE Expression

### Definition

The CASE expression is used to implement conditional logic in SQL.

---

### Question

Write a query to display:

* f_name
* l_name
* length of f_name
* length of l_name

If length of f_name equals length of l_name display NULL, otherwise display length of f_name.

### Query

```sql
SELECT f_name,
       l_name,
       LENGTH(f_name),
       LENGTH(l_name),
       CASE
           WHEN LENGTH(f_name) = LENGTH(l_name)
           THEN NULL
           ELSE LENGTH(f_name)
       END
FROM emp;
```

### Output

| F_NAME      | L_NAME   | LENGTH(F_NAME) | LENGTH(L_NAME) | CASE RESULT |
| ----------- | -------- | -------------: | -------------: | ----------: |
| Akash       | Pandey   |              5 |              6 |           5 |
| Prabhakaran | Ganeshan |             11 |              8 |          11 |
| DEEP        | Nair     |              4 |              4 |        NULL |
| Ashwin      | K        |              6 |              1 |           6 |
| John        | Williams |              4 |              8 |           4 |
| Shashi      | Raj      |              6 |              3 |           6 |
| Andy        | J        |              4 |              1 |           4 |
| Daniel      | King     |              6 |              4 |           6 |
| Adam        | Sam      |              4 |              3 |           4 |
| Meghana     | Devraj   |              7 |              6 |           7 |
| Madavan     | Manish   |              7 |              6 |           7 |
| Braven      | Bhupathi |              6 |              8 |           6 |
| Mamatha     | T        |              7 |              1 |           7 |
| Savitha     | Singh    |              7 |              5 |           7 |
| Mrudul      | Kumar    |              6 |              5 |           6 |
| Pankaj      | Patel    |              6 |              5 |           6 |
| Janardhan   | Tohn     |              9 |              4 |           9 |
| Sardhar     | L        |              7 |              1 |           7 |
| Jinnath     | Whala    |              7 |              5 |           7 |
