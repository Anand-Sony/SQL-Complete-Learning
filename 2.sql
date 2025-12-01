create database startersql;

use startersql;
 
create table table_ka_name(
	id int auto_increment primary key,
    name varchar(100) not null,
    email varchar(100) not null,
    gender enum("Male", "Female", "Other"),
    date_of_birth date,
    created_at timestamp default current_timestamp
);

select * from table_ka_name;

-- rename the table
rename table table_ka_name to programmers ;
select * from programmers;
rename table programmers to users;

select * from users;

-- comment this line 
-- add a column in the user table
alter table users add column is_active boolean default true;
select * from users;

-- Remove the is_active column-- 
alter table users drop column is_active;
select * from users;

-- now modify any column-- 
alter table users  modify column name varchar(150);
select * from users;

-- now i want email should come after id, but you also have to enter the datatype of the email
alter table users modify column email varchar(100) after id;
select * from users;

-- now i want date_of_birth should come after name, but you also have to enter the datatype of the date_of_birth
alter table users modify column date_of_birth datetime after name;
select * from users;
