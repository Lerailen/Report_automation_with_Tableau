select msg as Texto, likes as Gusta 
from actividad.aralleida_fbposts 
where substring(ctimestamp, 5, 2)=%actual_month% AND substring(ctimestamp, 1, 4)=%actual_year% 
ORDER BY likes DESC 
LIMIT 0,10