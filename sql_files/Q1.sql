SELECT 
    AVG(salary_year_avg) AS year_salary,
    AVG(salary_hour_avg) AS hour_salary,
    job_schedule_type
FROM 
    job_postings_fact
WHERE 
    job_posted_date >= '2023-01-01'
GROUP BY 
    job_schedule_type