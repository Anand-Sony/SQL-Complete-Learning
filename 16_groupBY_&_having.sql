-- group by is used to aggregate functions like count, sum etc.
-- it is used to group rows that have same values in specified column 

use startersql;
select * from user4;

select gender, avg(salary) from user4 group by gender;

select gender, avg(salary) , count(*) from user4 group by gender;

-- NOTE: in GROUP_BY we use "HAVING" in place of "WHERE"
select gender, avg(salary), count(*) 
from user4 group by gender;
-- not valid-> where avg(alary) > 61000;  

select gender, avg(salary), count(*) 
from user4 group by gender
having avg(salary) > 61000;

select gender, avg(salary), count(*) 
from user4 group by gender
having avg(salary) < 61000;

-- SO WHERE IS USED BEFORE GROUPING 
-- AND HAVING IS USED AFTER GROUPING


-- now i want people referred by some id - by grouping
select referred_by_id , count(*)
from user4 
where referred_by_id is not null
group by referred_by_id;


-- NOW ROLLUP: it will give avg of "subtotal" and "grand_total" not the avg of 2 values shown it give weighted avg. 
select gender, avg(salary), count(*)
from user4
group by gender
with rollup;
