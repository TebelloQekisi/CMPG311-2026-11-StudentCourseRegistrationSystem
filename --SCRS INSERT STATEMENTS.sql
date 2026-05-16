--SCRS INSERT STATEMENTS
--FACULTY
INSERT INTO Faculty VALUES (1001, 'Natural and Agricultural Sciences', 'Prof.F.van der Westhuizen', 'Building A4');
INSERT INTO Faculty VALUES (1002, 'Economic and Management Sciences', 'Prof.D.Moyo', 'Building E3');
INSERT INTO Faculty VALUES (1003, 'Humanities', 'Prof.M.Sibanda', 'Building C1');
INSERT INTO Faculty VALUES (1004, 'Education', 'Prof.L.Conley', 'Building G4');
INSERT INTO Faculty VALUES (1005, 'Engineering', 'Prof.S.Swanepoel', 'Building F2');

--DEPARTMENT
INSERT INTO Department VALUES (101, 'Science', 'Prof.M.Esiefarienrhe', 'A4-R121', 1001);
INSERT INTO Department VALUES (102, 'Mathematics', 'Dr.L.Phali', 'A4-R112', 1001);
INSERT INTO Department VALUES (103, 'IT', 'Prof.E.Taylor', 'A4-R118', 1001);
INSERT INTO Department VALUES (201, 'Business School', 'Prof.PN.Nkamta', 'E3-R102', 1002);
INSERT INTO Department VALUES (202, 'Accounting', 'Dr.C.Mahlaule', 'E3-R101', 1002);
INSERT INTO Department VALUES (301, 'Languages', 'Mr.L.Dube', 'C1-R112', 1003);
INSERT INTO Department VALUES (401, 'Education', 'Mrs.R.Jacobs', 'G4-R122', 1004);
INSERT INTO Department VALUES (501, 'Engineering', 'Prof.A.Naidoo', 'F2-R080', 1005);

--INSTRUCTOR
INSERT INTO Instructor VALUES (3851001, 'Thabo', 'Khumalo', '3851001@mynwu.ac.za', '27812990112', 'G4-R12', 401, 1004);
INSERT INTO Instructor VALUES (3851002, 'Sarah', 'Jansen', '3851002@mynwu.ac.za', '27812990115', 'C1-R15', 301, 1003);
INSERT INTO Instructor VALUES (3851003, 'Ellen', 'Peters', '3851003@mynwu.ac.za', '27812990505', 'E3-R05', 201, 1002);
INSERT INTO Instructor VALUES (3851004, 'Mark', 'Stevens', '3851004@mynwu.ac.za', '27812990102', 'A4-R02', 101, 1001 );
INSERT INTO Instructor VALUES (3851005, 'David', 'Khumalo', '3851005@mynwu.ac.za', '27812990105', 'A4-R05', 103, 1001 );
INSERT INTO Instructors VALUES (3851006, 'Lynette', 'Drevin', '3851006@mynwu.ac.za', '27812990010', 'E3-R10', 201, 1002 );
INSERT INTO Instructor VALUES (3851007, 'Bassey', 'Isong', '3851007@mynwu.ac.za', '27812990008', 'G4-R08', 401, 1004);
INSERT INTO Instructor VALUES (3851008, 'Francis', 'Lugayizi', '3851008@mynwu.ac.za', '27812990080', 'A4-R08', 102, 1001 );
INSERT INTO Instructor VALUES (3851009, 'Petrus', 'Swanepoel', '3851009@mynwu.ac.za', '27812990019', 'E3-R19', 202, 1002);
INSERT INTO Instructor VALUES (3851010, 'Gerhard', 'Smit', '3851010@mynwu.ac.za', '27812990003', 'F2-R03', 501, 1005);
INSERT INTO Instructor VALUES (3851011, 'Tiny', 'du Toit', '3851011@mynwu.ac.za', '27812990002', 'F2-R02', 501, 1005);

