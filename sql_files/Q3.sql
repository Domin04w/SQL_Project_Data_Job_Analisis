SELECT
    companies.name
FROM job_postings_fact
LEFT JOIN company_dim AS companies ON job_postings_fact.company_id = companies.company_id
WHERE EXTRACT(QUARTER FROM job_posted_date) = 2 AND EXTRACT(YEAR FROM job_posted_date) = 2023 AND job_health_insurance = TRUE
GROUP BY companies.name