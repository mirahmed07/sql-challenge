-- Creating table schema

--Create table departments

DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
  dept_no VARCHAR,
  dept_name VARCHAR NOT NULL,
  PRIMARY KEY (dept_no)
);

select * from departments;

--Creating titles table

DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);

select * from titles;

-- Create table employees

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

select * from employees;


--Create table dept_emp

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp;


-- Create table dept_manager

DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager (
	 dept_no VARCHAR (10),
	 emp_no INT,
	 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_manager;



--Creating salaries table

DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary BIGINT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries;


