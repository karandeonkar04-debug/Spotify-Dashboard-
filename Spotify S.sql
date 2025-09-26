use spotify;

/* Total User*/
select COUNT(user_id) as total_users
from `spotify clean`;

/* Total Skip Rate */
Select sum( skip_rate) as total_skip_rate
from `spotify clean`;

/* Total Offline Listerner*/
select sum(offline_listening) as offline_listerner
from `spotify clean`; 

/* Total churned */
select sum(is_churned) as Total_Churned
from `spotify clean` ;

/* Total User By Gender */
select 
gender,
count(user_id) as total_user 
from 
`spotify clean`
group by 
gender
 order by
  total_user desc;

/* Top 5 country user */
select 
country,
count(user_id) as total_user
from 
`spotify clean`
group by
country 
order by
total_user desc 
limit 5 ;

/* Device Type By User */
select 
device_type,
count(user_id) as total_user
from 
`spotify clean`
group by 
device_type
order by 
total_user desc ;

/* Skip Rate By Country */
select
country,
sum(skip_rate) as total_skip 
from 
`spotify clean` 
group by
country
order by
total_skip desc ;

/* Subscription By User */
select 
subscription_type,
count(user_id) as total_user 
from 
`spotify clean`
group by
subscription_type 
order by
total_user desc;

/* Age Of User */
select 
age,
count(user_id) as total_user
from 
`spotify clean`
group by
age 
order by
total_user desc ;

/* Song Play By  Device */
select 
device_type,
sum(songs_played_per_day) as song_per_day
from
`spotify clean`
group by
device_type 
order by
song_per_day desc;

/* Highest Average Lising Time By Country */
select 
country,
avg(listening_time) as avg_listening_time 
from
`spotify clean`
group by
country 
order by 
avg_listening_time desc
limit 1 ;

/* Average Listening Time Between Male And Female Users */
select 
gender,
avg(listening_time) as avg_listening_time
from 
`spotify clean`
group by
gender
order by
avg_listening_time 
limit 2;

select avg(ads_listened_per_week) as avg_ads_listened
from `spotify clean`
where subscription_type = 'Free';





  