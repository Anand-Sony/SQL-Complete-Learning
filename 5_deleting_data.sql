set sql_safe_updates=0;
use startersql;

select * from user2;

-- now we will learn to delete the query
delete from user2 where salary<=65000;
select * from user2;

delete from user2 where gender="Female";
select * from user2;

delete from user2 where gender="Male" and salary=75000 and name="Rohan";
select * from user2;

-- now deleting the whole table/ dataset
delete from user2; -- this will only delete the content not the overall table
select * from user2;

drop table user2; -- this will delete the overall table with content