/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query
- Add the specific skills required for these roles
- Why? It provides a detailed look at which high-paying jobs demand certain skills, 
    helping job seekers understand which skills to develop that align with top salaries
*/
With top_jobs As(
SELECT 
    j.job_id, j.job_title, j.salary_year_avg, j.job_location,c.name as comapny_name 
FROM
    job_postings_fact AS j
        JOIN
    company_dim AS c ON j.company_id = c.company_id
WHERE
    j.job_title_short = 'Data Analyst'
    and j.salary_year_avg Is not null and j.job_location = "Anywhere"
    order by j.salary_year_avg desc
    limit 10 )
Select tj.*, skills 
from top_jobs as tj 
Inner join skills_job_dim on tj.job_id = skills_job_dim.job_id
Inner join skills_dim   on skills_job_dim.skill_id = skills_dim.skill_id
Order by salary_year_avg desc;

/*
Here's the breakdown of the most demanded skills for data analysts in 2023, based on job postings:
SQL is leading with a bold count of 8.
Python follows closely with a bold count of 7.
Tableau is also highly sought after, with a bold count of 6.
Other skills like R, Snowflake, Pandas, and Excel show varying degrees of demand.*/ 
