use startersql;

select * from users;

-- lets change the email after name and gender before date_of_birth
alter table users modify column email varchar(150) after name;
alter table users modify column date_of_birth datetime after gender;

select * from users;

-- insert the data in the table
insert into users values
(1, "Anand", "a@gmail.com", "Male", "2002-03-04", default);
select * from users;

-- now if i want to enter only some specific values then:
insert into users (name, email, gender, date_of_birth) values(
"Alice","alice@gmail.com", "Female", "2002-03-13"
);
select * from users;

-- now adding multiple data
insert into users (name, email, date_of_birth, gender) values
("joe", "joe@gmail.com","2003-03-31" , "Male"),
("joe2", "joe2@gmail.com","2003-04-1" , "Female")
;
select * from users