SELECT region.name region ,sales_reps.name ,accounts.name account
FROM region
JOIN sales_reps
ON sales_reps.region_id=region.id
JOIN accounts
ON accounts.sales_rep_id = sales_reps.id
WHERE sales_reps.name like '%_K%' and region.name ='Midwest'
ORDER BY name
