# Pewlett-Hackard-Analysis

## Resources
* Data Source 1: departments.csv
* Data Source 2: dept_emp.csv
* Data Source 3: dept_manager.csv
* Data Source 4: employees.csv
* Data Source 5: salaries.csv
* Data Source 6: titles.csv
* Software: Pyhton 3.9.2 64 bit, Jupyter Notebook 6.1.4

## Purpose
The objective of this project was to update the provided csv files into a PostgreSQL database using SQL and pgAdmin to determine the amount of employees at Pewlett Hackard who are approaching retirement and to use that data to create a mentorship program to help backfill the positions that the company may be losing.

## Results
![retire](https://github.com/Jbailey8316/Pewlett-Hackard-Analysis/blob/main/Data/Retiring_titles.PNG)
* There are 90,398 retiring positions as detailed in the above image.  The highest category of potential retirees are senior engineers totaling 29,414.
* The lowest amount of retiring positions are managers, totaling 2.

![mentors](https://github.com/Jbailey8316/Pewlett-Hackard-Analysis/blob/main/Data/Mentorship_titles.PNG)
* There are 1,940 employees who are eligible for the mentorship program.
* There are no managers who are eligible for the mentorship program and 213 senior engineers as shown above.

## Summary
Pewlett Hackard will be in need of 90,398 employees in total.  However, by narrowing down the birth dates of current employees we can determine that the initial employees to retire would total 31,374. This gives Pewlett Hackard a little over 6% for eligible mentors to train and backfill these positions. The first initial shortage points to needing a candidate to replace a manager along with several other senior staff members.  Given the low number of mentorship eligible employees, Pewlett Hackard should look into expanding their mentorship program. By utilizing the current retirement ready employees, Pewlett Hackard should have plenty of experienced personnel to expand the mentorship program and create suitable replacements before all eligible employees retire.  

![first](https://github.com/Jbailey8316/Pewlett-Hackard-Analysis/blob/main/Data/first_titles.PNG)

The following is the SQL query used to gather the data for the above dataframe:
![first_SQL](https://github.com/Jbailey8316/Pewlett-Hackard-Analysis/blob/main/Data/first_sql.PNG)
