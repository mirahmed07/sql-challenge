CREATE VIEW all_flattened AS
    SELECT e.*, s.salary, t.title, d.dept_name
    FROM employees as e
    left join salaries as s
	on e.emp_no = s.emp_no
	left join titles as t
	on e.emp_title = t.title_id
	left join dept_emp as de
	on e.emp_no = de.emp_no
	left join departments as d
	on de.dept_no = d.dept_no;