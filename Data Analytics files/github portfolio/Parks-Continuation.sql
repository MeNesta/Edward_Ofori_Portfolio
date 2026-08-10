SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT first_name ,  last_name,
CONCAT(first_name,' ', last_name) AS full_name
FROM employee_demographics; 

SELECT first_name, last_name,
CASE 
	WHEN age <= 30 THEN 'Young'
END 
FROM employee_demographics;    

SELECT occupation, salary, age,
CASE 
	WHEN salary >= 60000 THEN 'Paid Good'
	WHEN salary >= 50000 THEN 'Mid Range'
    WHEN salary <= 25000 THEN 'Paid Bad'
    WHEN age <= 30 THEN 'young'
END  AS Salary_Range
FROM employee_salary,employee_demographics;    

-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% Bonus 

SELECT first_name, last_name, salary,
CASE 
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
    END AS New_Salary,
CASE
	 WHEN dept_id = 6 THEN salary * 10.0
     END AS Bonus
FROM employee_salary;

SELECT department_id,department_name
FROM parks_departments;


SELECT *
FROM employee_demographics
WHERE employee_id IN  
(SELECT employee_id
FROM employee_salary
WHERE dept_id = 1)
;

SELECT first_name, salary, 
(SELECT AVG(salary)
FROM employee_salary) AS Average_salary
FROM employee_salary; 

SELECT dem.employee_id, dem.first_name,dem.last_name,gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num, 
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal 
	ON dem.employee_id = sal.employee_id;   


SELECT *
FROM employee_demographics;

SELECT * 
FROM employee_salary;

    
    
    DELIMITER $$
    CREATE TRIGGER employee_insert
		AFTER INSERT ON employee_salary
        FOR EACH ROW
	BEGIN
    INSERT INTO employee_demographics(employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
    END $$
    DELIMITER ; 
    
    INSERT INTO employee_salary(employee_id, first_name, last_name, occupation, salary, dept_id)
    VALUES(13,'Jean-Ralphio','Sapertein','Extertainment 720 CEO',1000000,NULL);
    
   
    DELETE FROM employee_demographics
    WHERE first_name  LIKE 'Jean%';
    
    
     
    
    DELIMITER $$
    CREATE EVENT delete_retirees
    ON SCHEDULE EVERY 30 SECOND
    DO
    BEGIN
		DELETE
		FROM employee_demographics
		WHERE age >= 60;
    END$$
    DELIMITER ;  
    
    
    