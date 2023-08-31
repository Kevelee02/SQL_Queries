select sales_reps.name ,Sum( orders.total_amt_usd), case
	when Sum(orders.total_amt_usd) > 200000 then 'Lvl 3'
  when Sum (orders.total_amt_usd)  between 200000 and 100000 then 'Lvl 2'
  else 'lvl 1' end as Level
from orders
join accounts
on accounts.id = orders.account_id
join sales_reps
on sales_reps.id = accounts.sales_rep_id
where occurred_at between '01-01-2016' and '01-01-2017'
group by 1
order by orders.total_amt_usd DESC

