Select SUM(gloss_amt_usd), Date_part('month', occurred_at) as month , accounts.name
from orders
join accounts
on accounts.id = orders.account_id
where accounts.name ='Walmart'
group by Date_part('month', occurred_at), accounts.name
ORDER BY sum(total_amt_usd) desc
