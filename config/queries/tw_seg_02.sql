select  CONCAT('FOLLOWERS') as followers, 
max(case when substring(ctimestamp,5,2)=01 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'ENE2017', 
max(case when substring(ctimestamp,5,2)=02 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'FEB2017', 
max(case when substring(ctimestamp,5,2)=03 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'MAR2017', 
max(case when substring(ctimestamp,5,2)=04 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'ABR2017', 
max(case when substring(ctimestamp,5,2)=05 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'MAY2017', 
max(case when substring(ctimestamp,5,2)=06 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'JUN2017', 
max(case when substring(ctimestamp,5,2)=07 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'JUL2017', 
max(case when substring(ctimestamp,5,2)=08 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'AGO2017', 
max(case when substring(ctimestamp,5,2)=09 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'SET2017', 
max(case when substring(ctimestamp,5,2)=10 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'OCT2017', 
max(case when substring(ctimestamp,5,2)=11 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'NOV2017', 
max(case when substring(ctimestamp,5,2)=12 AND substring(ctimestamp,1,4)=%actual_year%-1 then followers else 0 end) as 'DIC2017', 
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