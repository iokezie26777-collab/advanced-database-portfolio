# Portfolio 2: SQL Query Optimisation and Performance Analysis

## 1. Introduction

This portfolio demonstrates SQL querying and query performance analysis using the Bright Future University Student Management System database developed in Portfolio 1.

The objective is to retrieve, analyse and present student academic information while examining how PostgreSQL executes SQL queries.

## 2. Database Queries

Eight SQL queries were developed to demonstrate different database operations, including:

- Retrieving student information and departments.
- Displaying student course registrations.
- Analysing student academic performance.
- Calculating average scores and student rankings.
- Analysing department performance.
- Analysing course performance.
- Identifying students scoring above the overall average.
- Generating comprehensive student academic reports.

## 3. Query Execution Plan

PostgreSQL's `EXPLAIN (ANALYZE, BUFFERS)` command was used to examine the execution plan of a query joining the students, course_registrations, courses and results tables.

The execution plan showed the use of Nested Loop joins, Index Scans and Bitmap Index Scans.

The query returned two records for the selected student.

## 4. Indexing and Performance Analysis

The existing database indexes were examined using PostgreSQL's `pg_indexes` system view.

The execution plan confirmed that PostgreSQL used existing indexes, including:

- `students_matric_number_key`
- `uq_student_course_semester`
- `results_pkey`
- `courses_pkey`

The initial execution recorded a planning time of 1.552 ms and an execution time of 4.990 ms. A subsequent execution recorded a planning time of 0.901 ms and an execution time of 0.312 ms.

Execution times may vary due to caching and other database activities.

## 5. Conclusion

This portfolio provided practical experience in SQL querying, data analysis, execution-plan interpretation and database indexing.

The exercise demonstrated how PostgreSQL uses execution plans and indexes to retrieve related records and how performance measurements can help assess query execution.

## 6. Evidence and Files

The portfolio includes:

- `sql-scripts/portfolio2_queries.sql` – SQL queries developed for the database.
- `performance-analysis.md` – Summary of execution-plan observations and performance analysis.
- `screenshots/` – Screenshots of query results, execution plans and existing indexes.
..
