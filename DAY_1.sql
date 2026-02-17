Q1. Write an SQL query to display the names of students who have scored the highest marks in their respective city.

Ans. SELECT name as NAME,
     city as City,
     marks as Marks FROM
     students s1 WHERE marks =
     (SELECT MAX(marks) 
     FROM students s2
     WHERE s1.city = s2.city) ;


Q2. Find the second highest marks in the table.

Ans.      SELECT DISTINCT marks as SecondHighest 
          FROM students
          ORDER BY  marks DESC
          LIMIT 1 OFFSET 1;

Q3. Find the name of the student who scored the second highest marks. (Duplicate Marks Included)
Ans.     SELECT name AS Name
         FROM students
         WHERE marks = (
             SELECT DISTINCT marks
             FROM students 
             ORDER BY marks DESC
             LIMIT 1 OFFSET 1
        );