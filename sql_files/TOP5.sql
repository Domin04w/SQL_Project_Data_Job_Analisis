SELECT top5.count,
    skills.skills
FROM (
    SELECT 
        COUNT(job_id) AS count,
        skill_id
    FROM skills_job_dim
    GROUP BY skill_id
    ORDER BY count DESC
    LIMIT 5
) AS top5
LEFT JOIN skills_dim AS skills
 ON top5.skill_id = skills.skill_id
