use startersql;

select * from user4;
select * from addresses;

-- we will join the data from 2 different table:
-- join the "id" of the "user4" with "userid" of "addresses" if they match only.

-- 1: INNER JOIN: only matching rows are join:
select user4.name, addresses.city
from user4
inner join addresses on user4.id= addresses.user_id;

-- now i want name, salary, state and pincode also
select user4.name, user4.salary, addresses.state, addresses.city, addresses.pincode as PINCODE
from user4
inner join addresses on user4.id = addresses.user_id;

-- 2. LEFT JOIN: all rows added from left table:
-- this dont macth skip if id dont match it include all with null values also
select user4.name, user4.gender, addresses.state, addresses.city
from user4
left join addresses on user4.id = addresses.user_id;

-- 3. RIGHT JOIN: 
-- this mean i want all data from right table, dont skip from right, but can skip data of left table
select user4.name, user4.gender, addresses.state, addresses.city
from user4
right join addresses on user4.id = addresses.user_id;