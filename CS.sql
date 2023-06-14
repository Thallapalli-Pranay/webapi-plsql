-- Create the Courses table
CREATE TABLE Courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(255),
  course_description VARCHAR(255),
  instructor_id INT
);

-- Create the Students table
CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(255),
  email VARCHAR(255),
  phone_number VARCHAR(20)
);

-- Create the Enrollments table
CREATE TABLE Enrollments (
  enrollment_id INT PRIMARY KEY,
  student_id INT,
  course_id INT,
  enrollment_date DATE,
  FOREIGN KEY (student_id) REFERENCES Students(student_id),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Create the CourseModules table
CREATE TABLE CourseModules (
  module_id INT PRIMARY KEY,
  course_id INT,
  module_name VARCHAR(255),
  module_description VARCHAR(255),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Create the Progress table
CREATE TABLE Progress_data (
  progress_id INT PRIMARY KEY,
  enrollment_id INT,
  module_id INT,
  is_completed BOOLEAN,
  FOREIGN KEY (enrollment_id) REFERENCES Enrollments(enrollment_id),
  FOREIGN KEY (module_id) REFERENCES CourseModules(module_id)
);

-- Create the Instructors table
CREATE TABLE Instructors (
  instructor_id INT PRIMARY KEY,
  instructor_name VARCHAR(255),
  email VARCHAR(255),
  phone_number VARCHAR(20)
);
-- Inserting records into the Courses table
--
INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (1, 'Introduction to Programming', 'Learn the basics of programming', 101);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (2, 'Web Development', 'Build dynamic websites using HTML, CSS, and JavaScript', 102);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (3, 'Data Science Fundamentals', 'Explore the world of data science and analytics', 103);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (4, 'Mobile App Development', 'Create mobile apps for iOS and Android platforms', 104);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (5, 'Database Management', 'Master the art of managing and querying databases', 105);
-- Inserting additional records into the Courses table
INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (6, 'Artificial Intelligence', 'Discover the concepts and applications of AI', 106);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (7, 'Digital Marketing', 'Learn strategies for effective online marketing', 107);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (8, 'Cybersecurity Fundamentals', 'Explore the essentials of cybersecurity', 108);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (9, 'Graphic Design for Beginners', 'Master the basics of graphic design', 109);

INSERT INTO Courses (course_id, course_name, course_description, instructor_id)
VALUES (10, 'Project Management Principles', 'Develop skills for successful project management', 110);
--******************************************************************************
--******************************************************************************
 
INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (101, 'John Smith', 'johnsmith@example.com', '123-456-7890');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (102, 'Jane Doe', 'janedoe@example.com', '987-654-3210');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (103, 'Michael Johnson', 'michaeljohnson@example.com', '555-1234');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (104, 'Emily Davis', 'emilydavis@example.com', '777-888-9999');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (105, 'David Wilson', 'davidwilson@example.com', '444-555-6666');
 
INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (106, 'Sarah Anderson', 'sarahanderson@example.com', '111-222-3333');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (107, 'Robert Garcia', 'robertgarcia@example.com', '444-333-2222');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (108, 'Michelle Lee', 'michellelee@example.com', '777-999-8888');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (109, 'Daniel Thompson', 'danielthompson@example.com', '555-666-7777');

INSERT INTO Instructors (instructor_id, instructor_name, email, phone_number)
VALUES (110, 'Jennifer Moore', 'jennifermoore@example.com', '888-777-6666');
--*******************************************************************************
--*******************************************************************************
/
--INSERTIG INTO STUDENTS----------
-- Inserting records into the Students table
INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1001, 'John Smith', 'johnsmith@example.com', '123-456-7890');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1002, 'Jane Doe', 'janedoe@example.com', '987-654-3210');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1003, 'Michael Johnson', 'michaeljohnson@example.com', '555-1234');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1004, 'Emily Davis', 'emilydavis@example.com', '777-888-9999');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1005, 'David Wilson', 'davidwilson@example.com', '444-555-6666');
-- Inserting additional records into the Students table
INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1006, 'Sarah Anderson', 'sarahanderson@example.com', '111-222-3333');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1007, 'Robert Garcia', 'robertgarcia@example.com', '444-333-2222');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1008, 'Michelle Lee', 'michellelee@example.com', '777-999-8888');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1009, 'Daniel Thompson', 'danielthompson@example.com', '555-666-7777');

