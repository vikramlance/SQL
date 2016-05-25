select * from city where id=1661;
  select * from city where COUNTRYCODE ='JPN';		  
  select * from city;	
select distinct city from station where REMAINDER(id, 2) =0;
 select count(city ) - count(distinct city ) from station ;