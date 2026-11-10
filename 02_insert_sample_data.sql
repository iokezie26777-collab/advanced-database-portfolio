--
-- PostgreSQL database dump
--

\restrict Ve0rhYIfYSOj05J0c77XbjsJfVgPruvVhoALWxJU00xlcIvLLHTOPQUVCbKNWGa

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-10 15:34:12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5016 (class 0 OID 32769)
-- Dependencies: 220
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departments (department_id, department_name, department_code) FROM stdin;
1	Computer Science	CSC
2	Information Technology	IT
3	Business Administration	BUS
4	Mathematics	MTH
\.


--
-- TOC entry 5020 (class 0 OID 32805)
-- Dependencies: 224
-- Data for Name: lecturers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lecturers (lecturer_id, staff_number, first_name, last_name, email, department_id) FROM stdin;
1	BFU-STAFF-001	Samuel	Eze	samuel.eze@example.com	1
2	BFU-STAFF-002	Fatima	Yusuf	fatima.yusuf@example.com	2
3	BFU-STAFF-003	Chidi	Okeke	chidi.okeke@example.com	3
\.


--
-- TOC entry 5022 (class 0 OID 32826)
-- Dependencies: 226
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses (course_id, course_code, course_title, credit_units, department_id, lecturer_id) FROM stdin;
1	CSC301	Database Systems	3	1	1
2	CSC302	Data Structures	3	1	1
3	IT301	Network Administration	3	2	2
4	BUS301	Business Management	2	3	3
5	IT302	Information Systems	3	2	2
\.


--
-- TOC entry 5018 (class 0 OID 32782)
-- Dependencies: 222
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, matric_number, first_name, last_name, email, date_of_birth, admission_year, department_id) FROM stdin;
1	BFU2024001	John	Okafor	john.okafor@example.com	2003-05-12	2024	1
2	BFU2024002	Mary	Adeyemi	mary.adeyemi@example.com	2002-08-21	2024	2
3	BFU2024003	David	Ibrahim	david.ibrahim@example.com	2003-01-15	2024	1
4	BFU2023001	Grace	Nwosu	grace.nwosu@example.com	2002-11-30	2023	3
5	BFU2024004	Peter	Bello	peter.bello@example.com	2003-07-09	2024	2
\.


--
-- TOC entry 5024 (class 0 OID 32850)
-- Dependencies: 228
-- Data for Name: course_registrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.course_registrations (registration_id, student_id, course_id, academic_year, semester, registration_date) FROM stdin;
1	1	1	2026/2027	1	2026-11-01
2	1	2	2026/2027	1	2026-11-01
3	2	3	2026/2027	1	2026-11-01
4	2	5	2026/2027	1	2026-11-01
5	3	1	2026/2027	1	2026-11-01
6	3	2	2026/2027	1	2026-11-01
7	4	4	2026/2027	1	2026-11-01
8	5	3	2026/2027	1	2026-11-01
\.


--
-- TOC entry 5025 (class 0 OID 32875)
-- Dependencies: 229
-- Data for Name: results; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.results (registration_id, score, grade, remarks) FROM stdin;
1	85.00	A	Excellent
2	76.00	B	Very Good
3	68.00	C	Good
4	91.00	A	Excellent
5	79.00	B	Very Good
6	88.00	A	Excellent
7	72.00	B	Very Good
8	64.00	C	Good
\.


--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 227
-- Name: course_registrations_registration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.course_registrations_registration_id_seq', 8, true);


--
-- TOC entry 5032 (class 0 OID 0)
-- Dependencies: 225
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 6, true);


--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 219
-- Name: departments_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departments_department_id_seq', 5, true);


--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 223
-- Name: lecturers_lecturer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lecturers_lecturer_id_seq', 3, true);


--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 221
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 5, true);


-- Completed on 2026-11-10 15:34:13

--
-- PostgreSQL database dump complete
--

\unrestrict Ve0rhYIfYSOj05J0c77XbjsJfVgPruvVhoALWxJU00xlcIvLLHTOPQUVCbKNWGa

