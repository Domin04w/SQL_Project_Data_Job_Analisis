SELECT 
    job_id,
    name AS company_name,
    job_title,
    job_location,
    salary_year_avg,
    job_posted_date
FROM job_postings_fact
LEFT JOIN company_dim 
ON job_postings_fact.company_id = company_dim.company_id

WHERE 
    job_country = 'Poland' AND 
    salary_year_avg IS NOT NULL AND 
    job_title_short = 'Data Analyst'
ORDER BY salary_year_avg DESC
LIMIT 10