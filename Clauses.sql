use celebalTask1;
SELECT StudentID, FirstName, LastName FROM Students;
select * from Students;
SELECT StudentID, FirstName, LastName,Email FROM Students;

SELECT * FROM Students ORDER BY FirstName ASC;

SELECT * FROM Students ORDER BY LastName DESC;


SELECT Students.StudentID, Students.FirstName, Students.LastName, COUNT(Courses.CourseID) AS CourseCount
FROM Students
LEFT JOIN Courses ON Students.StudentID = Courses.StudentID
GROUP BY Students.StudentID, Students.FirstName, Students.LastName;


UPDATE Students
SET Email = 'bhide@gmail.com'
WHERE StudentID = 1;

select * from Students;


DELETE FROM Students WHERE StudentID = 5;

select * from Students;


SELECT DISTINCT CourseName FROM Courses;