--STUDENTS
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed, is_nsfas) VALUES (40939170, 'Tebello', 'Qekesi', '40939170@mynwu.ac.za', '27920982414', TO_DATE('2003-06-06', 'YYYY-MM-DD'), '0306068330462', 'BSc Mathematics', 3, 'Y', TO_DATE('2026-02-23', 'YYYY-MM-DD'), 1001, 102, 'N'. 'Y');
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed), is_nsfas VALUES (43056717, 'Thapelo', 'Kgaphola', '43056717@mynwu.ac.za', '27839203798', TO_DATE('2003-06-14', 'YYYY-MM-DD'), '0306142165759', 'BA English', 4, 'N', TO_DATE('2026-03-02', 'YYYY-MM-DD'), 1003, 301, 'Y', 'Y');
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed,is_nsfas) VALUES (44839197, 'Mbali', 'Chauke', '44839197@mynwu.ac.za', '27600390802', TO_DATE('2003-09-15', 'YYYY-MM-DD'), '0309152120402', 'Bcom Bus', 4, 'Y', TO_DATE('2026-03-18', 'YYYY-MM-DD'), 1002, 201, 'N', 'Y');
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed, is_nsfas) VALUES (45154597, 'Khulani', 'Maphosa', '45154597@mynwu.ac.za', '27356484685', TO_DATE('2003-12-23', 'YYYY-MM-DD'), '0312236196443', 'BEng Mech', 3, 'N', TO_DATE('2026-03-23', 'YYYY-MM-DD'), 1005, 501, 'N', 'Y');
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed, is_nsfas) VALUES (45229090, 'Craigh', 'Mbungele', '45229090@mynwu.ac.za', '27575478215', TO_DATE('2000-10-14', 'YYYY-MM-DD'), '0010146644458', 'BSc Computer Science', 4, 'Y', TO_DATE('2026-03-07', 'YYYY-MM-DD'), 1001, 101, 'N', 'N');
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed,is_nsfas) VALUES (52442179, 'Paballo', 'Bogacwi', '52442179@mynwu.ac.za', '27870595526', TO_DATE('2001-06-21', 'YYYY-MM-DD'), '0106217884910', 'BEd Found', 3, 'N', TO_DATE('2026-02-14', 'YYYY-MM-DD'), 1004, 401, 'N', 'Y');
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed, is_nsfas) VALUES (46499458, 'Siyabonga', 'Nkosi', '46499458@mynwu.ac.za', '27123647420', TO_DATE('2003-03-29', 'YYYY-MM-DD'), '0303291928760', 'BEng Elec', 3, 'N', TO_DATE('2026-02-14', 'YYYY-MM-DD'), 1005, 502, 'N', 'N');
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed, is_nsfas) VALUES (43771920, 'Dakalo', 'Malingana', '43771920@mynwu.ac.za', '27964324776', TO_DATE('2003-03-16', 'YYYY-MM-DD'), '0303163218786', 'BEng Mech', 4, 'Y', TO_DATE('2026-01-19', 'YYYY-MM-DD'), 1005, 501, 'N', 'N');
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed, is_nsfas) VALUES (38221045, 'Lerato', 'Molefe', '38221045@mynwu.ac.za', '27357809965', TO_DATE('2003-04-29', 'YYYY-MM-DD'), '0304291443874', 'BCom Acc', 5, 'N', TO_DATE('2026-01-28', 'YYYY-MM-DD'), 1002, 202, 'Y', 'Y');
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed, is_nsfas) VALUES (39112001, 'Amina', 'Venter', '39112001@mynwu.ac.za', '27562047565', TO_DATE('2001-10-07', 'YYYY-MM-DD'), '0110078688452', 'BSc Mathematics', 6, 'N', TO_DATE('2026-01-19', 'YYYY-MM-DD'), 1001, 102, 'Y', 'Y');
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed, is_nsfas) VALUES (41123756, 'David', 'Brown', '41123756@mynwu.ac.za', '27125568524', TO_DATE('2001-08-08', 'YYYY-MM-DD'), '0108088620659', 'BSc IT', 3, 'Y', TO_DATE('2026-02-10', 'YYYY-MM-DD'), 1002, 103, 'N', 'N');
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed, is_nsfas) VALUES (48425677, 'Michael', 'Dlamini', '48425677@mynwu.ac.za', '27918163636', TO_DATE('2002-06-20', 'YYYY-MM-DD'), '0206209864433', 'BSc Computer science', 1, 'N', TO_DATE('2026-03-10', 'YYYY-MM-DD'), 1002, 101, 'N', 'N');
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed, is_nsfas) VALUES (37425974, 'Kabelo', 'Mokoena', '37425974@mynwu.ac.za', '27240868153', TO_DATE('2000-07-13', 'YYYY-MM-DD'), '0007136494147', 'BCom Acc', 5, 'N', TO_DATE('2026-02-25', 'YYYY-MM-DD'), 1002, 201, 'N', 'Y');
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed, is_nsfas) VALUES (44869874, 'Siyabong', 'Zulu', '44869874@mynwu.ac.za', '27514654902', TO_DATE('2002-07-20', 'YYYY-MM-DD'), '0207202778086', 'BSc IT', 2, 'N', TO_DATE('2026-02-22', 'YYYY-MM-DD'), 1001, 103, 'N', 'N');
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed, is_nsfas) VALUES (39456919, 'Mbali', 'Mtshali', '39456919@mynwu.ac.za', '27466119154', TO_DATE('2000-12-22', 'YYYY-MM-DD'), '0012222294486', 'Bcom Bus', 5, 'N', TO_DATE('2026-03-11', 'YYYY-MM-DD'), 1002, 201, 'N', 'N');
INSERT INTO Student(student_id, first_name, last_name, email, phone_number, date_of_birth_or_passport, programme, year_of_study, registration_status, financial_hold, registration_date, faculty_id, department_id, aod_signed, is_nsfas) VALUES (40045601, 'Brandon', 'Smit', '40045601@mynwu.ac.za', '27870853709', TO_DATE('2001-04-28', 'YYYY-MM-DD'), '0104288892245', 'Bcom Acc', 4, 'N', TO_DATE('2026-03-06', 'YYYY-MM-DD'), 1002, 202, 'Y', 'N');

