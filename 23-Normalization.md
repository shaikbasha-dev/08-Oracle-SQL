# NORMALIZATION

## Definition

**Normalization** is the process of systematically decomposing (splitting) a table into smaller tables to overcome the following problems:

1. Spurious Tuples
2. Anomalies
3. Data Redundancy

---

# Objectives of Normalization

| S.No | Objective                 |
| ---- | ------------------------- |
| 1    | Eliminate Data Redundancy |
| 2    | Remove Anomalies          |
| 3    | Avoid Spurious Tuples     |
| 4    | Improve Data Consistency  |
| 5    | Improve Database Design   |

---

# 1. Spurious Tuples

## Definition

Spurious Tuples are tuples that are **not present in the original table**, but are generated when tables are decomposed and joined improperly.

---

## Original Table

### Table 1

| A  | B  |
| -- | -- |
| a1 | b1 |
| a2 | b2 |
| a3 | b3 |

---

## Original Relation

### Table 2

| A  | B  | C  |
| -- | -- | -- |
| a1 | b1 | c1 |
| a2 | b2 | c2 |
| a3 | b3 | c3 |

---

## Decomposed Table

### Table 4

| B  | C  |
| -- | -- |
| b1 | c1 |
| b2 | c1 |
| b2 | c2 |

---

## Spurious Result Table

### Table 3

| A  | B  | C  |
| -- | -- | -- |
| a1 | b1 | c1 |
| a2 | b2 | c1 |
| a2 | b2 | c2 |
| a3 | b2 | c1 |
| a3 | b2 | c2 |

---

## Cyclic Representation

```text
                 Table 2
              +-----------+
              |  A B C    |
              +-----------+
               /         \
              /           \
             /             \
      Table 1             Table 4
     +-------+           +-------+
     | A  B  |           | B  C  |
     +-------+           +-------+
             \             /
              \           /
               \         /
              +-----------+
              | Table 3   |
              | A B C     |
              +-----------+

Table 2 decomposes into Table 1 and Table 4.
Joining Table 1 and Table 4 creates Table 3,
which contains unwanted rows called Spurious Tuples.
```

---

# 2. Anomalies

## Definition

Anomalies are problems that occur in a table while performing DML operations such as:

* INSERT
* UPDATE
* DELETE

---

## Types of Anomalies

| S.No | Anomaly        |
| ---- | -------------- |
| 1    | Insert Anomaly |
| 2    | Update Anomaly |
| 3    | Delete Anomaly |

---

## Insert Anomaly

Occurs when certain information cannot be inserted into the table without inserting some other information.

### Example

You cannot insert a Department if no Employee exists in that department.

---

## Update Anomaly

Occurs when the same information is repeated in multiple rows and needs to be updated everywhere.

### Example

If Department Name changes:

```text
IT → Information Technology
```

You must update all rows containing IT.

---

## Delete Anomaly

Occurs when deleting one record unintentionally removes other important information.

### Example

Deleting the last employee of a department may remove department information completely.

---

# 3. Data Redundancy

## Definition

Repetition of the same data multiple times resulting in memory wastage is called **Data Redundancy**.

---

### Example

| EMP_ID | EMP_NAME | DEPT_NAME |
| ------ | -------- | --------- |
| 101    | Akash    | IT        |
| 102    | John     | IT        |
| 103    | Shashi   | IT        |

Here,

`IT` is repeated multiple times.

This repetition is called **Data Redundancy**.

---

# Determinant

## Definition

If one attribute determines the value of another attribute, then the first attribute is called a **Determinant**.

---

### Example

```text
EMP_ID → EMP_NAME
```

EMP_ID determines EMP_NAME.

Therefore,

**EMP_ID is the Determinant.**

---

# Functional Dependency

## Definition

If one attribute depends on another attribute, then it is called **Functional Dependency**.

---

### Example

```text
STUDENT_ID → STUDENT_NAME
```

Meaning:

For each STUDENT_ID there is exactly one STUDENT_NAME.

---

## More Examples

| Functional Dependency   |
| ----------------------- |
| EMP_ID → EMP_NAME       |
| EMP_ID → SALARY         |
| STUDENT_ID → NAME       |
| COURSE_ID → COURSE_NAME |

---

# Relationship Between Determinant and Functional Dependency

```text
Determinant
     |
     ↓
EMP_ID  ----------> EMP_NAME

EMP_NAME is Functionally Dependent on EMP_ID
EMP_ID is Determinant
```

---

# Summary

| Topic                 | Description                             |
| --------------------- | --------------------------------------- |
| Normalization         | Process of decomposing tables           |
| Spurious Tuples       | Unwanted tuples generated after join    |
| Insert Anomaly        | Unable to insert data independently     |
| Update Anomaly        | Multiple updates required               |
| Delete Anomaly        | Loss of important data                  |
| Data Redundancy       | Repetition of same data                 |
| Determinant           | Attribute determining another attribute |
| Functional Dependency | Dependency between attributes           |
