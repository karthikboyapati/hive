hive> select * from jsontb;
OK
REQUEST : [1514856214945] [HTTP METHOD: POST] [PATH INFO:null) [REQUEST PARAMETERS: {tenorlype=TODAY, dealtcurrency=EUR, instrumentFEX=HK, basecurrency=EUR, termsCurrency=HKD, dealtAmount=10000, direction=s}] [REQUEST BODY:] [REMOTE ADDRESS:10.89.117.22] RESPONSE: [1514856214966] [{"success M-true errorcode:null MerrorMsgmenu, mbasecurrency. W EUR termsCurrency":"HKD", "dealt Currency":"EUR", "dea tAmount":"10000","instrument":"EX.HK", "base DealAmount10000m wterms Deal Amountmem98890 Oor direction":"3","tenorType":"TODAY", "quotedPrice":" .389000","riskAmount":"12021.50 dps":4, forwardDisplaypps": 2, forwards calepps b dAZININ M 9.389000", "bidBigPips":"90","bidSmall Pips":"00", bidMain":"9.38","askallIn":"9.410483","askBigPips": "04", "askSmallpips 83m Was kMain 9. 41 timestamp":"09:23:34"}] [TOTALTIME: 21 ms]
Time taken: 0.566 seconds, Fetched: 1 row(s)
hive> select regexp_extract(namecol,'basecurrency=(.*?)(,)',1) from jsontb;
Total jobs = 1
Launching Job 1 out of 1
Number of reduce tasks is set to 0 since there's no reduce operator
Starting Job = job_1538223677755_0010, Tracking URL = http://localhost:8088/proxy/application_1538223677755_0010/
Kill Command = /usr/lib/hadoop-2.2.0/bin/hadoop job  -kill job_1538223677755_0010
Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 0
2018-09-29 18:21:05,467 Stage-1 map = 0%,  reduce = 0%
2018-09-29 18:21:13,625 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 1.88 sec
MapReduce Total cumulative CPU time: 1 seconds 880 msec
Ended Job = job_1538223677755_0010
MapReduce Jobs Launched: 
Job 0: Map: 1   Cumulative CPU: 1.88 sec   HDFS Read: 1043 HDFS Write: 4 SUCCESS
Total MapReduce CPU Time Spent: 1 seconds 880 msec
OK
EUR
Time taken: 20.745 seconds, Fetched: 1 row(s)