--COURSE
INSERT INTO Course VALUES (1, 'BSc Computer Science and Mathematics', 360, 171, 117, '1', 26, 360, 1001,101, 3851008);
INSERT INTO Course VALUES (2, 'BSc Information Technology', 360, 156, 103, '1', 26, 360, 1001,101, 3851004);
INSERT INTO Course VALUES (3, 'BA Accounting', 360, 121, 115, '1', 24, 360, 1002,201, 3851005);
INSERT INTO Course VALUES (4, 'BEd Foundation Phase', 480, 104, 100, '1', 26, 480, 1004,401, 3851001);
INSERT INTO Course VALUES (5, 'BCom Business Management', 360, 158, 118, '1', 24, 360, 1002,201, 3851003); 
INSERT INTO Course VALUES (6, 'BEng Mechanical Engineering', 576, 141, 92, '1', 34, 576, 1005,501, 3851010);
INSERT INTO Course VALUES (7, 'BEng Electrical Engineering', 576, 156, 96, '1', 34, 576, 1005,501, 3851011);
INSERT INTO Course VALUES (8, 'BA English', 360, 163, 110, '1', 24, 360, 1003,301, 3851002);

--MODULE
INSERT INTO Module(module_id, module_name, credits, module_level, semester, course_id, instructor_id) VALUES (1, 'Database Systems', 16, 3, 1, 1, 3851008);
INSERT INTO Module(module_id, module_name, credits, module_level, semester, course_id, instructor_id)VALUES (2, 'Calculus I', 12, 1, 1,1001, 3851004 );
INSERT INTO Module(module_id, module_name, credits, module_level, semester, course_id, instructor_id) VALUES (3, 'Artificial Intelligence', 16, 3, 1, 1, 3851007);
INSERT INTO Module(module_id, module_name, credits, module_level, semester, course_id, instructor_id) VALUES (4, 'Financial Accounting',16, 1, 1, 3, 3851003);
INSERT INTO Module(module_id, module_name, credits, module_level, semester, course_id, instructor_id) VALUES (5, 'Taxation', 16, 2, 2, 1, 3851006);
INSERT INTO Module(module_id, module_name, credits, module_level, semester, course_id, instructor_id) VALUES (6, 'Statistics', 8,1 ,1, 2, 3851005);
INSERT INTO Module(module_id, module_name, credits, module_level, semester, course_id, instructor_id) VALUES (7, 'Calculus II', 12, 1, 2, 1, 3851004);
INSERT INTO Module(module_id, module_name, credits, module_level, semester, course_id, instructor_id) VALUES (8, 'Introduction to Business Management', 12, 1, 1, 5, 3851009);
INSERT INTO Module(module_id, module_name, credits, module_level, semester, course_id, instructor_id) VALUES (9, 'English Literature', 12,2 ,1, 8, 3851002);
INSERT INTO Module(module_id, module_name, credits, module_level, semester, course_id, instructor_id) VALUES (10, 'Foundation Phase Mathematics', 12, 1, 1, 4, 3851001);
INSERT INTO Module(module_id, module_name, credits, module_level, semester, course_id, instructor_id) VALUES (11, 'Data Structures', 12 ,2 ,2 ,1 ,3851007);
INSERT INTO Module(module_id, module_name, credits, module_level, semester, course_id, instructor_id) VALUES (12, 'Thermodynamics', 16, 1, 2, 3851010);
INSERT INTO Module(module_id, module_name, credits, module_level, semester, course_id, instructor_id) VALUES (13, 'Circuit Analysis', 16, 3,1, 3851011);

