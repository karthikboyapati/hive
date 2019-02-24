select hour(timecol)*3600 + minute(timecol)*60 + second(timecol) from timetb where datecol='16/09/2018';
/*timecol,datecol are coloums of timetb table
trying to refine and find the given hh:mm:ss format to seconds format and then compare it with other table*/

