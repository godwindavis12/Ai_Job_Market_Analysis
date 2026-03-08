USE ai_job_market;
select * from ai_job_market;

create view top_5_job_title as
SELECT job_title,count(*) as count from  ai_job_market
group by job_title
order by count desc
limit 5;

create view count_of_exp_levels as
SELECT experience_level,count(*) as count from  ai_job_market
group by experience_level
order by count desc
limit 5;

create view highest_average_salary_city as
SELECT city,avg(annual_salary_usd) from  ai_job_market
group by city
order by avg(annual_salary_usd) desc
limit 5;


create view education_required_and_salary as
SELECT education_required,avg(annual_salary_usd) from  ai_job_market
group by education_required
order by avg(annual_salary_usd) desc
limit 5;

create view top_salary_country as
SELECT country,avg(annual_salary_usd) from  ai_job_market
group by country
order by avg(annual_salary_usd) desc
limit 5;


create view low_salary_country as
SELECT country,avg(annual_salary_usd) from  ai_job_market
group by country
order by avg(annual_salary_usd) asc
limit 5;

create view lowest_average_salary_city as
SELECT city,avg(annual_salary_usd) from  ai_job_market
group by city
order by avg(annual_salary_usd) asc
limit 5;
select * from lowest_average_salary_city;

create view lowest_demand_score as
SELECT job_title,avg(demand_score) from  ai_job_market
group by job_title
order by avg(demand_score) asc
limit 5;

create view highest_demand_score as
SELECT job_title,avg(demand_score) from  ai_job_market
group by job_title
order by avg(demand_score) desc
limit 5;

create view total_count_jobs as 
select count(job_title) as total_counts from ai_job_market;

create view job_title_from_industry_and_demand as
select distinct job_title,industry,demand_score from ai_job_market
order by demand_score desc
limit 5;

create view job_type_remote_or_not as
SELECT remote_work,avg(annual_salary_usd) from  ai_job_market
group by remote_work
order by avg(annual_salary_usd) asc
limit 5;
select * from job_type_remote_or_not;

