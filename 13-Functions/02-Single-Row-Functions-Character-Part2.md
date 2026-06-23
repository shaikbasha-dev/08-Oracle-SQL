# Character Functions (Continued)

---

## 7. SUBSTR()

### Definition

The `SUBSTR()` function is used to extract a part of a string from a specified position.

**Syntax:**

```sql
SUBSTR(string, start_position, length)
```

---

### Question

Write a query to display the substring of the string 'PRABHAKARAN' from 2nd position and extract 5 characters.

### Query

```sql id="prtbw8"
SELECT SUBSTR('PRABHAKARAN', 2, 5)
FROM dual;
```

### Output

| SUBSTR('PRABHAKARAN',2,5) |
| ------------------------- |
| RABHA                     |

---

### Question

Write a query to display the substring 'oha' from the string 'RajaRamMohanRoy'.

### Query

```sql id="g8xrwj"
SELECT SUBSTR('RajaRamMohanRoy', 9, 3)
FROM dual;
```

### Output

| SUBSTR('RAJARAMMOHANROY',9,3) |
| ----------------------------- |
| oha                           |

---

## 8. INSTR()

### Definition

The `INSTR()` function returns the position of a character or substring in a string.

**Syntax:**

```sql
INSTR(string, substring)
```

---

### Question

Write a query to display the position of the character 'a' in the string 'Pandey'.

### Query

```sql id="jlwmcq"
SELECT INSTR('Pandey','a')
FROM dual;
```

### Output

| INSTR('PANDEY','A') |
| ------------------- |
| 2                   |

---

### Question

Write a query to display the position of the character 'a' in all the first names.

### Query

```sql id="abv9g5"
SELECT INSTR(f_name,'a')
FROM emp;
```

### Output

| INSTR(F_NAME,'A') |
| ----------------- |
| 3                 |
| 3                 |
| 0                 |
| 0                 |
| 0                 |
| 3                 |
| 0                 |
| 2                 |
| 3                 |
| 5                 |
| 2                 |
| 3                 |
| 2                 |
| 2                 |
| 0                 |
| 2                 |
| 2                 |
| 2                 |
| 5                 |

---

### Question

Write a query to display the substring 'bha' from the f_name where f_name is 'Prabhakaran' using SUBSTR() and INSTR().

### Query

```sql id="ubj7sy"
SELECT SUBSTR(
       'Prabhakaran',
       INSTR('Prabhakaran','bha'),
       3)
FROM dual;
```

### Output

| SUBSTR('PRABHAKARAN',INSTR('PRABHAKARAN','BHA'),3) |
| -------------------------------------------------- |
| bha                                                |

---

## 9. TRIM()

### Definition

The `TRIM()` function removes characters from the beginning, end, or both sides of a string.

---

### Question

Write a query to trim the leading 'm' in the string 'malayalam'.

### Query

```sql id="5xb7sj"
SELECT TRIM(LEADING 'm' FROM 'malayalam')
FROM dual;
```

### Output

| TRIM(LEADING 'M' FROM 'MALAYALAM') |
| ---------------------------------- |
| alayalam                           |

---

### Question

Write a query to trim the trailing 'm' in the string 'malayalam'.

### Query

```sql id="ukpmtj"
SELECT TRIM(TRAILING 'm' FROM 'malayalam')
FROM dual;
```

### Output

| TRIM(TRAILING 'M' FROM 'MALAYALAM') |
| ----------------------------------- |
| malayala                            |

---

### Question

Write a query to trim both 'm' in the string 'malayalam'.

### Query

```sql id="skxtj2"
SELECT TRIM(BOTH 'm' FROM 'malayalam')
FROM dual;
```

### Output

| TRIM(BOTH 'M' FROM 'MALAYALAM') |
| ------------------------------- |
| alayala                         |

---

## 10. LPAD()

### Definition

The `LPAD()` function pads characters to the left side of a string.

---

### Question

Write a query to display the data 'Sharma' in the format '####Sharma'.

### Query

```sql id="wkh9vq"
SELECT LPAD('Sharma',10,'#')
FROM dual;
```

### Output

| LPAD('SHARMA',10,'#') |
| --------------------- |
| ####Sharma            |

---

## 11. RPAD()

### Definition

The `RPAD()` function pads characters to the right side of a string.

---

### Question

Write a query to display the data 'Sharma' in the format 'Sharma####'.

### Query

```sql id="rnxjql"
SELECT RPAD('Sharma',10,'#')
FROM dual;
```

### Output

| RPAD('SHARMA',10,'#') |
| --------------------- |
| Sharma####            |

---

### Question

Write a query to display the data 'Sharma' in the format 'Sharma#!#!'.

### Query

```sql id="w8x4bm"
SELECT RPAD('Sharma',10,'#!')
FROM dual;
```

### Output

| RPAD('SHARMA',10,'#!') |
| ---------------------- |
| Sharma#!#!             |
