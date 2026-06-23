# Retrieving the Data

## Concepts of Retrieval

1. **Selection:** Fetching data from the table by eliminating certain rows from it.
2. **Projection:** Fetching data from the table without eliminating any rows from the table.

---

## Sample Data Profile

### Student Table Reference 2
| NAME | AGE | GENDER | MARKS |
| :--- | :--- | :--- | :--- |
| Cat | 23 | Male | 93 |
| Rat | 24 | Female | 88 |
| Tiger | 26 | Female | 98 |
| Lion | 18 | male | 34 |

---

## Queries and Execution Results

### Query 1
Write a query to display name from the student table.

```sql
SELECT name FROM student;

```

#### Output

| NAME |
| --- |
| Cat |
| Rat |
| Tiger |
| Lion |

### Query 2

Write a query to display name, age, gender from the student table.

```sql
SELECT name, age, gender FROM student;

```

#### Output

| NAME | AGE | GENDER |
| --- | --- | --- |
| Cat | 23 | Male |
| Rat | 24 | Female |
| Tiger | 26 | Female |
| Lion | 18 | male |

### Query 3

Write a query to display all the data from student table.

```sql
SELECT * FROM student;

```

#### Output

| NAME | AGE | GENDER | MARKS |
| --- | --- | --- | --- |
| Cat | 23 | Male | 93 |
| Rat | 24 | Female | 88 |
| Tiger | 26 | Female | 98 |
| Lion | 18 | male | 34 |

### Query 4

Write a query to display name of student whose age is 22.

```sql
SELECT name FROM student WHERE age = 22;

```

#### Output

```text
no data found

```

### Query 5

Write a query to display details of the students whose gender is male.

```sql
SELECT * FROM student WHERE gender = 'Male';

```

#### Output

| NAME | AGE | GENDER | MARKS |
| --- | --- | --- | --- |
| Cat | 23 | Male | 93 |

### Query 6

Write a query to display details of students who scored greater than 60 marks.

```sql
SELECT * FROM student WHERE marks > 60;

```

#### Output

| NAME | AGE | GENDER | MARKS |
| --- | --- | --- | --- |
| Cat | 23 | Male | 93 |
| Rat | 24 | Female | 88 |
| Tiger | 26 | Female | 98 |

```
