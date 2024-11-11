select current_date, //date
current_time,   //time with timezone
localtime,   //time without time zone
now(),   //timestamp with time zone
timeofday();  //text like Mon Nov 11 16:14:31.835475 2024 GMT

// examples

select first_name,
last_name,
hire_date,
AGE(hire_date) as age_of_hire

from employees;

//  date_part

select current_date,

date_part('century', current_date) as century_,  //21
date_part('quarter', current_date) as  quarter_,  //4
date_part('decade', current_date) as decade_, //202
date_part('year', current_date) as  year_, //2024

date_part('month', current_date) as month_, //11
date_part('day', current_date) as  day_, //11
date_part('hour', current_date) as hour_, //0
date_part('minute', current_date) as  minute_, //0
date_part('dow', current_date) as  dow_,  //1
date_part('doy', current_date) as doy_;  //316

//

select current_date,

date_part('century', current_date) as century_,  
date_part('quarter', current_date) as  quarter_,  
date_part('decade', current_date) as decade_, 
date_part('year', current_date) as  year_,
date_part('month', current_date) as month_, 
date_part('day', current_date) as  day_, 
date_part('hour', current_time) as hour_, 
date_part('minute', current_time) as  minute_, 
date_part('dow', current_date) as  dow_,  
date_part('doy', current_date) as doy_;  
date_part('timezone', current_time) as  timezone_;

show timezone;

SET TIME ZONE  'UTC';


/// extract

SELECT CURRENT_DATE,
EXTRACT (CENTURY FROM CURRENT_DATE) as century_,
EXTRACT (QUARTER FROM CURRENT_DATE) as quarter_,
EXTRACT (DECADE FROM CURRENT_DATE) as decade_,
EXTRACT (YEAR FROM CURRENT_DATE) as year_,
EXTRACT (MONTH FROM CURRENT_DATE) as month_,
EXTRACT (DAY FROM CURRENT_DATE) as day_,
EXTRACT (HOUR FROM CURRENT_TIME) as hour_,
EXTRACT (MINUTE FROM CURRENT_TIME) as minute_,
EXTRACT (DOW FROM CURRENT_DATE) as dow_,
EXTRACT (DOY FROM CURRENT_DATE) as doy_,
EXTRACT (TIMEZONE FROM CURRENT_TIME) as timezone_;


//date_trunc


SELECT

DATE_TRUNC('quarter', TIMESTAMP '2023-04-17 06:12:38') as quarter_,
DATE_TRUNC('year', TIMESTAMP '2023-04-17 06:12:38') as year_,
DATE_TRUNC('month', TIMESTAMP '2023-04-17 06:12:38') as month_,
DATE_TRUNC('day', TIMESTAMP '2023-04-17 06:12:38') as day_,
DATE_TRUNC('hour', TIMESTAMP '2023-04-17 06:12:38') as hour_,
DATE_TRUNC('minute', TIMESTAMP '2023-04-17 06:12:38') as minute_,
DATE_TRUNC('second', TIMESTAMP '2023-04-17 06:12:38') as second_;
