create database startersql;

use startersql;
 
create table table_ka_name(
	id int auto_increment primary key,
    name varchar(100) not null,
    email varchar(100) not null,
    gender enum("Male", "Female", "Other"),
    date_of_birth date,
    created_at timestamp default current_timestamp
)

select * from table_ka_name;
select id,email from table_ka_name;

select * from table_ka_name;

# now delete the database
drop database startersql;
select * from table_ka_name; # no output