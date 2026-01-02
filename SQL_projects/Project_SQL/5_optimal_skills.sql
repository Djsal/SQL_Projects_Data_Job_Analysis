WITH skills_demand AS (
    SELECT 
        sjd.skill_id,
        sd.skills,
        COUNT(sjd.job_id) AS demand_count
    FROM job_postings_fact jpf
    INNER JOIN skills_job_dim sjd 
        ON jpf.job_id = sjd.job_id
    INNER JOIN skills_dim sd 
        ON sjd.skill_id = sd.skill_id
    WHERE
        jpf.job_title_short = 'Data Analyst'
        AND jpf.salary_year_avg IS NOT NULL
        AND (jpf.job_location LIKE '%MA%' OR jpf.job_location LIKE '%Anywhere%')
    GROUP BY 
        sjd.skill_id,
        sd.skills
),
average_salary AS (
    SELECT 
        sjd.skill_id,
        ROUND(AVG(jpf.salary_year_avg), 0) AS avg_salary
    FROM job_postings_fact jpf
    INNER JOIN skills_job_dim sjd 
        ON jpf.job_id = sjd.job_id
    INNER JOIN skills_dim sd 
        ON sjd.skill_id = sd.skill_id
    WHERE
        jpf.job_title_short = 'Data Analyst'
        AND jpf.salary_year_avg IS NOT NULL
        AND (jpf.job_location LIKE '%MA%' OR jpf.job_location LIKE '%Anywhere%')
    GROUP BY 
        sjd.skill_id
)
SELECT
    d.skills,
    d.demand_count,
    a.avg_salary
FROM skills_demand d
INNER JOIN average_salary a 
    ON d.skill_id = a.skill_id
    WHERE d.demand_count >= 10

ORDER BY a.avg_salary DESC, d.demand_count DESC

LIMIT 25;

