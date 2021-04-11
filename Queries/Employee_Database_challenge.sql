--Challenge
--Deliverable 1
--Steps 1-4 create retirement_titles table.
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
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY (e.emp_no = ti.emp_no);

-- Step 4-7 remove duplicate rows
SELECT rt.emp_no,
		rt.first_name,
		rt.last_name,
		rt.title,
		rt.to_date
INTO recent_titles
FROM retirement_titles AS rt;

SELECT * FROM retirement_titles;

--Step 8-14 use Dictinct with Orderby to create unique_titles table
SELECT DISTINCT ON (ret.emp_no) ret.emp_no,
ret.first_name,
ret.last_name,
ret.title
INTO unique_titles
FROM recent_titles AS ret
ORDER BY ret.emp_no ASC, ret.to_date DESC;
SELECT * FROM unique_titles;

--Steps 15-21 create retiring_titles
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
Group By ut.title
ORDER By count DESC;

--Deliverable 2
--Steps 1-11 create a mentorship_eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
d.from_date,
d.to_date,
ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS d
ON (e.emp_no = d.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;

SELECT * FROM titles;

-- Additonal SQL Queries
-- Total Count of Employees
SELECT COUNT (emp_no) FROM employees;

-- Mentors
SELECT title, 
COUNT (emp_no )
FROM mentorship_eligibility
GROUP BY title
ORDER BY COUNT (emp_no) DESC;

-- Retiring Titles
SELECT COUNT (emp_no) as "count", title
FROM unique_titles
GROUP BY title
ORDER BY "count" DESC;

-- Diff of Retirng from Mentors
SELECT COUNT (un.emp_no) As retiring,
COUNT (me.emp_no) AS mentors,
COUNT (un.emp_no) - COUNT(me.emp_no) AS vacancies
FROM unique_titles AS un
FULL OUTER JOIN mentorship_eligibility AS me
ON me.emp_no = un.emp_no;

-- Avg Salary
SELECT AVG (DISTINCT salary) ::numeric (10,2)
FROM salaries;


