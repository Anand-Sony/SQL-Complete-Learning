use startersql;
set sql_safe_updates=0;

select * from user4;
select * from admin_users;

-- now i want to add the "admin_users" data to the "user4" data: 
-- UNION: this will add data but remove the duplicates automatically
select name from user4
union
select name from admin_users;

-- now fetch the email also
select name, email from user4
union
select name, email from admin_users;

-- UNION ALL: let's try
-- this will add all data and will not remove the duplicate data
-- so let's add some dupliacte data to the admin_users
insert into admin_users(id, name, email, gender, date_of_birth, salary) values
(105,'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000);

select * from admin_users;
select * from user4;

select name,email from user4
union all
select name, email from admin_users;

-- now add the role also: like data from admin table will be called as admin and from user will be User
select name,email, "User" as role from user4
union all
select name, email, "Admin" as role from admin_users;


-- now if we want to order the above data by "date_of_birth"
select name, email, "USER" as role, date_of_birth from user4
union
select name, email,"ADMIN" as role, date_of_birth from admin_users
order by date_of_birth;