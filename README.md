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
The initial analysts of Pewlett Hackard showed they have a total workforce of 300,025 employees.  After some more research we were able to determine that 90,398 employees were reaching the retirment age.  Given this assesment regarding a large number of employees potentially leaving, we decided to break down the retiring employees by title to guage the impact this would have across the business.  From our analysis we have determined 4 key points:

* There are 90,398 retiring positions.  The highest category of potential retirees are senior engineers totaling 29,414.
* The lowest amount of retiring positions are managers, totaling 2.
* There are 1,940 employees who are eligible for the mentorship program.  Far fewer than the potential vacancies.
* There are no managers who are eligible for the mentorship program and 213 senior engineers.

Fig 1.
### Total Employee Count
![ee_count](https://github.com/Jbailey8316/Pewlett-Hackard-Analysis/blob/main/Data/employee_counts.csv)

Fig 2.
### Retirement Ready Employees by Title
![retire](https://github.com/Jbailey8316/Pewlett-Hackard-Analysis/blob/main/Data/Retiring_titles.PNG)

### Employee Mentorship Program Count
![mentors](https://github.com/Jbailey8316/Pewlett-Hackard-Analysis/blob/main/Data/Mentorship_titles.PNG)

## Summary
Pewlett Hackard has a signifcant number of employees totaling over 90 thousand who would able to retire at roughly the same time.  This could potentially cause a meanigful impact across the company given the number of vacancies in a short timeframe.  A possible solution to this immediate turn over would be to increase the reach of the mentorship program.  A possible way to do this would be to expand the age range of mentor eligible employees.  Pewlett Hackard could also begin onboarding new replacements to back fill the needed postions.

### Retirement Eligible Employees vs. Mentor Eligibile Employees
![ee_dif](https://github.com/Jbailey8316/Pewlett-Hackard-Analysis/blob/main/Data/dif_between_retire_mentor.PNG)

Upon further analysis we can see that the average salary for Pewlett Hackard is just over 60 thousand annually. If they were to decide to start a hiring campaign to help alleviate the large turn over from possible retirements; they may need to reevaluate their salaiers across thier positions.  This would help bring new talant to the company and a potential wage increase would also help to reatain expirienced employees already in place.  

### Average Salary
![avg_salary](https://github.com/Jbailey8316/Pewlett-Hackard-Analysis/blob/main/Data/avg_salary.PNG)

