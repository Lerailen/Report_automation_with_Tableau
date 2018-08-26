select texto as Texto, impresiones 
from actividad.aralleida_tw 
where substring(tiempo,6,2)=%actual_month% AND substring(tiempo,1,4)=%actual_year% 
ORDER BY impresiones DESC 
LIMIT 0,10