CREATE TABLE Faculty(
faculty_id NUMBER(4,0) PRIMARY KEY,
faculty_name VARCHAR(100) NOT NULL,
dean VARCHAR(50),
location VARCHAR(60)

);

CREATE TABLE Department(
department_id NUMBER(4,0) PRIMARY KEY,
department_name VARCHAR (100),
head_of_department VARCHAR(60),
location VARCHAR(60),
faculty_id NUMBER(4,0) NOT NULL,
FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)

);


CREATE TABLE Student (
student_id NUMBER(8,0) PRIMARY KEY,
first_name VARCHAR(60) NOT NULL,
last_name VARCHAR(60) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
phone_number VARCHAR(25),
date_of_birth DATE,
id_number_or_passport VARCHAR(20) UNIQUE,
programme VARCHAR(100),
year_of_study NUMBER(1,0) CHECK (year_of_study BETWEEN 1 AND 5),
registration_status VARCHAR(25) DEFAULT 'Active' CHECK (registration_status IN ('Active', 'Graduated', 'Suspendent')), 
financial_hold CHAR(1) DEFAULT 'N' CHECK (financial_hold IN ('Y','N')),
registration_date Date DEFAULT SYSDATE,
faculty_id NUMBER(4,0) NOT NULL,
department_id NUMBER(4,0) NOT NULL,
aod_signed Char(1) DEFAULT 'N' CHECK (aod_signed IN ('Y','N')),
FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id),
FOREIGN KEY (department_id) REFERENCES Department(department_id)

);

CREATE TABLE Instructor(
instructor_id NUMBER(8,0) PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100),
phone_number VARCHAR(20),
office VARCHAR(20),
hire_date DATE,
department_id NUMBER(4,0) NOT NULL,
faculty_id NUMBER(4,0) NOT NULL,
FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id),
FOREIGN KEY (department_id) REFERENCES Department(department_id)

);


CREATE TABLE Course(
course_id NUMBER(4,0) PRIMARY KEY,
course_name VARCHAR(100) NOT NULL,
credits NUMBER(2,0) CHECK (credits > 0),
max_enrollment NUMBER(3,0) DEFAULT 30 CHECK (max_enrollment > 0),
current_enrollment NUMBER(3,0) DEFAULT 0,
semester VARCHAR(15),
academic_year NUMBER(4,0),
aps_required NUMBER(2,0),
faculty_id NUMBER(4,0) NOT NULL,
department_id NUMBER(4,0) NOT NULL,
instructor_id NUMBER(8,0) NOT NULL,
FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id),
FOREIGN KEY (department_id) REFERENCES Department(department_id),
FOREIGN KEY (instructor_id) REFERENCES Instructor(instructor_id)

);

CREATE TABLE Module(
module_id NUMBER(4,0) PRIMARY KEY,
module_name VARCHAR(100) NOT NULL,
credits NUMBER(2,0) CHECK (credits > 0),
module_level NUMBER(1,0) CHECK ( module_level BETWEEN 1 AND 5),
semester NUMBER(1,0) CHECK (semester IN (1,2)),
course_id NUMBER(4,0) NOT NULL,
instructor_id NUMBER(8,0) NOT NULL,
FOREIGN KEY (course_id) REFERENCES Course(course_id),
FOREIGN KEY (instructor_id) REFERENCES Instructor(instructor_id)

);

CREATE TABLE Venue(
venue_id NUMBER(3,0) PRIMARY KEY,
building VARCHAR(50) NOT NULL,
room VARCHAR(10) NOT NULL,
capacity NUMBER(3,0) CHECK (capacity > 0)

);

