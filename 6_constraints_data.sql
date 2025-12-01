-- constraints:
use startersql;
create table user3(
	id int auto_increment primary key,
    name varchar(100) not null,
    email varchar(100) not null unique,
    gender enum("Male", "Female", "Other"),
    date_of_birth date,
    salary decimal(10, 2),
    created_at timestamp default current_timestamp
);
select * from user3;

insert into user3 (name, email, gender, date_of_birth,salary) values
("Aarav", "aarav@gmail.com", "Male", "1995-05-14", 75000);
select * from user3;

insert into user3 (name, email, gender, date_of_birth,salary) values
("Arav", "aarav@gmail.com", "Male", "1995-05-14", 75000);
-- it will not accept : because email should be "unique"
select * from user3;

-- now if you want to give constraint for name, then:
alter table user3 add constraint unique_name unique(name);

insert into user3 (name, email, gender, date_of_birth,salary) values
("arav", "arav@gmail.com", "Male", "1995-05-14", 75000);
