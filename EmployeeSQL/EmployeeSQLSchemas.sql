#Data Engineering Schema for importing our CSV files
DROP TABLE IF EXISTS employees;  
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;
 

CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    birth_date TEXT,
    first_name TEXT,
    last_name TEXT,
    gender TEXT,
    hire_date DATE
    );

CREATE TABLE departments (
	dept_no VARCHAR(6) PRIMARY KEY,
    dept_name TEXT
    );
 
CREATE TABLE dept_manager (
	dept_no VARCHAR(6) 
		REFERENCES departents(dept_no),
    emp_no INTEGER 
		REFERENCES employees(emp_no),
    from_date DATE,
    to_date DATE 
    );

CREATE TABLE dept_emp (
    emp_no INTEGER
		REFERENCES employees(emp_no),
    dept_no VARCHAR(6)
		REFERENCES departents(dept_no),
    from_date DATE,
    to_date DATE
);

CREATE TABLE salaries (
    emp_no INTEGER 
		REFERENCES employees(emp_no),
    salary INTEGER,
    from_date DATE,
    to_date DATE
    );

CREATE TABLE titles (
    emp_no INTEGER 
		REFERENCES employees(emp_no),
    title TEXT,
    from_date DATE,
    to_date DATE
    );
   

    
