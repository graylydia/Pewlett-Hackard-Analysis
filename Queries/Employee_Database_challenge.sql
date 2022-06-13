-- Challenge 
-- Deliverable 1
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title, 
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

-- Number of employees by most recent job title who are about to retire
SELECT COUNT(emp_no),
	title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

-- Deliverable 2
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name, 
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_employees as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;
SELECT * FROM unique_titles;
SELECT * FROM retiring_titles;
SELECT * FROM mentorship_eligibilty;

-- Additional queries
-- Count mentorship eligibility by title
SELECT COUNT(emp_no),
	title
INTO mentorship_titles
FROM mentorship_eligibilty
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

SELECT * FROM mentorship_titles;

-- New mentorship program with new date eligibility
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name, 
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO new_mentorship_eligibilty
FROM employees as e
INNER JOIN dept_employees as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1960-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM new_mentorship_eligibilty;

-- Count
SELECT COUNT(emp_no),
	title
INTO new_mentorship_titles
FROM new_mentorship_eligibilty
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

