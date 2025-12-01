set sql_safe_updates =0;
use startersql;
select * from user1;

-- count no. of users in table
select count(*) from user1;

select count(*) from user1 where gender="Male";
select count(*) from user1 where gender="Female";

select min(salary) as salary from user1;
select max(salary) as max_salary from user1;

-- sum of salary:
select sum(salary) as sum_salary_male from user1 where gender="Male";
select sum(salary) as sum_salary_female from user1 where gender="Female";

select avg(salary) as avg_salary from user1 where gender="Male";
select avg(salary) as avg_salary from user1 where gender="Female";

-- now using groupby function:
select gender, avg(salary) as avg_salary from user1 group by gender;

select id, gender, name ,length(name) as len_name from user1;

update user1 set salary= 5700 where name="Divya";
update user1 set salary= 690 where name="Ananya";
select id,name, gender, salary , length(salary)-3 as salary_figure from user1;

-- multiple function in one line:
select id, lower(name) as lower_name, gender , length(salary)-3 as salary_figure from user1;

-- concat funtion:
select id, concat(lower(name) ," ", gender) as username from user1;
select id, concat(lower(name) ," ", gender) as username, now() as time from user1;

select concat(name, id) as username , gender, year(date_of_birth) as year, month(date_of_birth) as month, day(date_of_birth) as date, concat(length(salary)-3 ,"K") as salary from user1;

select name, datediff( curdate(), date_of_birth ) as days from user1;