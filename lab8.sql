-- 1.
-- a)
create function kru(val integer) returns integer as $$
begin
return val + 1;
end; $$
language plpgsql;

--b)
create function sum(val1 numeric, val2 numeric) returns numeric as $$
begin
return val1 + val2;
end; $$
language plpgsql;

--c)
create function bool4(val integer) returns boolean as $$
begin
return(val % 2 = 0);
end; $$
language plpgsql;
--d)
create function check_password3(str varchar) returns boolean as $$
begin
return(length(str) = 6);
end; $$
language plpgsql;
--e)
create function kru2(val numeric, out kru2_1 numeric, out kru2_2 numeric) as $$
begin
kru2_1:= val * val;
kru2_2:= val + val;
end; $$
language plpgsql;


--2.
--a)
--b)
--c)
--d)
--e)

--3.
--Advance Differences between Stored Procedure and Function in SQL Server.
-- The procedure allows SELECT as well as DML(INSERT/UPDATE/DELETE) statement in it whereas Function allows only SELECT statement in it.
-- Procedures cannot be utilized in a SELECT statement whereas Function can be embedded in a SELECT statement.

--4.
--a)
create table worker(
    id integer primary key,
    name varchar(255),
    date_of_birth date,
    age integer,
    salary integer,
    workexperince integer,
    discount integer
);

insert into worker values (1, 'Amina', '2002-09-13', 19, 59000, 13, 10);
insert into worker values (2, 'Masha', '2002-03-08', 19, 120000, 2, 15);
insert into worker values (3, 'Mastura', '2004-01-01', 17, 150000, 3, 15);
insert into worker values (4, 'Freshta', '2002-09-09', 19, 126000, 0, 10);
insert into worker values (5, 'olya', '2004-12-03', 17, 23000, 5, 15);


create procedure kru() as
$$
begin
update worker
set salary = (workexperince / 2) * 0.1 * salary + salary,
discount = (workexperince / 2)* 0.1 * discount + discount,
discount = (workexperince / 5)* 0.01 * discount + discount;
end; $$
language plpgsql;

--b)
create procedure kru2() as
$$
begin
update worker
set salary = salary * 1.15 where age > 40;
update worker
set salary = salary * 1.15 * (workexperince / 8);
update worker
set discount = 20 where workexperince > 8;
end; $$
language plpgsql;

--5.
create table members(
    memid integer,
    surname varchar(200),
    firstname varchar(200),
    address varchar(300),
    zipcode integer,
    telephone varchar(20),
    recommendedby integer,
    joindate timestamp
);

create table bookings(
    facid integer,
    memid integer,
    starttime timestamp,
    slots integer
);

create table facilities(
    facid integer,
    name varchar(100),
    membercost numeric,
    guestcost numeric,
    initialoutlay numeric,
    monthlymaintenance numeric
);


with recursive recommenders(recommender, member) as (
	select recommendedby, memid
		from members
	union all
	select members.recommendedby, recommenders.member
		from recommenders
		inner join members
			on members.memid = recommenders.recommender
)


select recommenders.member, recommenders.recommender, members.firstname, members.surname
from recommenders inner join members on recommenders.recommender = members.memid
where recommenders.member = 22 or recommenders.member = 12
order by recommenders.member asc, recommenders.recommender desc;

