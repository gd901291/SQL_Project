/*
Question : What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions.
- Focuses on roles with specified salaries, regardless of location.
- Why? It reveals how different skills impact salary levels for Data Analyst and
    helps identify the most financial rewarding skills to acquire or improve
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
From 
    job_postings_fact
INNER JOIN skills_job_dim ON 
    job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON 
    skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = TRUE
GROUP BY 
    skills
ORDER BY 
    avg_salary DESC
LIMIT 25

/*
Certainly ! Here are the key trends condensed into three main bullet points: 
Key Trends in Top - Paying Data Analyst Skills Big Data,
Cloud,
and Distributed Computing: Skills like PySpark
and Databricks command high salaries,
reflecting the need for expertise in handling large - scale data processing
and cloud - based solutions.Programming,
Databases,
and Specialized Tools: High - paying skills include specialized databases (Couchbase, Elasticsearch),
programming languages (Swift, Golang, Scala),
and essential libraries (Pandas, Numpy, Scikit - learn) for data manipulation
and machine learning.DevOps,
CI / CD,
and Collaboration Tools: Proficiency in tools like Bitbucket,
GitLab,
Jenkins,
and Airflow highlights the importance of version control,
continuous integration / deployment,
and workflow automation in data projects.

[
  {
    "skills": "pyspark",
    "avg_salary": "208172"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "189155"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "watson",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "gitlab",
    "avg_salary": "154500"
  },
  {
    "skills": "swift",
    "avg_salary": "153750"
  },
  {
    "skills": "jupyter",
    "avg_salary": "152777"
  },
  {
    "skills": "pandas",
    "avg_salary": "151821"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "145000"
  },
  {
    "skills": "golang",
    "avg_salary": "145000"
  },
  {
    "skills": "numpy",
    "avg_salary": "143513"
  },
  {
    "skills": "databricks",
    "avg_salary": "141907"
  },
  {
    "skills": "linux",
    "avg_salary": "136508"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "132500"
  },
  {
    "skills": "atlassian",
    "avg_salary": "131162"
  },
  {
    "skills": "twilio",
    "avg_salary": "127000"
  },
  {
    "skills": "airflow",
    "avg_salary": "126103"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "125781"
  },
  {
    "skills": "jenkins",
    "avg_salary": "125436"
  },
  {
    "skills": "notion",
    "avg_salary": "125000"
  },
  {
    "skills": "scala",
    "avg_salary": "124903"
  },
  {
    "skills": "postgresql",
    "avg_salary": "123879"
  },
  {
    "skills": "gcp",
    "avg_salary": "122500"
  },
  {
    "skills": "microstrategy",
    "avg_salary": "121619"
  }
]

*/