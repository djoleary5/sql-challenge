#Data Analysis Queries
#Query 1
SELECT employees. emp_no, employees.last_name, employees.first_name, employees.gender,
	salaries.salary
	from salaries
    INNER JOIN employees
		ON salaries.emp_no = employees.emp_no;

#Query 2
SELECT * FROM employees
	WHERE YEAR(hire_date) = 1986;

#Query 3
SELECT m.dept_no, d.dept_name, m. emp_no, e.last_name, e.first_name, m.from_date, m.to_date
	FROM dept_manager m
    INNER JOIN employees e ON e.emp_no = m.emp_no
    INNER JOIN departments d ON d.dept_no = m.dept_no;
    
 #Query 4
 SELECT de. emp_no, e.last_name, e.first_name, d.dept_name
	FROM dept_emp de
    INNER JOIN employees e ON e.emp_no = de.emp_no
    INNER JOIN departments d ON d.dept_no = de.dept_no;   

#Query 5
SELECT * from employees
	WHERE first_name = 'Hercules' and last_name LIKE 'B%';

#Query 6
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
	FROM dept_emp de
    INNER JOIN employees e ON e.emp_no = de.emp_no
    INNER JOIN departments d ON d.dept_no = de.dept_no
    WHERE d.dept_name = 'Sales' ; 
    
#Query 7
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
	FROM dept_emp de
    INNER JOIN employees e ON e.emp_no = de.emp_no
    INNER JOIN departments d ON d.dept_no = de.dept_no
    WHERE d.dept_name = 'Sales'  or d.dept_name = 'Development'; 

 #Query 8
 SELECT last_name, count(*) FROM employees
	GROUP BY last_name
    ORDER BY count(*) DESC;
        
#My employee number
SELECT * from employees
	WHERE emp_no = 499942;

