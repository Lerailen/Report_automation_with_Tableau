select  CONCAT('RT') as interacciones, 
sum(case when substring(tiempo,6,2)=01 AND substring(tiempo,1,4)=%actual_year%-1 then RT else 0 end) as 'ENE2017', 
sum(case when substring(tiempo,6,2)=02 AND substring(tiempo,1,4)=%actual_year%-1 then RT else 0 end) as 'FEB2017', 
sum(case when substring(tiempo,6,2)=03 AND substring(tiempo,1,4)=%actual_year%-1 then RT else 0 end) as 'MAR2017', 
sum(case when substring(tiempo,6,2)=04 AND substring(tiempo,1,4)=%actual_year%-1 then RT else 0 end) as 'ABR2017', 
sum(case when substring(tiempo,6,2)=05 AND substring(tiempo,1,4)=%actual_year%-1 then RT else 0 end) as 'MAY2017', 
sum(case when substring(tiempo,6,2)=06 AND substring(tiempo,1,4)=%actual_year%-1 then RT else 0 end) as 'JUN2017', 
sum(case when substring(tiempo,6,2)=07 AND substring(tiempo,1,4)=%actual_year%-1 then RT else 0 end) as 'JUL2017', 
sum(case when substring(tiempo,6,2)=08 AND substring(tiempo,1,4)=%actual_year%-1 then RT else 0 end) as 'AGO2017', 
sum(case when substring(tiempo,6,2)=09 AND substring(tiempo,1,4)=%actual_year%-1 then RT else 0 end) as 'SET2017', 
sum(case when substring(tiempo,6,2)=10 AND substring(tiempo,1,4)=%actual_year%-1 then RT else 0 end) as 'OCT2017', 
sum(case when substring(tiempo,6,2)=11 AND substring(tiempo,1,4)=%actual_year%-1 then RT else 0 end) as 'NOV2017', 
sum(case when substring(tiempo,6,2)=12 AND substring(tiempo,1,4)=%actual_year%-1 then RT else 0 end) as 'DIC2017', 
sum(case when substring(tiempo,6,2)=01 AND substring(tiempo,1,4)=%actual_year% then RT else 0 end) as 'ENE%actual_year%', 
sum(case when substring(tiempo,6,2)=02 AND substring(tiempo,1,4)=%actual_year% then RT else 0 end) as 'FEB%actual_year%', 
sum(case when substring(tiempo,6,2)=03 AND substring(tiempo,1,4)=%actual_year% then RT else 0 end) as 'MAR%actual_year%', 
sum(case when substring(tiempo,6,2)=04 AND substring(tiempo,1,4)=%actual_year% then RT else 0 end) as 'ABR%actual_year%', 
sum(case when substring(tiempo,6,2)=05 AND substring(tiempo,1,4)=%actual_year% then RT else 0 end) as 'MAY%actual_year%', 
sum(case when substring(tiempo,6,2)=06 AND substring(tiempo,1,4)=%actual_year% then RT else 0 end) as 'JUN%actual_year%', 
sum(case when substring(tiempo,6,2)=07 AND substring(tiempo,1,4)=%actual_year% then RT else 0 end) as 'JUL%actual_year%', 
sum(case when substring(tiempo,6,2)=08 AND substring(tiempo,1,4)=%actual_year% then RT else 0 end) as 'AGO%actual_year%', 
sum(case when substring(tiempo,6,2)=09 AND substring(tiempo,1,4)=%actual_year% then RT else 0 end) as 'SET%actual_year%', 
sum(case when substring(tiempo,6,2)=10 AND substring(tiempo,1,4)=%actual_year% then RT else 0 end) as 'OCT%actual_year%', 
sum(case when substring(tiempo,6,2)=11 AND substring(tiempo,1,4)=%actual_year% then RT else 0 end) as 'NOV%actual_year%', 
sum(case when substring(tiempo,6,2)=12 AND substring(tiempo,1,4)=%actual_year% then RT else 0 end) as 'DIC%actual_year%' 
from actividad.aralleida_tw 
union 
select 'RESP', 
sum(case when substring(tiempo,6,2)=01 AND substring(tiempo,1,4)=%actual_year%-1 then respuestas else 0 end) as 'ENE2017', 
sum(case when substring(tiempo,6,2)=02 AND substring(tiempo,1,4)=%actual_year%-1 then respuestas else 0 end) as 'FEB2017', 
sum(case when substring(tiempo,6,2)=03 AND substring(tiempo,1,4)=%actual_year%-1 then respuestas else 0 end) as 'MAR2017', 
sum(case when substring(tiempo,6,2)=04 AND substring(tiempo,1,4)=%actual_year%-1 then respuestas else 0 end) as 'ABR2017', 
sum(case when substring(tiempo,6,2)=05 AND substring(tiempo,1,4)=%actual_year%-1 then respuestas else 0 end) as 'MAY2017', 
sum(case when substring(tiempo,6,2)=06 AND substring(tiempo,1,4)=%actual_year%-1 then respuestas else 0 end) as 'JUN2017', 
sum(case when substring(tiempo,6,2)=07 AND substring(tiempo,1,4)=%actual_year%-1 then respuestas else 0 end) as 'JUL2017', 
sum(case when substring(tiempo,6,2)=08 AND substring(tiempo,1,4)=%actual_year%-1 then respuestas else 0 end) as 'AGO2017', 
sum(case when substring(tiempo,6,2)=09 AND substring(tiempo,1,4)=%actual_year%-1 then respuestas else 0 end) as 'SET2017', 
sum(case when substring(tiempo,6,2)=10 AND substring(tiempo,1,4)=%actual_year%-1 then respuestas else 0 end) as 'OCT2017', 
sum(case when substring(tiempo,6,2)=11 AND substring(tiempo,1,4)=%actual_year%-1 then respuestas else 0 end) as 'NOV2017', 
sum(case when substring(tiempo,6,2)=12 AND substring(tiempo,1,4)=%actual_year%-1 then respuestas else 0 end) as 'DIC2017', 
sum(case when substring(tiempo,6,2)=01 AND substring(tiempo,1,4)=%actual_year% then respuestas else 0 end) as 'ENE%actual_year%', 
sum(case when substring(tiempo,6,2)=02 AND substring(tiempo,1,4)=%actual_year% then respuestas else 0 end) as 'FEB%actual_year%', 
sum(case when substring(tiempo,6,2)=03 AND substring(tiempo,1,4)=%actual_year% then respuestas else 0 end) as 'MAR%actual_year%', 
sum(case when substring(tiempo,6,2)=04 AND substring(tiempo,1,4)=%actual_year% then respuestas else 0 end) as 'ABR%actual_year%', 
sum(case when substring(tiempo,6,2)=05 AND substring(tiempo,1,4)=%actual_year% then respuestas else 0 end) as 'MAY%actual_year%', 
sum(case when substring(tiempo,6,2)=06 AND substring(tiempo,1,4)=%actual_year% then respuestas else 0 end) as 'JUN%actual_year%', 
sum(case when substring(tiempo,6,2)=07 AND substring(tiempo,1,4)=%actual_year% then respuestas else 0 end) as 'JUL%actual_year%', 
sum(case when substring(tiempo,6,2)=08 AND substring(tiempo,1,4)=%actual_year% then respuestas else 0 end) as 'AGO%actual_year%', 
sum(case when substring(tiempo,6,2)=09 AND substring(tiempo,1,4)=%actual_year% then respuestas else 0 end) as 'SET%actual_year%', 
sum(case when substring(tiempo,6,2)=10 AND substring(tiempo,1,4)=%actual_year% then respuestas else 0 end) as 'OCT%actual_year%', 
sum(case when substring(tiempo,6,2)=11 AND substring(tiempo,1,4)=%actual_year% then respuestas else 0 end) as 'NOV%actual_year%', 
sum(case when substring(tiempo,6,2)=12 AND substring(tiempo,1,4)=%actual_year% then respuestas else 0 end) as 'DIC%actual_year%' 
from actividad.aralleida_tw 
union 
select 'GUSTA', 
sum(case when substring(tiempo,6,2)=01 AND substring(tiempo,1,4)=%actual_year%-1 then me_gusta else 0 end) as 'ENE2017', 
sum(case when substring(tiempo,6,2)=02 AND substring(tiempo,1,4)=%actual_year%-1 then me_gusta else 0 end) as 'FEB2017', 
sum(case when substring(tiempo,6,2)=03 AND substring(tiempo,1,4)=%actual_year%-1 then me_gusta else 0 end) as 'MAR2017', 
sum(case when substring(tiempo,6,2)=04 AND substring(tiempo,1,4)=%actual_year%-1 then me_gusta else 0 end) as 'ABR2017', 
sum(case when substring(tiempo,6,2)=05 AND substring(tiempo,1,4)=%actual_year%-1 then me_gusta else 0 end) as 'MAY2017', 
sum(case when substring(tiempo,6,2)=06 AND substring(tiempo,1,4)=%actual_year%-1 then me_gusta else 0 end) as 'JUN2017', 
sum(case when substring(tiempo,6,2)=07 AND substring(tiempo,1,4)=%actual_year%-1 then me_gusta else 0 end) as 'JUL2017', 
sum(case when substring(tiempo,6,2)=08 AND substring(tiempo,1,4)=%actual_year%-1 then me_gusta else 0 end) as 'AGO2017', 
sum(case when substring(tiempo,6,2)=09 AND substring(tiempo,1,4)=%actual_year%-1 then me_gusta else 0 end) as 'SET2017', 
sum(case when substring(tiempo,6,2)=10 AND substring(tiempo,1,4)=%actual_year%-1 then me_gusta else 0 end) as 'OCT2017', 
sum(case when substring(tiempo,6,2)=11 AND substring(tiempo,1,4)=%actual_year%-1 then me_gusta else 0 end) as 'NOV2017', 
sum(case when substring(tiempo,6,2)=12 AND substring(tiempo,1,4)=%actual_year%-1 then me_gusta else 0 end) as 'DIC2017', 
sum(case when substring(tiempo,6,2)=01 AND substring(tiempo,1,4)=%actual_year% then me_gusta else 0 end) as 'ENE%actual_year%', 
sum(case when substring(tiempo,6,2)=02 AND substring(tiempo,1,4)=%actual_year% then me_gusta else 0 end) as 'FEB%actual_year%', 
sum(case when substring(tiempo,6,2)=03 AND substring(tiempo,1,4)=%actual_year% then me_gusta else 0 end) as 'MAR%actual_year%', 
sum(case when substring(tiempo,6,2)=04 AND substring(tiempo,1,4)=%actual_year% then me_gusta else 0 end) as 'ABR%actual_year%', 
sum(case when substring(tiempo,6,2)=05 AND substring(tiempo,1,4)=%actual_year% then me_gusta else 0 end) as 'MAY%actual_year%', 
sum(case when substring(tiempo,6,2)=06 AND substring(tiempo,1,4)=%actual_year% then me_gusta else 0 end) as 'JUN%actual_year%', 
sum(case when substring(tiempo,6,2)=07 AND substring(tiempo,1,4)=%actual_year% then me_gusta else 0 end) as 'JUL%actual_year%', 
sum(case when substring(tiempo,6,2)=08 AND substring(tiempo,1,4)=%actual_year% then me_gusta else 0 end) as 'AGO%actual_year%', 
sum(case when substring(tiempo,6,2)=09 AND substring(tiempo,1,4)=%actual_year% then me_gusta else 0 end) as 'SET%actual_year%', 
sum(case when substring(tiempo,6,2)=10 AND substring(tiempo,1,4)=%actual_year% then me_gusta else 0 end) as 'OCT%actual_year%', 
sum(case when substring(tiempo,6,2)=11 AND substring(tiempo,1,4)=%actual_year% then me_gusta else 0 end) as 'NOV%actual_year%', 
sum(case when substring(tiempo,6,2)=12 AND substring(tiempo,1,4)=%actual_year% then me_gusta else 0 end) as 'DIC%actual_year%' 
from actividad.aralleida_tw 
union 
select CONCAT('CLICKS'), 
sum(case when substring(tiempo,6,2)=01 AND substring(tiempo,1,4)=%actual_year%-1 then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'ENE2017', 
sum(case when substring(tiempo,6,2)=02 AND substring(tiempo,1,4)=%actual_year%-1 then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'FEB2017', 
sum(case when substring(tiempo,6,2)=03 AND substring(tiempo,1,4)=%actual_year%-1 then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'MAR2017', 
sum(case when substring(tiempo,6,2)=04 AND substring(tiempo,1,4)=%actual_year%-1 then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'ABR2017', 
sum(case when substring(tiempo,6,2)=05 AND substring(tiempo,1,4)=%actual_year%-1 then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'MAY2017', 
sum(case when substring(tiempo,6,2)=06 AND substring(tiempo,1,4)=%actual_year%-1 then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'JUN2017', 
sum(case when substring(tiempo,6,2)=07 AND substring(tiempo,1,4)=%actual_year%-1 then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'JUL2017', 
sum(case when substring(tiempo,6,2)=08 AND substring(tiempo,1,4)=%actual_year%-1 then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'AGO2017', 
sum(case when substring(tiempo,6,2)=09 AND substring(tiempo,1,4)=%actual_year%-1 then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'SET2017', 
sum(case when substring(tiempo,6,2)=10 AND substring(tiempo,1,4)=%actual_year%-1 then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'OCT2017', 
sum(case when substring(tiempo,6,2)=11 AND substring(tiempo,1,4)=%actual_year%-1 then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'NOV2017', 
sum(case when substring(tiempo,6,2)=12 AND substring(tiempo,1,4)=%actual_year%-1 then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'DIC2017', 
sum(case when substring(tiempo,6,2)=01 AND substring(tiempo,1,4)=%actual_year% then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'ENE%actual_year%', 
sum(case when substring(tiempo,6,2)=02 AND substring(tiempo,1,4)=%actual_year% then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'FEB%actual_year%', 
sum(case when substring(tiempo,6,2)=03 AND substring(tiempo,1,4)=%actual_year% then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'MAR%actual_year%', 
sum(case when substring(tiempo,6,2)=04 AND substring(tiempo,1,4)=%actual_year% then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'ABR%actual_year%', 
sum(case when substring(tiempo,6,2)=05 AND substring(tiempo,1,4)=%actual_year% then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'MAY%actual_year%', 
sum(case when substring(tiempo,6,2)=06 AND substring(tiempo,1,4)=%actual_year% then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'JUN%actual_year%', 
sum(case when substring(tiempo,6,2)=07 AND substring(tiempo,1,4)=%actual_year% then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'JUL%actual_year%', 
sum(case when substring(tiempo,6,2)=08 AND substring(tiempo,1,4)=%actual_year% then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'AGO%actual_year%', 
sum(case when substring(tiempo,6,2)=09 AND substring(tiempo,1,4)=%actual_year% then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'SET%actual_year%', 
sum(case when substring(tiempo,6,2)=10 AND substring(tiempo,1,4)=%actual_year% then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'OCT%actual_year%', 
sum(case when substring(tiempo,6,2)=11 AND substring(tiempo,1,4)=%actual_year% then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'NOV%actual_year%', 
sum(case when substring(tiempo,6,2)=12 AND substring(tiempo,1,4)=%actual_year% then (clics_de_perfil)+(clics_en_url)+(clics_de_etiquetas)+(ampliaciones_de_detalles)+(clics_en_enlaces_permanentes) else 0 end) as 'DIC%actual_year%' 
from actividad.aralleida_tw