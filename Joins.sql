create table Students (
    StudentID int primary key,
    FirstName varchar(20),
    LastName varchar(20),
    Email varchar(70),
    Phone varchar(20),
);

insert into Students(StudentID, FirstName, LastName, Email)
values
    (1, 'shekhar', 'bhide', 'shekhar@gmail.com'),
    (2, 'samarth', 'kolapkar', 'samarht@gmail.com'),
    (3, 'shreyas', 'bhor', 'shreyas@gmail.com'),
	(4, 'sanket', 'dawange', 'sanket@gmail.com'),
	(5, 'yash', 'bhor', 'yash@gmail.com');

	select * from Students;

create table Courses (
	CourseId int primary key,
	CourseName varchar(50),
	StudentId int,
);

insert into Courses(CourseId, CourseName,  StudentId)
values
    (1, 'cn', 1),
    (2, 'history', 2),
    (3, 'science', 3);

	select * from Courses


	/*inner join */
select *
from Students
INNER JOIN Courses on Students.StudentID = Courses.StudentID;

/*LEFT JOIN*/
SELECT *
FROM Students
LEFT JOIN Courses ON Students.StudentID = Courses.StudentID;

/*right join*/
SELECT *
FROM Students
RIGHT JOIN Courses ON Students.StudentID = Courses.StudentID;

/*self join*/
SELECT s1.StudentID, s1.FirstName, s1.LastName, s2.FirstName AS RelatedFirstName, s2.LastName AS RelatedLastName
FROM Students s1
JOIN Students s2 ON s1.LastName = s2.LastName
WHERE s1.StudentID <> s2.StudentID;
