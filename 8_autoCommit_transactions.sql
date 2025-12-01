use startersql;

set autocommit =0;
select * from user1;
delete from user1 where name="Farhan";
select * from user1;

-- so i deleted the farhan row, so now i want it back so use "rollback" and get data
rollback ;
select * from user1;

-- so "set commit=0" means we can do any change and chnages will not save until we write commit

-- now we will do without "autocommit=0"
select * from user1;
delete from user1 where name = "Farhan";
commit;
select * from user1;
rollback;
select * from user1;
-- now data is deleted permanently


-- use autocommit=0 for 2 rows deleted
set autocommit=0;
select * from user1;
delete from user1 where name = "Raj";
delete from user1 where name = "Sneha";
select * from user1;
rollback;
select * from user1;
-- so yes, data was recalled again and was not deleted permanently