--PREREQUISITE
INSERT INTO Prerequisite(course_id, prerequisite_course_id) VALUES ('N157 - 191', 'N157 - 190');
INSERT INTO Prerequisite(course_id, prerequisite_course_id) VALUES ('N158 - 191', 'N158 - 190');
INSERT INTO Prerequisite(course_id, prerequisite_course_id) VALUES ('5DB-H00', '5DB-G00');
INSERT INTO Prerequisite(course_id, prerequisite_course_id) VALUES ('O420P', 'O419P');
INSERT INTO Prerequisite(course_id, prerequisite_course_id) VALUES ('5FP-H01', '5FP-H00'); 
INSERT INTO Prerequisite(course_id, prerequisite_course_id) VALUES ('7CJK01 - I425', '7CJK01 - I423');
INSERT INTO Prerequisite(course_id, prerequisite_course_id) VALUES ('7CJK01 - I426', '7CJK01 - I424');
INSERT INTO Prerequisite(course_id, prerequisite_course_id) VALUES ('ENLL');

--SCHEDULE
INSERT INTO Schedule(schedule_id, day_of_week, start_time, end_time, course_id, venue_id) VALUES (8001, 'Friday', '08:00', '09:30', 1, 3);
INSERT INTO Schedule(schedule_id, day_of_week, start_time, end_time, course_id, venue_id) VALUES (8002, 'Tuesday', '10:00', '11:30',1 ,4);
INSERT INTO Schedule(schedule_id, day_of_week, start_time, end_time, course_id, venue_id) VALUES (8003, 'Friday', '12:00', '13:30', 1,6);
INSERT INTO Schedule(schedule_id, day_of_week, start_time, end_time, course_id, venue_id) VALUES (8004, 'Monday', '10:00', '11:00',3 ,2);
INSERT INTO Schedule(schedule_id, day_of_week, start_time, end_time, course_id, venue_id) VALUES (8005, 'Tuesday', '14:00', '15:30',1 ,2);
INSERT INTO Schedule(schedule_id, day_of_week, start_time, end_time, course_id, venue_id) VALUES (8006, 'Thursday', '08:00', '09:30',2 ,4);
INSERT INTO Schedule(schedule_id, day_of_week, start_time, end_time, course_id, venue_id) VALUES (8007, 'Friday', '08:00', '09:30',1 ,1);
INSERT INTO Schedule(schedule_id, day_of_week, start_time, end_time, course_id, venue_id) VALUES (8008, 'Friday', '16:00', '17:30',5 ,3);
INSERT INTO Schedule(schedule_id, day_of_week, start_time, end_time, course_id, venue_id) VALUES (8009, 'Wednesday', '14:00', '15:30',8 ,2,);
INSERT INTO Schedule(schedule_id, day_of_week, start_time, end_time, course_id, venue_id) VALUES (8010, 'Friday', '12:00', '13:30',4 ,4);
INSERT INTO Schedule(schedule_id, day_of_week, start_time, end_time, course_id, venue_id) VALUES (8011, 'Thursday', '10:00', '11:30', 1, 5);
INSERT INTO Schedule(schedule_id, day_of_week, start_time, end_time, course_id, venue_id) VALUES (8012, 'Wednesday', '16:00', '17:30', 6, 8);
INSERT INTO Schedule(schedule_id, day_of_week, start_time, end_time, course_id, venue_id) VALUES (8013, 'Friday', '08:00', '09:30', 7, 9);

