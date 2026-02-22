Q1. Write a Guery to retrieve top 5 highest paid employees

Ans.        SELECT name, salary FROM employees
            ORDER BY salary DESC
            LIMIT 5;


Q2 . Show first name and last name of patients who does not have allergies. 

Ans .    SELECT first_name, last_name 
         FROM patients WHERE allergies IS  null;


Q3. Write a query to find the first name of patients whose first name starts with "C".

Ans.    SELECT first_name 
        FROM patients
        WHERE first_name LIKE "C%";

Q4. Write a query to find the first name of patients whose first name ends with "a".

Ans.    SELECT first_name 
        FROM patients
        WHERE first_name LIKE "%a";
    
Q5.  Write a query to find the first name and last name of patients whose weight is between 100 and 120.

Ans.         SELECT first_name , last_name
            FROM patients
            WHERE weight >=100 AND weight <=120;

Q6. Write a query to update the allergies column to "NKA" for patients who do not have any allergies information.

Ans.         UPDATE patients
            SET allergies = 'NKA'
            WHERE allergies IS NULL;

Q7. Write a query to find the full name of patients by concatenating first name and last name.

Ans.             SELECT CONCAT (first_name , last_name) as Full_Name 
                 FROM patients;

                --0R

                 SELECT first_name || ' ' || last_name as Full_Name
                 FROM patients;


Q8. Write a query to find the average weight of patients.

Ans.         SELECT AVG(weight) as Average_Weight
            FROM patients;  

