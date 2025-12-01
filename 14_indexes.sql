-- if we want that my query runs very fast when i search/query for email then 
-- i will make the email as index
-- if we want that my query runs very fast when i search/query for salary then 
-- i will make the salary as index
use startersql;

select * from user4;

show indexes from user4;
-- show here column_name has only id, so data will fetch fast for the id

-- 1. SINGLE COLUMN INDEX
create index idx_email on user4(email);
show indexes from user4;
select email from user4;


-- if we fetch data from 2 query and we want this fetching fast then:
-- 2. MULTI COLUMN FETCH
create index idx_gender_salary on user4(gender, salary);
show indexes from user4;
select email,gender, salary from user4;
select * from user4 where salary>70000 and gender="Female";
select * from user4 where gender="Female" and salary>70000;

-- if we apply query for gender and then salary then it will run fast 
-- because in indexes gender comes before the salary

-- too many index will take a lot of disk space if the table is large.
-- DROP INDEX:
drop index idx_gender_salary on user4;
drop index idx_email on user4;
show indexes from user4;
