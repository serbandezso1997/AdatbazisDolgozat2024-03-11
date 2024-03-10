create database if not exists ugynokseg
default character set utf8
default collate utf8_hungarian_ci;

grant all privileges
on ugynokseg.*
to ugynokseg@localhost
identified by 'titok';

use ugynokseg;

create table if not exists tours(
    id int not null primary key auto_increment,
    destination varchar(50),
    duration int,
    price double
);
create table if not exists reservations(
    id int not null primary key auto_increment,
    date date,
    customername varchar(50),
    tourId int
);
