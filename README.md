# portfolio-1-database-design
# Database Normalization – Bright Future University

## 1. Introduction

Database normalization is the process of organizing data into related tables to reduce data redundancy, prevent data anomalies, and improve data integrity.

The Bright Future University Student Management System was designed using PostgreSQL and organized into six related tables.

The database follows the principles of First Normal Form (1NF), Second Normal Form (2NF), and Third Normal Form (3NF).

## 2. First Normal Form (1NF)

A database table satisfies First Normal Form when:

- Each column contains atomic (single) values.
- Each record is unique.
- There are no repeating groups or multiple values stored in one column.

**Application to our database:**

Each of the six tables stores individual pieces of information in separate columns.

For example, the `students` table stores a student's first name and last name separately rather than combining multiple student details into one field.

The `course_registrations` table also stores each course registration as a separate record.

Therefore, the database satisfies the requirements of 1NF.

## 3. Second Normal Form (2NF)

A table satisfies Second Normal Form when:

- It is already in 1NF.
- Every non-key attribute depends on the whole candidate key.
- There are no partial dependencies.

**Application to our database:**

Most tables use single-column primary keys, including:

- `student_id` in the students table.
- `department_id` in the departments table.
- `lecturer_id` in the lecturers table.
- `course_id` in the courses table.
- `registration_id` in the course_registrations table.

The `course_registrations` table also has a unique constraint involving student, course, academic year, and semester to prevent duplicate registrations.

The attributes in the tables are associated with their respective keys rather than depending on only part of a composite key.

Therefore, the database satisfies 2NF.

## 4. Third Normal Form (3NF)

A table satisfies Third Normal Form when:

- It is already in 2NF.
- There are no transitive dependencies.
- Non-key attributes depend directly on the primary key.

**Application to our database:**

The database separates information into appropriate tables to avoid unnecessary duplication.

Examples include:

1. Department details are stored in the `departments` table rather than repeatedly entered in the students, lecturers, and courses tables.
2. Student information is maintained in the `students` table.
3. Lecturer information is maintained in the `lecturers` table.
4. Course information is maintained in the `courses` table.
5. Student course registrations are maintained in the `course_registrations` table.
6. Students' academic results are maintained in the `results` table.

Foreign keys connect these tables and maintain referential integrity.

This structure prevents unnecessary repetition of information and reduces update, insertion, and deletion anomalies.

Therefore, the database is designed to satisfy 3NF.

## 5. Benefits of Normalization

The normalization of the Bright Future University database provides the following benefits:

- Reduces data duplication.
- Improves data consistency.
- Prevents insertion, update, and deletion anomalies.
- Maintains referential integrity through primary and foreign keys.
- Makes database maintenance easier.
- Improves the organization of academic records.

## 6. Conclusion

The Bright Future University Student Management System uses a normalized relational database structure consisting of six interconnected tables.

The application of 1NF, 2NF, and 3NF principles helps ensure that student records, departments, lecturers, courses, registrations, and results are properly organized.

The resulting database provides a structured foundation for managing university academic information efficiently and reliably.
