Q1. // Find employees whose salary is greater than the average salary of their department.

Ans.         SELECT name, salary , department
             FROM employees e1
             WHERE salary > (
                SELECT AVG(salary)
                FROM employees e2
                WHERE e1.department = e2.department
            );

Q2. // Find the department with the highest average salary.

Ans.         SELECT department, AVG(salary) as AverageSalary
             FROM employees
             GROUP BY department
             ORDER BY AverageSalary DESC
             LIMIT 1;

Q3. // Find the names of employees who earn more than the average salary of their department.

Ans.         SELECT name as Name, salary as Salary, department as Department
             FROM employees e1
             WHERE salary > (
                 SELECT AVG(salary)
                 FROM employees e2
                 WHERE e1.department = e2.department
             );

Q4. // Find the name of the employee with the second highest salary in each department.

Ans.        SELECT name as Name
            FROM employees e1
            WHERE salary = (
                SELECT DISTINCT salary
                FROM employees e2
                WHERE e1.department = e2.department
                ORDER BY salary DESC
                LIMIT 1 OFFSET 1
            );
Q5. // Find the average salary of employees in each department, and display the department name along with the average salary.
Ans.             SELECT department as Department, AVG(salary) as AverageSalary
                 FROM employees
                 GROUP BY department;