INSERT INTO Students (student_id, student_name, email, phone_number)
VALUES (1010, 'Jennifer Moore', 'jennifermoore@example.com', '888-777-6666');
------------------------****************************--------------------
--INERTING INTO ENROLLMENT TABLE
-- Inserting records into the Enrollments table
INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2001, 1001, 1, TO_DATE('2023-01-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2002, 1002, 2, TO_DATE('2023-02-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2003, 1003, 3, TO_DATE('2023-03-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2004, 1004, 4, TO_DATE('2023-04-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2005, 1005, 5, TO_DATE('2023-05-01', 'YYYY-MM-DD'));
-- Inserting additional records into the Enrollments table
INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2006, 1006, 6, TO_DATE('2023-06-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2007, 1007, 7, TO_DATE('2023-07-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2008, 1008, 8, TO_DATE('2023-08-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2009, 1009, 9, TO_DATE('2023-09-01', 'YYYY-MM-DD'));

INSERT INTO Enrollments (enrollment_id, e_student_id, e_course_id, enrollment_date)
VALUES (2010, 1010, 10, TO_DATE('2023-10-01', 'YYYY-MM-DD'));
--------------------------Course module table----------
-- Inserting records into the CourseModules table
INSERT INTO CourseModules (module_id, c_course_id, module_name, module_description)
VALUES (3001, 1, 'Introduction to Programming Concepts', 'Learn the fundamental concepts of programming');

INSERT INTO CourseModules (module_id, c_course_id, module_name, module_description)
VALUES (3002, 1, 'Variables and Data Types', 'Explore different types of variables and data in programming');

INSERT INTO CourseModules (module_id, c_course_id, module_name, module_description)
VALUES (3003, 2, 'HTML Basics', 'Get started with HTML tags and structure');

INSERT INTO CourseModules (module_id, c_course_id, module_name, module_description)
VALUES (3004, 2, 'CSS Styling', 'Learn how to style web pages using CSS');

INSERT INTO CourseModules (module_id, c_course_id, module_name, module_description)
VALUES (3005, 3, 'Introduction to Data Science', 'Discover the basics of data science and its applications');


-- Inserting records into the Progress table
INSERT INTO Progress_DATA (progress_id, p_enrollment_id, p_module_id, is_completed)
VALUES (4001, 2001, 3001, 'YES');

INSERT INTO Progress_DATA (progress_id, p_enrollment_id, p_module_id, is_completed)
VALUES (4002, 2001, 3002, 'YES');

INSERT INTO Progress_DATA (progress_id, p_enrollment_id, p_module_id, is_completed)
VALUES (4003, 2002, 3003, 'YES');

INSERT INTO Progress_DATA (progress_id, p_enrollment_id, p_module_id, is_completed)
VALUES (4004, 2002, 3004, 'NO');

INSERT INTO Progress_DATA (progress_id, p_enrollment_id, p_module_id, is_completed)
VALUES (4005, 2003, 3005, 'YES');
--------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE CourseManagementPackage IS
  PROCEDURE create_course_module(
    course_id IN INT,
    module_name IN CourseModules.module_name%TYPE,
    module_description IN CourseModules.module_description%TYPE
  );
  
  PROCEDURE update_student_progress(
    enrollment_id IN Enrollments.enrollment_id%TYPE,
    module_id IN CourseModules.module_id%TYPE,
    is_completed IN Progress_data.is_completed%TYPE
  );
  
  PROCEDURE generate_completion_certificates(
    p_enrollment_id IN Enrollments.enrollment_id%TYPE
  );
  
  FUNCTION count_completed_courses(
    student_id IN Students.student_id%TYPE
  ) RETURN INT;
END CourseManagementPackage;

CREATE OR REPLACE PACKAGE BODY CourseManagementPackage IS
---------------------------------------------------------------------------------
 PROCEDURE create_course_module(
  p_course_id IN Courses.course_id%TYPE,
  p_module_name IN CourseModules.module_name%TYPE,
  p_module_description IN CourseModules.module_description%TYPE
)
AS
  v_module_id CourseModules.module_id%TYPE;
BEGIN
  SELECT MAX(module_id) INTO v_module_id FROM CourseModules;
  v_module_id := v_module_id + 1;

  INSERT INTO CourseModules (module_id, course_id, module_name, module_description)
  VALUES (v_module_id, p_course_id, p_module_name, p_module_description);

  DBMS_OUTPUT.PUT_LINE('Course module created successfully. Module ID: ' || v_module_id);
END;

--------------------------------------------------------------------------------
PROCEDURE update_student_progress(
  p_enrollment_id IN enrollments.enrollment_id%TYPE,
  p_module_id IN course_modules.module_id%TYPE,
  p_is_completed IN progress_data.is_completed%TYPE
)
AS
BEGIN
  UPDATE progress_data
  SET is_completed = p_is_completed
  WHERE enrollment_id = p_enrollment_id
  AND module_id = p_module_id;
  
  COMMIT;
END;
--------------------------------------------------------------------------------
 
--------------------------------------------------------------------------------
PROCEDURE generate_completion_certificates(
  p_enrollment_id IN Enrollments.enrollment_id%TYPE
)
AS
  TYPE CompletionCertificateRec IS RECORD (
    student_name Students.student_name%TYPE,
    course_name Courses.course_name%TYPE,
    completion_certificate VARCHAR2(500)
  );
  
  TYPE CompletionCertificateList IS TABLE OF CompletionCertificateRec;
  v_certificates CompletionCertificateList := CompletionCertificateList();
  
  -- Named exceptions
  no_certificates_exception EXCEPTION;
  other_exception EXCEPTION;
BEGIN
  FOR rec IN (
    SELECT S.student_name, C.course_name, PD.is_completed
    FROM Students S
    JOIN Enrollments E ON S.student_id = E.student_id
    JOIN Courses C ON E.course_id = C.course_id
    JOIN Progress_DATA PD ON E.enrollment_id = PD.enrollment_id
    WHERE E.enrollment_id = p_enrollment_id
  )
  LOOP
    DECLARE
      v_completion_certificate VARCHAR2(500);
    BEGIN
      IF rec.is_completed = 'YES' THEN
        v_completion_certificate := 'This is to certify that ' || rec.student_name || ' has successfully completed the course ' || rec.course_name || '.';
      ELSE
        v_completion_certificate := 'This is to inform ' || rec.student_name || ' that completion of the course ' || rec.course_name || ' is pending.';
      END IF;

      
      v_certificates.EXTEND;
      v_certificates(v_certificates.COUNT) := CompletionCertificateRec(rec.student_name, rec.course_name, v_completion_certificate);
    END;
  END LOOP;
  
  -- Return the completion certificates
  IF v_certificates.COUNT = 0 THEN
    RAISE no_certificates_exception;
  ELSE
    FOR i IN 1..v_certificates.COUNT
    LOOP
      DBMS_OUTPUT.PUT_LINE('Completion Certificate for ' || v_certificates(i).student_name || ' - Course: ' || v_certificates(i).course_name);
      DBMS_OUTPUT.PUT_LINE(v_certificates(i).completion_certificate);
      DBMS_OUTPUT.PUT_LINE('-------------------------');
    END LOOP;
  END IF;
EXCEPTION
  WHEN no_certificates_exception THEN
    DBMS_OUTPUT.PUT_LINE('No completion certificates found for the provided enrollment ID.');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred while generating completion certificates. Error: ' || SQLERRM);
    RAISE other_exception;
END;
 

 END CourseManagementPackage;
 /
 ----------------------------------------------------------------------------
 
execute generate_completion_certificates(2004)
-----------------------------------------------------------------------------
set serveroutput on;
DECLARE
  CURSOR c_course_modules IS
    SELECT module_id, module_name, module_description
    FROM CourseModules;
  v_module_id CourseModules.module_id%TYPE;
  v_module_name CourseModules.module_name%TYPE;
  v_module_description CourseModules.module_description%TYPE;
BEGIN
  OPEN c_course_modules;
  LOOP
    FETCH c_course_modules INTO v_module_id, v_module_name, v_module_description;
    EXIT WHEN c_course_modules%NOTFOUND;
    -- Display module data
    DBMS_OUTPUT.PUT_LINE('Module ID: ' || v_module_id);
    DBMS_OUTPUT.PUT_LINE('Module Name: ' || v_module_name);
    DBMS_OUTPUT.PUT_LINE('Module Description: ' || v_module_description);
    DBMS_OUTPUT.PUT_LINE('------------------------');
  END LOOP;
  CLOSE c_course_modules;
END;
---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION count_completed_courses(
  student_id IN Students.student_id%TYPE
) RETURN INT
IS
  completed_count INT;
BEGIN
  SELECT COUNT(*)  into completed_count
  FROM Enrollments E
  JOIN Progress_data P ON E.enrollment_id = P.enrollment_id
  WHERE E.student_id = student_id
    AND P.is_completed = 'YES';

  RETURN completed_count;
END;
/
set serveroutput on;
DECLARE
  v_student_id Students.student_id%TYPE := 1002;  
  v_completed_count INT;
BEGIN
  v_completed_count := count_completed_courses(v_student_id);
  DBMS_OUTPUT.PUT_LINE('Number of completed courses for student ' || v_student_id || ': ' || v_completed_count);
END;
--------------------------------------------------------------------------------
set serveroutput on;
CREATE OR REPLACE TRIGGER course_completion_trigger
AFTER INSERT OR UPDATE ON Progress_data
FOR EACH ROW
DECLARE
  v_enrollment_id Progress_data.enrollment_id%TYPE := :new.enrollment_id;
  v_total_modules INT;
  v_completed_modules INT;
BEGIN
  -- Get the total number of modules for the enrollment
  SELECT COUNT(*) INTO v_total_modules
  FROM CourseModules
  WHERE course_id = (SELECT course_id FROM Enrollments WHERE enrollment_id = v_enrollment_id);

  -- Get the number of completed modules for the enrollment
  SELECT COUNT(*) INTO v_completed_modules
  FROM Progress_data
  WHERE enrollment_id = v_enrollment_id AND is_completed = 'YES';

  -- Check if all modules are completed
  IF v_total_modules = v_completed_modules THEN     
    DBMS_OUTPUT.PUT_LINE('Course completion detected for enrollment ID: ' || v_enrollment_id);
  END IF;
END;
/

--------------------------------------------------------------------------------
select * from courses;
select * from students;
select * from coursemodules;
select * from progress_data;
select * from enrollments;
select * from instructors;
