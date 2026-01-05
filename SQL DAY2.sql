-- 1. Create and use the Database
CREATE DATABASE StudentManagementSystem;
USE StudentManagementSystem;

-- 2. Create Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);
INSERT INTO Student (StudentID, FirstName, LastName, DateOfBirth, Gender, Email, Phone) VALUES
(1, 'Amit', 'Sharma', '2004-05-12', 'Male', 'amit@email.com', '9876543210'),
(2, 'Priya', 'Singh', '2005-08-22', 'Female', 'priya@email.com', '9876543211'),
(3, 'Rahul', 'Verma', '2003-12-01', 'Male', 'rahul@email.com', '9876543212'),
(4, 'Sonia', 'Das', '2005-01-15', 'Female', 'sonia@email.com', '9876543213'),
(5, 'Ankit', 'Mehta', '2004-11-30', 'Male', 'ankit@email.com', '9876543214');
-- 3. Create Course Table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseTitle VARCHAR(100),
    Credits INT
);
INSERT INTO Course (CourseID, CourseTitle, Credits) VALUES
(101, 'Java Programming', 4),
(102, 'Python Data Science', 3),
(103, 'SQL Databases', 4),
(104, 'Web Development', 3),
(105, 'Cloud Computing', 4);
-- 4. Create Instructor Table
CREATE TABLE Instructor (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);
INSERT INTO Instructor (InstructorID, FirstName, LastName, Email) VALUES
(501, 'Dr. Arnab', 'Roy', 'arnab.roy@univ.edu'),
(502, 'Prof. Sneha', 'Kapoor', 'sneha.k@univ.edu'),
(503, 'Dr. Vikram', 'Seth', 'vikram.s@univ.edu'),
(504, 'Prof. Tandra', 'Paul', 'tandra.p@univ.edu'),
(505, 'Dr. Nisha', 'Kumari', 'nisha.k@univ.edu');
-- 5. Create Enrollment Table
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    EnrollmentDate DATE,
    StudentID INT,
    CourseID INT,
    InstructorID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
);
INSERT INTO Enrollment (EnrollmentID, EnrollmentDate, StudentID, CourseID, InstructorID) VALUES
(1, '2026-01-01', 1, 101, 501),
(2, '2026-01-02', 2, 102, 502),
(3, '2026-01-03', 3, 103, 503),
(4, '2026-01-04', 4, 104, 504),
(5, '2026-01-05', 5, 105, 505);
-- 6. Create Score Table
CREATE TABLE Score (
    ScoreID INT PRIMARY KEY,
    CourseID INT,
    StudentID INT,
    DateOfExam DATE,
    CreditObtained INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
INSERT INTO Score (ScoreID, CourseID, StudentID, DateOfExam, CreditObtained) VALUES
(1, 101, 1, '2026-05-20', 4),
(2, 102, 2, '2026-05-21', 3),
(3, 103, 3, '2026-05-22', 4),
(4, 104, 4, '2026-05-23', 3),
(5, 105, 5, '2026-05-24', 4);
-- 7. Create Feedback Table
CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,
    StudentID INT,
    Date DATE,
    InstructorName VARCHAR(100),
    Feedback TEXT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
INSERT INTO Feedback (FeedbackID, StudentID, Date, InstructorName, Feedback) VALUES(1, 1, '2026-01-10', 'Arnab Roy', 'Excellent teaching style.');
INSERT INTO Feedback (FeedbackID, StudentID, Date, InstructorName, Feedback) VALUES(2, 2, '2026-01-11', 'Sneha Kapoor', 'Very helpful materials.');
INSERT INTO Feedback (FeedbackID, StudentID, Date, InstructorName, Feedback) VALUES(3, 3, '2026-01-12', 'Vikram Seth', 'Clear explanations.');
INSERT INTO Feedback (FeedbackID, StudentID, Date, InstructorName, Feedback) VALUES(4, 4, '2026-01-13', 'Tandra Paul', 'Great interactive sessions.');
INSERT INTO Feedback (FeedbackID, StudentID, Date, InstructorName, Feedback) VALUES(5, 5, '2026-01-14', 'Nisha Kumari', 'Engaging practical labs.');