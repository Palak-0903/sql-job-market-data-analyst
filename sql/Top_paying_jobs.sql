/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely
- Focuses on job postings with specified salaries (remove nulls)
- BONUS: Include company names of top 10 roles
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employment options and location flexibility.
*/


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
    limit 10 

/*
Here's the breakdown of the top data analyst jobs in 2023:
Wide Salary Range: Top 10 paying data analyst roles span from $184,000 to $650,000, indicating significant salary potential in the field.
Diverse Employers: Companies like SmartAsset, Meta, and AT&T are among those offering high salaries, showing a broad interest across different industries.
Job Title Variety: There's a high diversity in job titles, from Data Analyst to Director of Analytics, reflecting varied roles and specializations within data analytics.*/

