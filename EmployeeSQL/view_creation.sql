DROP VIEW IF EXISTS employees_detail;
CREATE VIEW employees_detail AS
    SELECT e.*, s.salary, t.title, d.dept_name,
	CASE WHEN de.dept_no||de.emp_no IN (SELECT DISTINCT dept_no||emp_no FROM dept_manager) THEN 'Y' ELSE 'N' END AS is_manager
    FROM employees AS e
    LEFT JOIN salaries AS s
	ON e.emp_no = s.emp_no
	LEFT JOIN titles AS t
	ON e.emp_title = t.title_id
	LEFT JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
	LEFT JOIN departments AS d
	ON de.dept_no = d.dept_no;

SELECT * FROM employees_detail WHERE is_manager = 'Y';

SELECT COUNT(*) FROM employees_detail WHERE is_manager = 'Y';