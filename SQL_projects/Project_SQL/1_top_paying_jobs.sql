/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely.
- Focuses on job postings with specified salaries (remove nulls).
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into emp
*/

SELECT
    job_id,
    company_dim.name AS NAME,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    Job_posted_date
FROM
    job_postings_fact

LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id

WHERE
    job_title_short = 'Data Analyst' AND
    (job_location LIKE '%MA%' OR job_location LIKE '%Anywhere%') AND    
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10
   