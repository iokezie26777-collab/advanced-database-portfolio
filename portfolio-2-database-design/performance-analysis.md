
# Portfolio 2: Query Optimisation and Performance Analysis

## 1. Introduction

This portfolio demonstrates SQL querying and query performance analysis using the Bright Future University Student Management System database.

## 2. Query Execution Plan

PostgreSQL's EXPLAIN (ANALYZE, BUFFERS) command was used to examine how the database executes a query joining the students, course_registrations, courses and results tables.

## 3. Execution Plan Observations

The execution plan showed the following:

- PostgreSQL used Nested Loop joins to combine records from the four tables.
- An Index Scan used the students_matric_number_key index to locate a student by matriculation number.
- A Bitmap Index Scan used the uq_student_course_semester index to locate course registrations.
- The results_pkey and courses_pkey indexes were used to retrieve matching records.
- The query returned two rows.

## 4. Performance Measurements

The initial execution recorded:

- Planning Time: 1.552 ms
- Execution Time: 4.990 ms

A subsequent execution recorded:

- Planning Time: 0.901 ms
- Execution Time: 0.312 ms

Execution times can vary due to factors such as caching and database activity.

## 5. Index Analysis

The existing database indexes were examined using the PostgreSQL pg_indexes system view.

The database already contained primary-key and unique indexes on important columns, including student matriculation numbers, course codes and registration identifiers.

The execution plan confirmed that PostgreSQL used several of these indexes when processing the query.

No additional indexes were created during this analysis.

## 6. Conclusion

The execution plan demonstrated how PostgreSQL uses joins and existing indexes to retrieve related student academic records.

The analysis also showed that execution time can vary between runs. Reviewing execution plans and existing indexes helps identify opportunities for improving database query performance.
