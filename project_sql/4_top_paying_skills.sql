SELECT
    skills,
    ROUND(AVG(salary_year_avg), 2) AS average_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' AND 
    salary_year_avg IS NOT NULL AND
    job_country = 'Poland'
GROUP BY skills
ORDER BY average_salary DESC
LIMIT 10

/*
Here’s a concise summary of the top-paying data analyst skills in Poland:

Cloud & Big Data: High-paying skills include AWS, Linux, MongoDB, and Hadoop, with salaries up to 165,000 PLN.
Data Platforms & Visualization: Tools like Snowflake, BigQuery, Tableau, and Qlik offer strong compensation, reflecting the demand for managing and visualizing large datasets.
Programming Languages: Languages such as Python, SQL, and C++ are essential but pay slightly less than specialized tools and platforms.

[
  {
    "skills": "linux",
    "average_year_salary": "165000.00"
  },
  {
    "skills": "aws",
    "average_year_salary": "165000.00"
  },
  {
    "skills": "mongo",
    "average_year_salary": "165000.00"
  },
  {
    "skills": "hadoop",
    "average_year_salary": "133750.00"
  },
  {
    "skills": "nosql",
    "average_year_salary": "131750.00"
  },
  {
    "skills": "qlik",
    "average_year_salary": "111175.00"
  },
  {
    "skills": "bigquery",
    "average_year_salary": "111175.00"
  },
  {
    "skills": "snowflake",
    "average_year_salary": "111175.00"
  },
  {
    "skills": "jira",
    "average_year_salary": "111175.00"
  },
  {
    "skills": "sas",
    "average_year_salary": "111175.00"
  },
  {
    "skills": "windows",
    "average_year_salary": "109440.00"
  },
  {
    "skills": "airflow",
    "average_year_salary": "109440.00"
  },
  {
    "skills": "azure",
    "average_year_salary": "108700.00"
  },
  {
    "skills": "spark",
    "average_year_salary": "107250.00"
  },
  {
    "skills": "flow",
    "average_year_salary": "106837.50"
  },
  {
    "skills": "tableau",
    "average_year_salary": "105407.85"
  },
  {
    "skills": "looker",
    "average_year_salary": "103711.25"
  },
  {
    "skills": "scikit-learn",
    "average_year_salary": "102500.00"
  },
  {
    "skills": "unix",
    "average_year_salary": "98500.00"
  },
  {
    "skills": "matplotlib",
    "average_year_salary": "98500.00"
  },
  {
    "skills": "c++",
    "average_year_salary": "98500.00"
  },
  {
    "skills": "rust",
    "average_year_salary": "98500.00"
  },
  {
    "skills": "git",
    "average_year_salary": "97943.75"
  },
  {
    "skills": "python",
    "average_year_salary": "94220.33"
  },
  {
    "skills": "sql",
    "average_year_salary": "91421.60"
  }
]

*/
