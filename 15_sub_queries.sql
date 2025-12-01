use startersql;
select * from user4;

-- sub_queries is a query nested inside another query
-- it break down complex problem into smaller one
select avg(salary) from user4;

-- now use sub-query:
select * from user4 where salary > (select avg(salary) from user4);

select max(salary) from user4 where gender="Male";
select * from user4 where salary > (select max(salary) from user4 where gender="Male");



select id, name, referred_by_id
from user4
where referred_by_id;

select id, name, referred_by_id
from user4
where referred_by_id in (select id from user4 where salary > (select max(salary) from user4 where gender="Male"));

-- but now i want the name in referred_by_id column
select a.id , a.name, b.name
from user4 a
inner join user4 b on a.referred_by_id = b.id;


-- now merge above these 2 query
select a.id , a.name, b.name
from user4 a
inner join user4 b on a.referred_by_id = b.id
where b.salary > (select max(salary) from user4 where gender="Male");