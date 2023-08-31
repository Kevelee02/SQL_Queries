Select  accounts.name , orders.total_amt_usd/(orders.total +0.01) Total, region.name region
FROM orders
Join accounts
On orders.account_id=accounts.id 
JOIN sales_reps
ON accounts.sales_rep_id = sales_reps.id
Join region
on sales_reps.region_id = region_id
WHERE orders.standard_qty > 100 and poster_qty > 50
ORDER BY Total