--VENUE
INSERT INTO Venue(venue_id, building, room, capacity) VALUES (1, 'A5', 'H101', 55);
INSERT INTO Venue(venue_id, building, room, capacity) VALUES (2, 'A5', 'H102', 120);
INSERT INTO Venue(venue_id, building, room, capacity) VALUES (3, 'A5', 'H103', 235);
INSERT INTO Venue(venue_id, building, room, capacity) VALUES (4, 'A5', 'H104', 80);
INSERT INTO Venue(venue_id, building, room, capacity) VALUES (5, 'A5', 'H01', 236);
INSERT INTO Venue(venue_id, building, room, capacity) VALUES (6, 'A5', 'H02', 180);
INSERT INTO Venue(venue_id, building, room, capacity) VALUES (7, 'A5', 'H03', 250);
INSERT INTO Venue(venue_id, building, room, capacity) VALUES (8, 'A5', 'H04', 120);
INSERT INTO Venue(venue_id, building, room, capacity) VALUES (9, 'A5', 'H05', 135);

--ENROLLMENT
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (40939170, 1, 1, 2026, TO_DATE('2026-02-12', 'YYYY-MM-DD'), 49.0, 'Enrolled');
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (43056717, 8, 1, 2026, TO_DATE('2026-02-06', 'YYYY-MM-DD'), 79.0, 'Dropped');
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (44839197, 5, 1, 2026, TO_DATE('2026-01-29', 'YYYY-MM-DD'), 68.0, 'Completed');
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (45154597, 6, 1, 2026, TO_DATE('2026-01-31', 'YYYY-MM-DD'), 80.0, 'Enrolled');
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (45229090, 1, 1, 2026, TO_DATE('2026-02-18', 'YYYY-MM-DD'), 82.0, 'Completed');
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (52442179, 4, 1, 2026, TO_DATE('2026-02-06', 'YYYY-MM-DD'), 75.0, 'Dropped');
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (46499458, 7, 1, 2026, TO_DATE('2026-02-27', 'YYYY-MM-DD'), 79.0, 'Dropped');
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (43771920, 6, 1, 2026, TO_DATE('2026-01-24', 'YYYY-MM-DD'), 75.0, 'Dropped');
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (38221045, 3, 1, 2026, TO_DATE('2026-02-06', 'YYYY-MM-DD'), 80.0, 'Completed');
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (39112001, 1, 1, 2026, TO_DATE('2026-02-19', 'YYYY-MM-DD'), 68.0, 'Dropped');
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (41123756, 1, 1, 2026, TO_DATE('2026-02-06', 'YYYY-MM-DD'), 80.0, 'Completed');
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (48425677, 1, 1, 2026, TO_DATE('2026-02-04', 'YYYY-MM-DD'), 80.0, 'Completed');
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (37425974, 3, 1, 2026, TO_DATE('2026-02-07', 'YYYY-MM-DD'), 82.0, 'Dropped');
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (44869874, 1, 1, 2026, TO_DATE('2026-02-27', 'YYYY-MM-DD'), 49.0, 'Dropped');
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (39456919, 5, 1, 2026, TO_DATE('2026-01-25', 'YYYY-MM-DD'), 68.0, 'Completed');
INSERT INTO Enrollment(student_id, course_id, semester, year, enrollment_date, grade, status) VALUES (40045607, 3, 1, 2026, TO_DATE('2026-02-01', 'YYYY-MM-DD'), 80.0, 'Enrolled');

