select msg as Texto, totalimpressions 
from actividad.aralleida_fbposts 
where substring(ctimestamp, 5, 2)=%actual_month% AND substring(ctimestamp, 1, 4)=%actual_year% 
ORDER BY totalimpressions DESC 
LIMIT 0,10