CREATE TABLE Schedule(
schedule_id NUMBER(3,0) PRIMARY KEY,
day_of_week VARCHAR(10) CHECK (day_of_week IN ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')),
start_time TIMESTAMP,
end_time TIMESTAMP,
course_id NUMBER(4,0) NOT NULL,
venue_id NUMBER(3,0) NOT NULL,
FOREIGN KEY (course_id) REFERENCES Course(course_id),
FOREIGN KEY (venue_id) REFERENCES Venue(venue_id)

);


CREATE TABLE Enrollment(
student_id NUMBER(8,0) NOT NULL,
course_id NUMBER(4,0) NOT NULL,
semester NUMBER(1,0) CHECK (semester IN (1,2)),
year NUMBER(4,0),
enrollment_date DATE DEFAULT SYSDATE,
grade NUMBER(5,2) CHECK (grade BETWEEN 0 AND 100),
status VARCHAR(25) DEFAULT 'Enrolled' CHECK (status IN ('Enrolled', 'Completed', 'Dropped')),
PRIMARY KEY (student_id, course_id, semester, year),
FOREIGN KEY (student_id) REFERENCES Student(student_id),
FOREIGN KEY (course_id) REFERENCES Course(course_id)

);

CREATE TABLE Waitlist(
student_id NUMBER(8,0) NOT NULL,
course_id NUMBER(4,0) NOT NULL,
waitlist_date DATE DEFAULT SYSDATE,
position NUMBER(3,0),
status VARCHAR(25) DEFAULT 'Waiting' CHECK (status IN ('Waiting', 'Enrolled', 'Payment waiting', 'Offered', 'Expired')),
notification_sent CHAR(1) DEFAULT 'N' CHECK (notification_sent IN ('Y', 'N')),
PRIMARY KEY (student_id, course_id),
FOREIGN KEY (student_id) REFERENCES Student(student_id),
FOREIGN KEY (course_id) REFERENCES Course(course_id)

);

CREATE TABLE Prerequisite(
course_id NUMBER(4,0) NOT NULL,
prerequisite_course_id NUMBER(4,0) NOT NULL,
PRIMARY KEY (course_id, prerequisite_course_id),
FOREIGN KEY (course_id) REFERENCES Course(course_id),
FOREIGN KEY (prerequisite_course_id) REFERENCES Course(course_id)

);

CREATE TABLE Payment (
payment_id NUMBER(4,0) PRIMARY KEY,
student_id NUMBER(8,0) NOT NULL,
amount NUMBER(10,2) CHECK (amount >= 0),
payment_date DATE DEFAULT SYSDATE,
payment_status VARCHAR(25) DEFAULT 'Pending' CHECK (payment_status IN ('Pending', 'Paid', 'NSFAS PAID', 'Bursary Paid', 'Unpaid')),
semester NUMBER(1,0) CHECK (semester IN (1,2)),
FOREIGN KEY (student_id) REFERENCES Student(student_id)


);

CREATE TABLE Registration_Hold(
hold_id NUMBER(4,0) PRIMARY KEY,
student_id NUMBER(8,0) NOT NULL,
hold_type VARCHAR(50) CHECK (hold_type IN ('Finances', 'Transfer', 'Criminal Record', 'International', 'Studies Terminated')),
resolved_date DATE,
FOREIGN KEY (student_id) REFERENCES Student(student_id)

);

SELECT table_name FROM user_tables ORDER BY table_name;

CREATE INDEX idx_student_faculty ON Student (faculty_id);
CREATE INDEX idx_student_department ON Student (department_id);
CREATE INDEX idx_student_email ON Student (email);
CREATE INDEX idx_course_faculty ON Course (faculty_id);
CREATE INDEX idx_course_department ON Course (department_id);
CREATE INDEX idx_course_instructor ON Course (instructor_id);
CREATE INDEX idx_enrollment_student ON Enrollment (student_id);
CREATE INDEX idx_enrollment_course ON Enrollment (course_id);
CREATE INDEX idx_payment_student ON Payment (student_id);
CREATE INDEX idx_waitlist_student ON Waitlist (student_id);
CREATE INDEX idx_waitlist_course ON Waitlist (course_id);


CREATE VIEW Active_Students AS
SELECT student_id, first_name, last_name,email
From Student WHERE registration_status = 'Active';


CREATE VIEW Course_Enrollment_Summary AS
SELECT c.course_id, c.course_name,c.max_enrollment,
COUNT(e.student_id) AS enrolled_count,
(c.max_enrollment - COUNT(e.student_id)) AS available_spots
FROM Course c
LEFT JOIN Enrollment e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name, c.max_enrollment;

CREATE VIEW Student_Payment_Status AS
SELECT s.student_id, s.first_name,s.last_name,
SUM(p.amount) AS total_paid,
p.payment_status
FROM Student s
LEFT JOIN Payment p on s.student_id = p.student_id
GROUP BY s.student_id, s.first_name, s.last_name,p.payment_status;

CREATE VIEW NSFAS_Student_Without_AOD AS
SELECT student_id, first_name, last_name, email, financial_hold, aod_signed
FROM Student
WHERE aod_signed = 'N' AND financial_hold = 'Y';


SELECT student_id, first_name, last_name, email FROM Student;
SELECT * FROM Module WHERE module_level = 1 AND semester = 1;
SELECT * FROM Student WHERE email LIKE '@%nwu.ac.za' OR email LIKE '%gmail.com';

SELECT first_name, last_name, registration_date
FROM Student
ORDER BY last_name ASC;

SELECT INITCAP(first_name) AS first_name_format,
INITCAP(last_name) AS last_name_format
FROM Student;

SELECT ROUND(AVG(grade), 2) AS grade_average FROM Enrollment;

SELECT student_id, first_name, last_name,
SYSDATE - registration_date AS days_registered
FROM Student;

SELECT COUNT(*) AS total_students FROM Student;

SELECT course_id, COUNT(*) AS student_counting
FROM Enrollment
GROUP BY course_id
HAVING COUNT(*) > 10;

SELECT s.student_id, s.first_name, s.last_name, e.grade
FROM Student
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Course c ON e.course_id = c.course_id;

SELECT s.first_name, s.last_name, COUNT(e.course_id) AS taken_courses
FROM Student s
LEFT JOIN Enrollment e ON s.student_id = e.student_id
GROUP BY s.student_id, s.first_name, s.last_name;

SELECT first_name, last_name
FROM Student
WHERE student_id IN (
SELECT student_id 
FROM Enrollment
GROUP BY student_id
HAVING COUNT(*) > 5

);

SELECT student_id, first_name, last_name, aod_signed,financial_hold
FROM Student
WHERE aod_signed = 'N';

CREATE OR REPLACE TRIGGER Course_Enrollment_Update
AFTER INSERT OR DELETE ON Enrollment
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        UPDATE Course 
        SET current_enrollment = current_enrollment + 1
        WHERE course_id = :NEW.course_id;
    ELSIF DELETING THEN
        UPDATE Course 
        SET current_enrollment = current_enrollment - 1
        WHERE course_id = :OLD.course_id;
    END IF;
END;
/


CREATE OR REPLACE TRIGGER Checking_Prerequisites
BEFORE INSERT ON Enrollment
FOR EACH ROW
DECLARE
    x_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO x_count
    FROM Prerequisite pr
    WHERE pr.course_id = :NEW.course_id
    AND NOT EXISTS (
        SELECT 1 FROM Enrollment e
        WHERE e.student_id = :NEW.student_id
        AND e.course_id = pr.prerequisite_course_id
        AND e.status = 'Completed'
    );
    
    IF x_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Student has not completed all prerequisites');
    END IF;
END;
/

/* TN KGAPHOLA
 * ADDING ATTRIBUTES AND TRIGGERS
 */

CREATE OR REPLACE TRIGGER trg_course_capacity_waitlist
BEFORE INSERT ON Enrollment
FOR EACH ROW
DECLARE
    max_capacity NUMBER;
    current_count NUMBER;
    wait_position NUMBER;
BEGIN

    SELECT max_enrollment, current_enrollment
    INTO max_capacity,current_count
    FROM Course
    WHERE course_id = :NEW.course_id;

    IF current_count >= max_capacity THEN

        SELECT NVL(MAX(position),0) + 1
        INTO wait_position
        FROM Waitlist
        WHERE course_id = :NEW.course_id;

        INSERT INTO Waitlist (
            student_id,
            course_id,
            waitlist_date,
            position,
            status,
            notification_sent
        )
        VALUES (
            :NEW.student_id,
            :NEW.course_id,
            SYSDATE,
            wait_position,
            'Waiting',
            'N'
        );

        RAISE_APPLICATION_ERROR(
            -20300,
            'Course is full. Student added to waitlist.'
        );

    END IF;

END;
/

CREATE OR REPLACE TRIGGER trg_financial_hold
AFTER INSERT OR UPDATE OF payment_status ON Payment
FOR EACH ROW
BEGIN

    IF :NEW.payment_status = 'Unpaid' THEN

        UPDATE Student
        SET financial_hold = 'YES'
        WHERE student_id = :NEW.student_id;

        INSERT INTO Registration_Hold (
            hold_id,
            student_id,
            hold_type,
            resolved_date
        )
        VALUES (
            hold_seq.NEXTVAL,
            :NEW.student_id,
            'Finances',
            NULL
        );

    END IF;

END;
/

CREATE OR REPLACE TRIGGER trg_remove_financial_hold
AFTER UPDATE OF payment_status ON Payment
FOR EACH ROW
BEGIN

    IF :NEW.payment_status IN (
        'Paid',
        'NSFAS PAID',
        'Bursary Paid'
    ) THEN

        UPDATE Student
        SET financial_hold = 'NO'
        WHERE student_id = :NEW.student_id;

    END IF;

END;
/

CREATE OR REPLACE TRIGGER trg_block_financial_hold_registration
BEFORE INSERT ON Enrollment
FOR EACH ROW
DECLARE
    _hold CHAR(1);
BEGIN

    SELECT financial_hold
    TO _hold
    FROM Student
    WHERE student_id = :NEW.student_id;

    IF _hold = 'YES' THEN

        RAISE_APPLICATION_ERROR(
            -20301,
            'Registration blocked because of financial hold.'
        );

    END IF;

END;
/

CREATE OR REPLACE TRIGGER trg_check_aod
BEFORE INSERT ON Enrollment
FOR EACH ROW
DECLARE
    _hold CHAR(1);
    _aod CHAR(1);
BEGIN

    SELECT financial_hold, aod_signed
    INTO _hold, _aod
    FROM Student
    WHERE student_id = :NEW.student_id;

    IF _hold = 'YES' AND _aod = 'NO' THEN

        RAISE_APPLICATION_ERROR(
            -20302,
            'Student must sign AOD before registration if they owe the school.'
        );

    END IF;

END;
/

CREATE OR REPLACE TRIGGER trg_prevent_negative_enrollment
BEFORE UPDATE OF current_enrollment ON Course
FOR EACH ROW
BEGIN

    IF :NEW.current_enrollment < 0 THEN

        RAISE_APPLICATION_ERROR(
            -20303,
            'Enrollment count cannot be negative.'
        );

    END IF;

END;
/
