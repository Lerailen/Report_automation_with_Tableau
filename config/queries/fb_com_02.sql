select msg as texto, likes as gusta 
from actividad.aralleida_fbposts 
where substring(ctimestamp, 5, 2)=%actual_month% AND substring(ctimestamp, 1, 4)=%actual_year% 
ORDER BY likes ASC 
LIMIT 0,10