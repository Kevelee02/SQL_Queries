SELECT sales_reps.name, count(web_events.channel), web_events.channel 
from web_events
Join accounts
on accounts.id = web_events.account_id
join sales_reps
on accounts.sales_rep_id = sales_reps.id
where sales_reps.name = 'Earlie Schleusner'
group by sales_reps.name , web_events.channel
order by count(web_events.channel) DESC
