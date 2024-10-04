SELECT 
    CASE
        WHEN salary_year_avg < 100000 THEN 'low'
        WHEN salary_year_avg < 300000 AND salary_year_avg >= 100000 THEN 'standard'
        WHEN salary_year_avg  >= 300000 THEN 'high'
    END AS salary
FROM job_postings_fact
WHERE salary_year_avg IS NOT NULL AND job_title LIKE '%Data%Analyst%'
ORDER BY salary_year_avg DESC