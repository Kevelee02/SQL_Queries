select id,total, case 
	when total > 2000 then 'At least 2000'  		
  when total between 1000 and 2000 then 'Between 	1000 and 2000'
  else 'Less than 1000'
 end as categoria
from orders
