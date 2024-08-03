SELECT *
FROM january_jobs;

SELECT *
FROM february_jobs ;

SELECT *
FROM march_jobs ;

-- Get jobs and comapnies from January
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    january_jobs 
UNION ALL

-- Get job and companies from February
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    february_jobs 
UNION ALL

-- Get job and companies from march
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    march_jobs ;