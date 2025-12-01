-- Views function like tables, having rows and columns, but they are not physical structures storing data.
use startersql;

select * from user4;

create view rich_users as
select * from user4 where salary >70000;

-- now we will not see the "user4" table, we will use rich_users
select * from rich_users;

-- if we change/update data in user4 then it will auto. update in rich_users also.
update user4 set salary=30000 where name="Meera";
select * from rich_users;

update user4 set salary=72999 where name="Tushar";
select * from rich_users;

-- we can delete the view also:
drop view rich_users;