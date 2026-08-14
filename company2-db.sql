create database company2_db;
use company2_db;
select * from employee;
select location,count(*) from employee group by location;
select job,count(*) from employee group by job;
select location,avg(age) from employee group by location ;
select job,count(*),avg(age) from employee group by job;
show tables;
select  distinct location from employee;
select first_name,last_name from employee where location="india"
union
select first_name,last_name from employee where location="uk";

select location,count(*) from employee group by location having count(*)>100;
