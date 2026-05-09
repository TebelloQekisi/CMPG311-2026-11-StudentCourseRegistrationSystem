/* CMPG 311 Group 11 - Student Course Registration System 

*/;
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email_address VARCHAR(50),
    phone_number VARCHAR(17),
    date_of_birth DATE(8),
    id_or_passport VARCHAR(15),
    user_type ENUM('Student', 'Instructor', 'Admin', 'Academic advisor' ) NOT NULL, /*defines role*/
    password_hash VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(user_id)
);

--FACULTY
CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    faculty_name VARCHAR(100) NOT NULL,
    dean VARCHAR(20),
    location VARCHAR(50), /*building and office number*/
);

--DEPARTMENT
CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    faculty_id INT,
    head_of_department VARCHAR(20),
    location VARCHAR(50),
    FOREIGN KEY (faculty_ID) REFERENCES Faculty(faculty_id)
);

--FOR STUDENTS ONLY
CREATE TABLE Student (
    user_id INT PRIMARY KEY, /*student number*/
    faculty VARCHAR(16),
    programme VARCHAR(100),
    year_of_study INT(1),
    registration_status VARCHAR(), --Registered, Registration on hold, Not registered, Registration paused, Graduated
    financial_hold BOOLEAN DEFAULT FALSE, -- Monitor registration status
    registration_date DATE,
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

--FOR INSTRUCTORS ONLY
CREATE TABLE Instructor(
   user_id INT PRIMARY KEY, /*instructor id*/
   department_id INT,
   hire_date DATE,
   office_number VARCHAR(20),
   FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id),
   FOREIGN KEY (department_id) REFERENCES Department(department_id),
   FOREIGN KEY (user_id) REFERENCES User(user_id) 
);

--COURSE
CREATE TABLE Course (
    course_code VARCHAR(20) PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT,
    faculty VARCHAR(100),
    department VARCHAR(100),
    instructor_staff_number INT, 
    current_enrollment INT DEFAULT 0,
    semester INT,
    year INT,
    APS_required INT,
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id),
    FOREIGN KEY (department_id) REFERENCES Department(department_id),
    FOREIGN KEY (instructor_id) REFERENCES Instructor(user_id)
);

--VENUE
CREATE TABLE Venue (
    venue_code VARCHAR(10) PRIMARY KEY,
    building VARCHAR(4),
    room VARCHAR(5),
    capacity INT,
);

--SCHEDULE
CREATE TABLE Schedule (
    schedule_id INT NOT NULL AUTO_INCREMENT,
    course_code VARCHAR(20),
    day_of_the_week VARCHAR(20), --Monday to Friday
    start_time TIME,
    end_time TIME,
    venue_code VARCHAR(20),
    PRIMARY KEY (schedule_id),
    FOREIGN KEY (course_code) REFERENCES Course(course_code),
    FOREIGN KEY (venue_code) REFERENCES Venue(venue_code)

);

--PREREQUISITE
CREATE TABLE Prerequisite (
    course_code VARCHAR(20),
    prerequisite_cousre_code VARCHAR(20),
    PRIMARY KEY (cousre_code, prerequisite_course_code),
    FOREIGN KEY (course_code) REFERENCES Course(course_code),
    FOREIGN KEY (prerequisite_course_code) REFERENCES Course(course_code)
);

--ENROLLMENT
CREATE TABLE Enrollment (
    enrollment_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL, --student number
    course_code VARCHAR(20),
    semester INT,
    year INT,
    enrollment_date DATE DEFAULT(CURRENT DATE),
    grade DECIMAL(5,2),
    status VARCHAR(20) DEFAULT 'Registered', --Registered, Dropped, Completed
    PRIMARY KEY (id_enrollment),
    FOREIGN KEY (student_number) REFERENCES Users(user_id),
    FOREIGN KEY (course_code) REFERENCES Course(couse_code),
    UNIQUE (student_number, course_code, semester, year)
);

--WAITLIST
CREATE TABLE Waitlist (
    waitlist_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL, --student number
    course_code VARCHAR(20),
    waitlist_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'Waiting', --Waiting, Registred, Expired
    notification_sent BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (waitlist_id),
    FOREIGN KEY (student_number) REFERENCES Users(user_id),
    FOREIGN KEY (course_code) REFERENCES Course(course_code)
);

--REGISTRATION HOLD
CREATE TABLE Registration_hold (
    hold_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL, --student number
    hold_type VARCHAR(20) NOT NULL, 
    hold_description TEXT,
    hold_date DATE NOT NULL,
    resolved_date DATE DEFAAULT NULL,
    PRIMARY KEY (hold_id),
    FOREIGN KEY (user_id) REFERENCES Student(user_id)
);

--PAYMENT
CREATE TABLE Payment(
    payment_id INT NOT NULL,
    user_id INT NOT NULL, --student number
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_status VARCHAR(20), --pending, paid, nsfas, internal bursary, external bursary
    semester INT,
    PRIMARY KEY (payment_id),
    FOREIGN KEY (student_number) REFERENCES Student(user_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

