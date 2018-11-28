set names utf8;
set foreign_key_checks = 0;
drop database if exists moviecomment_2;
create database moviecomment_2;
use moviecomment_2;

create table comments(
id int not null,
name varchar(50),
star varchar(50),
comment varchar(500),
insert_date datetime,
updated_date datetime
);

