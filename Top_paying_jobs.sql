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


