-- Stored procedure is saved SQL block that can be executed later
-- like we can get the sql block by calling the function.

use startersql;
select * from user4;

delimiter $$
create procedure select_users()
begin
	select * from user4;
end $$
delimiter 

call select_users();


-- now creating block for "add_users()"
create procedure Add_users(
	in p_name varchar(100),
    in p_email varchar(100),
    in p_gender enum ("Male", "Female", "Other"),
    in p_dob date,
    in p_salary int
)
begin
	insert into user4 (name, email , gender, date_of_birth, salary) values 
    (p_name, p_email, p_gender, p_dob, p_salary);
    select * from user4;
end $$
delimiter 

call Add_users("John", "John@gmail.com", "Male" , "1999-04-03", 70000);


-- if we need to VIEW all CREATED PROCEDURE then:
show procedure status where db = "startersql";


-- if we want to DELETE any PROCEDURE then:
drop procedure if exists select_users;