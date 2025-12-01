
use startersql;
select * from user1;

alter table user1 add column city varchar(100);
select * from user1;

-- wild card operator:
select * from user1 where name like "A%"; -- means: name start with a
select * from user1 where name like "R%"; -- means: name start with r

select * from user1 where name like "_a%"; -- means: second letter of name start with a
select * from user1 where name like "p_i__n_a%"; 

-- OFFSET
select * from user1 order by id  limit 5 offset 0;
select * from user1 order by id  limit 5 offset 4;

-- DISTINCT
select gender from user1;
select distinct gender from user1;

-- RENAME the column name
alter table user1 
change column city location varchar(150);
select * from user1;

-- REMOVE COLUMN from table
alter table user1
drop column location;
select * from user1;