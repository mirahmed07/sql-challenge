--List all te columns properties

SELECT table_name, column_name, ordinal_position, data_type  
FROM information_schema.columns
WHERE table_name IN ('departments','dept_emp', 'dept_manager','employees','salaries','titles');

SELECT * FROM titles;

SELECT * FROM departments;

SELECT * FROM employees;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM salaries;