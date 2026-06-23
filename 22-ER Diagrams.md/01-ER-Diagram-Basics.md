# ER DIAGRAM

## Definition

**ER Diagram (Entity Relationship Diagram)** is the diagrammatic representation of tables in a database and the relationships between them.

---

# 1. Entity

## Definition

Anything or object that exists in the real world is called an **Entity**.

### Types of Entity

1. Physical Entity
2. Conceptual Entity

---

## Physical Entity

If an entity exists physically in the real world, it is called a Physical Entity.

### Examples

* Pen
* Paper
* Camera

### Diagram

```text
+-----------+
|  STUDENT  |
+-----------+
```

---

## Conceptual Entity

If an entity exists conceptually in the real world, it is called a Conceptual Entity.

### Examples

* Internet
* Programming Languages

### Diagram

```text
+----------------------+
| Programming Language |
+----------------------+
```

---

# Entity Representation

Entity is represented using a **Rectangle**.

### Example

```text
+-----------+
|  STUDENT  |
+-----------+
```

---

# 2. Attribute

## Definition

The property that describes an entity is called an **Attribute**.

Attribute is represented using an **Ellipse**.

### Example

```text
           (ID)

             |
             |
      +-------------+
      |   STUDENT   |
      +-------------+
```

---

## Entity with Multiple Attributes

```text
               (ID)
                 |
                 |
      (MARKS) ---+--- (AGE)
                 |
          +-------------+
          |   STUDENT   |
          +-------------+
```

---

# Types of Attributes

## 1. Simple Attribute

Simple Attributes cannot be divided further.

### Example

```text
          (ADDRESS)
               |
      +-------------+
      |   STUDENT   |
      +-------------+
```

---

## 2. Composite Attribute

Composite Attributes can be divided into smaller parts.

### Example

```text
                (FIRST)
                    |
               (NAME)
              /     \
      (MIDDLE)       (LAST)

                 |
          +-------------+
          |   STUDENT   |
          +-------------+
```

---

## 3. Single Valued Attribute

These attributes contain only one value.

### Example

```text
          (ADDRESS)
               |
      +-------------+
      |   STUDENT   |
      +-------------+
```

---

## 4. Derived Attribute

Derived attributes are obtained from another attribute.

Represented by **Dotted Ellipse**.

### Example

```text
          (DOB)
             |
        . . . . . .
       ( AGE )
        . . . . . .
             |
      +-------------+
      |   STUDENT   |
      +-------------+
```

---

## 5. Multi Valued Attribute

A Multi-valued attribute can have more than one value.

Represented using **Double Ellipse**.

### Example

```text
        (( PHONE_NO ))
               |
      +-------------+
      |   STUDENT   |
      +-------------+
```

---

# Weak Entity

## Definition

* If an entity does not have its own key attribute, it is called a Weak Entity.
* Weak Entity depends on a Strong Entity.
* Represented using **Double Rectangle**.

### Diagram

```text
╔════════════╗
║ DEPENDENT  ║
╚════════════╝
       |
       |
+---------------+
|   EMPLOYEE    |
+---------------+
```

---

# Strong Entity

## Definition

* If an entity has its own key attribute, it is called a Strong Entity.
* Represented using a Single Rectangle.

### Diagram

```text
+---------------+
|   EMPLOYEE    |
+---------------+
```

---

# Relationship

## Definition

Association between two entities is called a Relationship.

Relationship is represented using a **Diamond Shape**.

### Diagram

```text
+---------+      ◇ HAVE ◇      +-----------+
| PERSON  |------------------- | PASSPORT  |
+---------+                    +-----------+
```

---

# Types of Relationships

## 1. One-to-One (1:1)

### Example

```text
+---------+      ◇ HAVE ◇      +-----------+
| PERSON  |------1 : 1-------- | PASSPORT  |
+---------+                    +-----------+
```

---

## 2. One-to-Many (1:M)

### Example

```text
+-----------+    ◇ HAS ◇     +-----------+
| DEPARTMENT|------1 : M-----| EMPLOYEE  |
+-----------+                +-----------+
```

Meaning:

* One Department can have many Employees.
* One Employee belongs to only one Department.

---

## 3. Many-to-One (M:1)

### Example

```text
+-----------+    ◇ WORKS ◇    +-----------+
| EMPLOYEE  |------M : 1------| DEPARTMENT|
+-----------+                 +-----------+
```

Meaning:

* Many Employees belong to one Department.

---

## 4. Many-to-Many (M:M)

### Example

```text
+-----------+   ◇ ENROLLS ◇   +-----------+
| STUDENT   |------M : M------| COURSE    |
+-----------+                 +-----------+
```

Meaning:

* One Student can enroll in many Courses.
* One Course can have many Students.

---

# Summary

| Concept                | Representation   |
| ---------------------- | ---------------- |
| Entity                 | Rectangle        |
| Weak Entity            | Double Rectangle |
| Attribute              | Ellipse          |
| Derived Attribute      | Dotted Ellipse   |
| Multi-valued Attribute | Double Ellipse   |
| Relationship           | Diamond          |
| One-to-One             | 1:1              |
| One-to-Many            | 1:M              |
| Many-to-One            | M:1              |
| Many-to-Many           | M:M              |
