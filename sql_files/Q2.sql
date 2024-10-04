SELECT 
    COUNT(job_id) as count,
    EXTRACT(MONTH FROM job_posted_date AT TIME ZONE 'GMT') AS month
FROM job_postings_fact
GROUP BY month
