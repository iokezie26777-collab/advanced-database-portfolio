# portfolio-1-database-design
# Bright Future University – Student Management Database

## 1. Project Overview

This project focuses on the design and implementation of a relational database for **Bright Future University**, a simulated university institution.

The database is designed to manage academic information, including student records, departments, lecturers, courses, course registrations and examination results.

The project demonstrates practical application of relational database design, SQL, primary and foreign keys, database constraints and normalisation.

## 2. Case Study Description

Bright Future University requires a structured database system to organise and manage its academic records.

The database serves the following users:

- **Administrators:** Manage student, department and lecturer records.
- **Lecturers:** Access course information and academic results.
- **Students:** Have their course registration and academic result records maintained.

The major information stored includes student details, department information, lecturer records, course details, course registrations and examination results.

The database supports operations such as registering students for courses, maintaining academic records, associating lecturers with courses and recording examination scores.

## 3. Project Objectives

The objectives of this project are to:

- Design a relational database for a university environment.
- Identify entities and their relationships.
- Create tables using PostgreSQL.
- Define primary keys and foreign keys.
- Apply appropriate database constraints.
- Demonstrate database normalisation.
- Insert and manage sample academic records.
- Document the database design and implementation.

## 4. Technologies Used

- **PostgreSQL:** Relational database management system.
- **pgAdmin 4:** Database administration and development tool.
- **SQL:** Database definition and data management.
- **GitHub:** Project version control and documentation.

## 5. Database Information

**Database Name:** `bright_future_university`

The database contains six main tables:

| Table | Description |
|---|---|
| departments | Stores university department information. |
| students | Stores student records. |
| lecturers | Stores lecturer information. |
| courses | Stores available courses. |
| course_registrations | Stores student course registration records. |
| results | Stores students' academic results. |

## 6. Relational Database Design

The database uses relationships between the six tables to organise academic information and reduce unnecessary data duplication.

The main relationships include:

- Departments are associated with students, lecturers and courses.
- Students register for courses through the course_registrations table.
- Courses are associated with course registrations.
- Academic results are linked to student course registrations.

Primary keys uniquely identify records, while foreign keys establish relationships between related tables.

## 7. Keys and Constraints

The database implements the following database rules:

- **Primary Key (PK):** Uniquely identifies each record.
- **Foreign Key (FK):** Maintains relationships between tables.
- **NOT NULL:** Ensures required fields contain values.
- **UNIQUE:** Prevents duplicate values in specified columns.
- **CHECK:** Restricts values to valid conditions.

These constraints help maintain data accuracy and referential integrity.

## 8. Entity Relationship Diagram (ERD)

An Entity Relationship Diagram was created using the pgAdmin ERD Tool.

The diagram represents the six database tables, their attributes, primary keys, foreign keys and relationships.

The editable ERD project is included in this repository as:

`Bright_Future_university.pgerd`

## 9. Database Normalisation

The database design considers the first three normal forms:

- **First Normal Form (1NF):** Ensures that fields contain atomic values and that repeating groups are avoided.
- **Second Normal Form (2NF):** Ensures that non-key attributes depend on the whole candidate key.
- **Third Normal Form (3NF):** Ensures that non-key attributes do not depend transitively on candidate keys.

A separate document, `normalization.md`, provides the normalisation explanation for this project.

## 10. Project Files

| File | Purpose |
|---|---|
| `01_create_schema.sql` | Creates the database tables, keys and constraints. |
| `02_insert_sample_data.sql` | Contains sample database records. |
| `Bright_Future_university.pgerd` | Editable Entity Relationship Diagram project. |
| `normalization.md` | Explains database normalisation. |
| `README.md` | Provides project information and documentation. |

## 11. Database Setup

To recreate the database:

1. Install PostgreSQL and pgAdmin 4.
2. Create a database named `bright_future_university`.
3. Open the Query Tool in pgAdmin.
4. Execute `01_create_schema.sql` to create the six tables.
5. Restore the sample data using the supplied PostgreSQL data export with the `psql` utility.
6. Verify the tables and their records in pgAdmin.
7. Open the ERD project to inspect the database relationships.

**Note:** The sample data export uses PostgreSQL COPY commands and should be restored using a compatible PostgreSQL restoration method.

## 12. Conclusion

The Bright Future University Student Management Database demonstrates the design and implementation of a relational database for managing university academic information.

The project provides practical experience in database modelling, SQL implementation, relational relationships, constraints, data management and normalisation.

It forms the foundation for the subsequent portfolio activities in the MIT 8103 Advanced Database Systems course.
The resulting database provides a structured foundation for managing university academic information efficiently and reliably.
