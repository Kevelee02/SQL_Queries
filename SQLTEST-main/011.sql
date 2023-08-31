select avg(standard_qty) as standard, avg(poster_qty) as poster , avg(gloss_qty) as gloss
from orders
where date_trunc('month',occurred_at) = (Select date_trunc('month',min(occurred_at))                                 from orders)  
