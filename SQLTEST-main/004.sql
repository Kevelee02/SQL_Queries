Select  orders.occurred_at, accounts.name 
from accounts
Join orders
On orders.account_id= accounts.id
ORDER BY orders.occurred_at 
limit 1
