SELECT 
    job_schedule_type,
    AVG(salary_year_avg) AS year_avg,
    AVG(salary_hour_avg) AS hour_avg
FROM 
    job_postings_fact 
WHERE 
    job_posted_date > '2023-06-01'
GROUP BY 
    job_schedule_type;

SELECT * from job_postings_fact LIMIT 5;