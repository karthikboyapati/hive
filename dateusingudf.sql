hive> add jar /home/edureka/Desktop/HiveTestJar1.jar;
/*Added /home/edureka/Desktop/HiveTestJar1.jar to class path
Added resource: /home/edureka/Desktop/HiveTestJar1.jar*/
hive> set hive.cli.print.current.db=true;
hive (default)> set hive.cli.print.header=true;
hive (default)> show tables;
/*OK
tab_name
edit
json_serde_table1
json_table
test1_part
test_big
test_part
Time taken: 0.304 seconds, Fetched: 6 row(s)*/
hive (default)> show databases;
/*OK
database_name
default
financials
jsondb
pandb
reprotdb1
sample
telecom
telecom_bkp
test
timedb
Time taken: 0.048 seconds, Fetched: 10 row(s)*/
hive (timedb)> create temporary function tempfunc as 'hivetable.hiveudf';
/*OK
Time taken: 0.022 seconds*/
hive (timedb)> select tempfunc(timecol) from maintimetb;
/*Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks is set to 0 since there's no reduce operator
Starting Job = job_1537416142190_0012, Tracking URL = http://localhost:8088/proxy/application_1537416142190_0012/
Kill Command = /usr/lib/hadoop-2.2.0/bin/hadoop job  -kill job_1537416142190_0012
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 0
2018-09-25 21:13:21,235 Stage-1 map = 0%,  reduce = 0%
2018-09-25 21:13:26,660 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 0.98 sec
MapReduce Total cumulative CPU time: 980 msec
Ended Job = job_1537416142190_0012
MapReduce Jobs Launched: 
Job 0: Map: 1   Cumulative CPU: 0.98 sec   HDFS Read: 291 HDFS Write: 18 SUCCESS
Total MapReduce CPU Time Spent: 980 msec
OK
_c0
36383
68102
83973
Time taken: 22.041 seconds, Fetched: 3 row(s)*/
hive (timedb)> select * from maintimetb;
/*OK
maintimetb.datecol	maintimetb.timecol
16/09/2018	10:06:23
17/08/2018	18:55:02
18/09/2018	23:19:33
Time taken: 0.809 seconds, Fetched: 3 row(s)
*/