--REGISTRATION HOLD
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2601, 40939170, 'Transfer', TO_DATE('2026-03-11', 'YYYY-MM-DD'));
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2602, 43056717, 'Transfer', TO_DATE('2026-03-07', 'YYYY-MM-DD'));
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2603, 44839197, 'Finances', TO_DATE('2026-03-12', 'YYYY-MM-DD'));
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2604, 45154597, 'Transfer', TO_DATE('2026-03-01', 'YYYY-MM-DD'));
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2605, 45229090, 'Transfer', TO_DATE('2026-03-25', 'YYYY-MM-DD'));
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2606, 52442179, 'Transfer', TO_DATE('2026-03-21', 'YYYY-MM-DD'));
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2607, 46499458, 'Transfer', TO_DATE('2026-03-29', 'YYYY-MM-DD'));
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2608, 43771920, 'Finances', TO_DATE('2026-03-25', 'YYYY-MM-DD'));
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2609, 38221045, 'Transfer', TO_DATE('2026-03-04', 'YYYY-MM-DD'));
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2610, 39112001, 'Transfer', TO_DATE('2026-03-21', 'YYYY-MM-DD'));
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2611, 41123756, 'Finances', TO_DATE('2026-03-04', 'YYYY-MM-DD'));
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2612, 48425677, 'Finances', TO_DATE('2026-03-01', 'YYYY-MM-DD'));
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2613, 37425974, 'Transfer', TO_DATE('2026-03-20', 'YYYY-MM-DD'));
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2614, 44869874, 'Finances', TO_DATE('2026-03-28', 'YYYY-MM-DD'));
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2615, 39456919, 'Transfer', TO_DATE('2026-03-06', 'YYYY-MM-DD'));
INSERT INTO Registration_Hold(hold_id, student_id, hold_type, resolved_date) VALUES (2616, 40045601, 'Finances', TO_DATE('2026-03-27', 'YYYY-MM-DD'));


