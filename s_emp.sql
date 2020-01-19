create database s_emp;
use s_emp;



create table emp(id bigint auto_increment primary key, name varchar(20) UNIQUE not null, address varchar(100) default 'dhaka'  , age int);