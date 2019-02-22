show databases;
create database karthikdb;
use karthikdb;
create table karthiktb(
sno int,
name string,
college string,
gender string,
SelectedCompany string,
Rollnumber int)
row format delimited fields terminated by ','
location '/home/karthik/karthik.csv';
