-- self join is a regular join but used when "table is joined with itself"
use startersql;
select * from user4;

alter table user4 add column referred_by_id int;
select * from user4;

update user4 set referred_by_id =1 where id in (2,3,13,14,15,16,18,20);
update user4 set referred_by_id =6 where id in (4,5,6,7,8,9);
select * from user4;

-- so in this dataset, we can see that sneha is referred by some id: but we don't know the name who refereed her
-- so we will do something in referred_by_id such that we can get the name also.
select a.id, a.name as user_name, b.name as referred_by_name 
from user4 a 
inner join user4 b on a.referred_by_id = b.id;