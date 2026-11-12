# Portfolio 4: NoSQL and Advanced Data Models

## 1. Introduction

This portfolio explores NoSQL database models using the Bright Future University Student Management System as the case study. It examines document, key-value, column-family and graph database models.

## 2. Document Database Model – MongoDB

MongoDB Atlas was used to implement a document-based database.

- Database: `BrightFutureDB`
- Collection: `students`
- Sample student: Grace Nwosu
- Matriculation number: BFU2023001

The student record contains an embedded `course_registrations` array with course information.

Two queries were tested:
1. Searching for a student using their matriculation number.
2. Searching inside the embedded course registrations using the course code `BUS301`.

**Suitability:** A document database is suitable for student records because it supports flexible documents and embedded information. Student details and course registrations can be retrieved together.

## 3. Key-Value Database Model

Example:

- Key: `BFU2023001`
- Value: Student session information, including name, session status and academic year.

**Suitability:** A key-value database is useful for quickly retrieving student sessions, preferences and cached information using unique identifiers.

## 4. Column-Family Database Model

Example: `StudentResults`

- Row key: `BFU2023001`
- Student name: Grace Nwosu
- Academic year: 2026/2027
- Course: BUS301
- Score: 72

**Suitability:** Column-family databases such as Apache Cassandra are useful for handling large volumes of academic records and queries organised around students, courses and academic years.

## 5. Graph Database Model

Example relationships:

- Grace Nwosu — ENROLLED_IN → BUS301
- BUS301 — TAUGHT_BY → Course Lecturer
- BUS301 — OFFERED_BY → Business Management Department

**Suitability:** A graph database such as Neo4j is useful for representing and exploring relationships between students, courses, lecturers and departments.

*Note: This graph is a conceptual example, not a live Neo4j implementation.*

## 6. Implementation Evidence

The MongoDB implementation is supported by screenshots showing the student document and query results.

The key-value and column-family models are documented as examples. They were not deployed as separate database systems.

## 7. Conclusion

The four NoSQL models provide different approaches to data storage and retrieval. MongoDB demonstrates the practical use of document databases, while key-value, column-family and graph models illustrate other ways of managing university information. The appropriate model depends on the structure of the data and the application's requirements.
