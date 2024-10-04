SELECT 
    companies.name,
    CASE
        WHEN postings.count > 50 THEN 'Large'
        WHEN postings.count < 10 THEN 'Small'
        ELSE 'Medium'
    END AS size
FROM (
    SELECT 
        COUNT(company_id) AS count,
        company_id
    FROM job_postings_fact
    GROUP BY company_id
) AS postings
LEFT JOIN company_dim AS companies
ON postings.company_id = companies.company_id
ORDER BY count DESC