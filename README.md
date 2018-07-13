# hive
hive codes
show databases;
use <database>;
insert <table> (
<coloumn1> datatype,
<coloumn2> datatype,
<coloumn3> datatype)
row format delimited
field terminated by ',';
load data local inpath <source from local file system> into table <table>;
select * from <table>;
