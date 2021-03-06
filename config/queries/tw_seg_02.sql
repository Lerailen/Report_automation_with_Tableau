select  CONCAT('FOLLOWERS') as followers, 
max(case when substring(ctimestamp,5,2)=01 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'ENE%last_year%', 
max(case when substring(ctimestamp,5,2)=02 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'FEB%last_year%', 
max(case when substring(ctimestamp,5,2)=03 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'MAR%last_year%', 
max(case when substring(ctimestamp,5,2)=04 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'ABR%last_year%', 
max(case when substring(ctimestamp,5,2)=05 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'MAY%last_year%', 
max(case when substring(ctimestamp,5,2)=06 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'JUN%last_year%', 
max(case when substring(ctimestamp,5,2)=07 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'JUL%last_year%', 
max(case when substring(ctimestamp,5,2)=08 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'AGO%last_year%', 
max(case when substring(ctimestamp,5,2)=09 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'SET%last_year%', 
max(case when substring(ctimestamp,5,2)=10 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'OCT%last_year%', 
max(case when substring(ctimestamp,5,2)=11 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'NOV%last_year%', 
max(case when substring(ctimestamp,5,2)=12 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'DIC%last_year%', 
max(case when substring(ctimestamp,5,2)=01 AND substring(ctimestamp,1,4)=%actual_year% then followers else 0 end) as 'ENE%actual_year%', 
max(case when substring(ctimestamp,5,2)=02 AND substring(ctimestamp,1,4)=%actual_year% then followers else 0 end) as 'FEB%actual_year%', 
max(case when substring(ctimestamp,5,2)=03 AND substring(ctimestamp,1,4)=%actual_year% then followers else 0 end) as 'MAR%actual_year%', 
max(case when substring(ctimestamp,5,2)=04 AND substring(ctimestamp,1,4)=%actual_year% then followers else 0 end) as 'ABR%actual_year%', 
max(case when substring(ctimestamp,5,2)=05 AND substring(ctimestamp,1,4)=%actual_year% then followers else 0 end) as 'MAY%actual_year%', 
max(case when substring(ctimestamp,5,2)=06 AND substring(ctimestamp,1,4)=%actual_year% then followers else 0 end) as 'JUN%actual_year%', 
max(case when substring(ctimestamp,5,2)=07 AND substring(ctimestamp,1,4)=%actual_year% then followers else 0 end) as 'JUL%actual_year%', 
max(case when substring(ctimestamp,5,2)=08 AND substring(ctimestamp,1,4)=%actual_year% then followers else 0 end) as 'AGO%actual_year%', 
max(case when substring(ctimestamp,5,2)=09 AND substring(ctimestamp,1,4)=%actual_year% then followers else 0 end) as 'SET%actual_year%', 
max(case when substring(ctimestamp,5,2)=10 AND substring(ctimestamp,1,4)=%actual_year% then followers else 0 end) as 'OCT%actual_year%', 
max(case when substring(ctimestamp,5,2)=11 AND substring(ctimestamp,1,4)=%actual_year% then followers else 0 end) as 'NOV%actual_year%', 
max(case when substring(ctimestamp,5,2)=12 AND substring(ctimestamp,1,4)=%actual_year% then followers else 0 end) as 'DIC%actual_year%'   
from actividad.aralleida_tw_tl