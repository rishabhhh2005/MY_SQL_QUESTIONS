Q1. Find Count of employees in each department.

Ans.        SELECT department, COUNT(*) as EmployeeCount
             FROM employees
             GROUP BY department;


Q2. Find departments having more than 5 employees.

Ans.   SELECT department, COUNT(*) as EmployeeCount
                FROM employees
                GROUP BY department
                HAVING COUNT(*) > 5;


Q3. Find departments with the highest number of employees.

Ans.            SELECT department , COUNT(*) as EmployeeCount               
                FROM employees        
                GROUP BY department        
                ORDER BY EmployeeCount desc        
                LIMIT 1;        
                ----------- OR -------------
                SELECT department, COUNT(*) AS EmployeeCount
                FROM employees
                GROUP BY department
                HAVING COUNT(*) = (
                    SELECT MAX(dept_count)
                    FROM (
                        SELECT COUNT(*) AS dept_count
                        FROM employees
                        GROUP BY department
                    ) AS temp
                );

Q4. Find the department which has the second highest number of employees
⚠️ Without using LIMIT

Ans.            SELECT department, COUNT(*) AS EmployeeCount
                FROM employees
                GROUP BY department
                HAVING COUNT(*) = (
                    SELECT MAX(dept_count)
                    FROM (
                        SELECT COUNT(*) AS dept_count
                        FROM employees
                        GROUP BY department
                        HAVING COUNT(*) < (
                            SELECT MAX(dept_count)
                            FROM (
                                SELECT COUNT(*) AS dept_count
                                FROM employees
                                GROUP BY department
                            ) t1
                        )
                    ) t2
                );


