DELETE FROM salaries;
DELETE FROM dept_emp;
DELETE FROM dept_manager;
DELETE FROM employees;
DELETE FROM departments;
DELETE FROM titles;

-- Change the permissions under properties>security for each file before importing 

-- Imoprting departments.csv
COPY departments(dept_no, dept_name)
FROM 'C:/Users/mosab/Documents/Homework_mir/SQL/sql-challenge/EmployeeSQL/data/departments.csv'
DELIMITER ','
CSV HEADER;

-- Imoprting titles.csv
COPY titles(title_id, title)
FROM 'C:/Users/mosab/Documents/Homework_mir/SQL/sql-challenge/EmployeeSQL/data/titles.csv'
DELIMITER ','
CSV HEADER;

-- Imoprting employees.csv
COPY employees(emp_no, emp_title, birth_date, first_name, last_name, sex, hire_date)
FROM 'C:/Users/mosab/Documents/Homework_mir/SQL/sql-challenge/EmployeeSQL/data/employees.csv'
DELIMITER ','
CSV HEADER;

-- Imoprting salaries.csv
COPY salaries(emp_no, salary)
FROM 'C:/Users/mosab/Documents/Homework_mir/SQL/sql-challenge/EmployeeSQL/data/salaries.csv'
DELIMITER ','
CSV HEADER;

-- Imoprting dept_manager.csv
COPY dept_manager(dept_no, emp_no)
FROM 'C:/Users/mosab/Documents/Homework_mir/SQL/sql-challenge/EmployeeSQL/data/dept_manager.csv'
DELIMITER ','
CSV HEADER;

-- Imoprting dept_emp.csv
COPY dept_emp(emp_no, dept_no)
FROM 'C:/Users/mosab/Documents/Homework_mir/SQL/sql-challenge/EmployeeSQL/data/dept_emp.csv'
DELIMITER ','
CSV HEADER;