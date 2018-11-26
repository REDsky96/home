set names utf8;
set foreign_key_checks = 0;
drop database if exists moviecomment;
create database moviecomment;
use moviecomment;

create table newcinema(
id int not null primary key auto_increment,
name varchar(50),
star varchar(50),
comment varchar(255),
insert_date datetime,
updated_date datetime
);

create table godfather(
id int not null primary key auto_increment,
name varchar(50),
star varchar(50),
comment varchar(255)
);

create table orange(
id int not null primary key auto_increment,
name varchar(50),
star varchar(50),
comment varchar(255)
);

create table list(
id int not null primary key auto_increment,
name varchar(50),
star varchar(50),
comment varchar(255)
);

create table darkknight(
id int not null primary key auto_increment,
name varchar(50),
star varchar(50),
comment varchar(255)
);

insert into newcinema(name, star, comment)values("inoue","5", "fun!");
insert into newcinema(name, star, comment)values("ssss","5", "good!");