--WAITLIST
INSERT INTO Waitlist(student_id, course_id, waitlist_date, position, status, notification_sent) VALUES (40939170, 1, TO_DATE('2026-02-02', 'YYYY-MM-DD'), 1, 'Waiting', 'Y');
INSERT INTO Waitlist(student_id, course_id, waitlist_date, position, status, notification_sent) VALUES (43056717, 8, TO_DATE('2026-02-12', 'YYYY-MM-DD'), 2, 'Payment Waiting', 'Y');
INSERT INTO Waitlist(student_id, course_id, waitlist_date, position, status, notification_sent) VALUES (45154597, 6, TO_DATE('2026-02-10', 'YYYY-MM-DD'), 1, 'Payment Waiting', 'Y');
INSERT INTO Waitlist(student_id, course_id, waitlist_date, position, status, notification_sent) VALUES (45229090, 1, TO_DATE('2026-02-15', 'YYYY-MM-DD'), 2, 'Waiting', 'Y');
INSERT INTO Waitlist(student_id, course_id, waitlist_date, position, status, notification_sent) VALUES (52442179, 1, TO_DATE('2026-02-05', 'YYYY-MM-DD'), 1, 'Waiting', 'Y');
INSERT INTO Waitlist(student_id, course_id, waitlist_date, position, status, notification_sent) VALUES (46499458, 7, TO_DATE('2026-02-10', 'YYYY-MM-DD'), 1, 'Waiting', 'N');
INSERT INTO Waitlist(student_id, course_id, waitlist_date, position, status, notification_sent) VALUES (38221045, 1, TO_DATE('2026-02-12', 'YYYY-MM-DD'), 1, 'Waiting', 'N');
INSERT INTO Waitlist(student_id, course_id, waitlist_date, position, status, notification_sent) VALUES (39112001, 1, TO_DATE('2026-02-10', 'YYYY-MM-DD'), 2, 'Payment Waiting', 'N');
INSERT INTO Waitlist(student_id, course_id, waitlist_date, position, status, notification_sent) VALUES (37425974, 1, TO_DATE('2026-02-06', 'YYYY-MM-DD'), 1, 'Waiting', 'Y');
INSERT INTO Waitlist(student_id, course_id, waitlist_date, position, status, notification_sent) VALUES (39456919, 1, TO_DATE('2026-02-09', 'YYYY-MM-DD'), 1, 'Waiting', 'N');

--PAYMENT
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9001, 40939170, 11010.0, TO_DATE('2025-10-16', 'YYYY-MM-DD'), 'NSFAS Approved', 1);
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9002, 43056717, 10827.0, TO_DATE('2025-01-08', 'YYYY-MM-DD'), 'NSFAS Approved', 1);
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9003, 44839197, 11169.0, TO_DATE('2026-01-19', 'YYYY-MM-DD'), 'Bursary Approved', 2);
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9004, 45154597, 5683.0, TO_DATE('2025-10-18', 'YYYY-MM-DD'), 'Paid', 1);
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9005, 45229090, 8856.0, TO_DATE('2025-08-21', 'YYYY-MM-DD'), 'BURSARY Approved', 1);
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9006, 52442179, 12514.0, TO_DATE('2025-11-14', 'YYYY-MM-DD'), 'BURSARY Approved', 2);
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9007, 46499458, 11378.0, TO_DATE('2025-01-30', 'YYYY-MM-DD'), 'BURSARY Approved', 1);
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9008, 43771920, 13797.0, TO_DATE('2025-10-04', 'YYYY-MM-DD'), 'BURSARY Approved', 1);
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9009, 38221045, 14111.0, TO_DATE('2025-09-30', 'YYYY-MM-DD'), 'NSFAS Approved', 2);
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9010, 39112001, 13477.0, TO_DATE('2026-02-02', 'YYYY-MM-DD'), 'Paid', 1);
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9011, 41123756, 7062.0, TO_DATE('2025-01-22', 'YYYY-MM-DD'), 'Paid', 2);
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9012, 48425677, 9476.0, TO_DATE('2025-10-20', 'YYYY-MM-DD'), 'NSFAS Approved', 1);
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9013, 37425974, 10398.0, TO_DATE('2025-05-01', 'YYYY-MM-DD'), 'Paid', 1);
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9014, 44869874, 12513.0, TO_DATE('2025-08-25', 'YYYY-MM-DD'), 'BURSARY Approved', 1);
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9015, 39456919, 6285.0, TO_DATE('2025-04-09', 'YYYY-MM-DD'), 'BURSARY Approved', 1);
INSERT INTO Payment(payment_id, student_id, amount, payment_date, payment_status, semester) VALUES (9016, 40045601, 12742.0, TO_DATE('2026-02-21', 'YYYY-MM-DD'), 'Paid', 1);

