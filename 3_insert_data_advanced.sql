create database if not exists startersql;
use startersql;

create table user1(
	id int auto_increment primary key,
    name varchar(100) not null,
    email varchar(100) not null,
    gender enum("Male", "Female", "Other"),
    date_of_birth date,
    salary decimal(10, 2),
    created_at timestamp default current_timestamp
);

select * from user1;

INSERT INTO user1 (name, email, gender, date_of_birth, salary) VALUES
('Aarav', 'aarav@example.com', 'Male', '1995-05-14', 65000.00),
('Ananya', 'ananya@example.com', 'Female', '1990-11-23', 72000.00),
('Raj', 'raj@example.com', 'Male', '1988-02-17', 58000.00),
('Sneha', 'sneha@example.com', 'Female', '2000-08-09', 50000.00),
('Farhan', 'farhan@example.com', 'Male', '1993-12-30', 61000.00),
('Priyanka', 'priyanka@example.com', 'Female', '1985-07-12', 84000.00),
('Aisha', 'aisha@example.com', 'Female', '1997-03-25', 56000.00),
('Aditya', 'aditya@example.com', 'Male', '1992-06-17', 69000.00),
('Meera', 'meera@example.com', 'Female', '1989-09-05', 77000.00),
('Ishaan', 'ishaan@example.com', 'Male', '2001-10-02', 45000.00),
('Tanvi', 'tanvi@example.com', 'Female', '1994-04-18', 62000.00),
('Rohan', 'rohan@example.com', 'Male', '1986-12-01', 75000.00),
('Zoya', 'zoya@example.com', 'Female', '1998-01-15', 54000.00),
('Karan', 'karan@example.com', 'Male', '1990-08-22', 68000.00),
('Nikita', 'nikita@example.com', 'Female', '1987-03-10', 71000.00),
('Manav', 'manav@example.com', 'Male', '1996-11-29', 61000.00),
('Divya', 'divya@example.com', 'Female', '1991-02-28', 57000.00),
('Harshit', 'harshit@example.com', 'Male', '1993-09-09', 65000.00),
('Ritika', 'ritika@example.com', 'Female', '1999-05-05', 52000.00),
('Imran', 'imran@example.com', 'Male', '1995-07-30', 63000.00),
('Juhi', 'juhi@example.com', 'Female', '1992-10-14', 59000.00),
('Tushar', 'tushar@example.com', 'Male', '1990-01-08', 73000.00),
('Lata', 'lata@example.com', 'Female', '1984-11-11', 78000.00),
('Yash', 'yash@example.com', 'Male', '1997-06-06', 64000.00),
('Fatima', 'fatima@example.com', 'Female', '1993-03-03', 55000.00);

select * from user1;

select name,gender from user1;
select gender, name from user1;

-- filter for gender
select gender, name from user1 where gender="Female";

-- filter for salary
select name, salary from user1 where salary>=65000;
select * from user1 where salary>=60000;

-- filter for date_of_birth
select * from user1 where date_of_birth between '1995-05-14' and "2015-11-23";

select * from user1 where gender in ("Male", "Female");

-- use of "and"
select * from user1 where gender="Male" and salary>="65000";

-- use of "and" & "or"
select * from user1 where gender="Male" and salary>="70000" or gender="Female" and salary<="53000";

-- use of order in any column
select * from user1 where gender="Female" order by date_of_birth asc;
select * from user1 where gender="Female" order by date_of_birth desc;
-- if i want only 1 from this above dataset then use "limit"
select * from user1 where gender="Female" order by date_of_birth desc limit 5;

-- use limit to get top rows
select * from user1 where salary>=75000 ;
select * from user1 where salary>=75000 limit 2; -- this will give me top 2 row
