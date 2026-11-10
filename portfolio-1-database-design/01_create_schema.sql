-- MIT 8103: Advanced Database Systems
-- Case Study: Bright Future University
-- Portfolio 1: Database Design and Modelling

-- 1. Departments
CREATE TABLE departments (
    department_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE,
    department_code VARCHAR(10) NOT NULL UNIQUE
);

-- 2. Students
CREATE TABLE students (
    student_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    matric_number VARCHAR(20) NOT NULL UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    date_of_birth DATE,
    admission_year INTEGER NOT NULL
        CHECK (admission_year BETWEEN 2000 AND 2100),
    department_id INTEGER NOT NULL,
    CONSTRAINT fk_student_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

-- 3. Lecturers
CREATE TABLE lecturers (
    lecturer_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    staff_number VARCHAR(20) NOT NULL UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    department_id INTEGER NOT NULL,
    CONSTRAINT fk_lecturer_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

-- 4. Courses
CREATE TABLE courses (
    course_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    course_code VARCHAR(15) NOT NULL UNIQUE,
    course_title VARCHAR(100) NOT NULL,
    credit_units INTEGER NOT NULL
        CHECK (credit_units BETWEEN 1 AND 10),
    department_id INTEGER NOT NULL,
    lecturer_id INTEGER,
    CONSTRAINT fk_course_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id),
    CONSTRAINT fk_course_lecturer
        FOREIGN KEY (lecturer_id)
        REFERENCES lecturers(lecturer_id)
);

-- 5. Course Registrations
CREATE TABLE course_registrations (
    registration_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    student_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    academic_year VARCHAR(9) NOT NULL,
    semester INTEGER NOT NULL CHECK (semester IN (1, 2)),
    registration_date DATE NOT NULL DEFAULT CURRENT_DATE,

    CONSTRAINT fk_registration_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    CONSTRAINT fk_registration_course
        FOREIGN KEY (course_id)
        REFERENCES courses(course_id),

    CONSTRAINT uq_student_course_semester
        UNIQUE (student_id, course_id, academic_year, semester)
);

-- 6. Examination Results
CREATE TABLE results (
    registration_id INTEGER PRIMARY KEY,
    score NUMERIC(5,2) NOT NULL CHECK (score BETWEEN 0 AND 100),
    grade VARCHAR(2) NOT NULL
        CHECK (grade IN ('A', 'B', 'C', 'D', 'E', 'F')),
    remarks VARCHAR(20) NOT NULL DEFAULT 'Recorded',

    CONSTRAINT fk_result_registration
        FOREIGN KEY (registration_id)
        REFERENCES course_registrations(registration_id)
);     










