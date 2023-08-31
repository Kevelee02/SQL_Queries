SELECT web_events.channel, web_events.occurred_at, accounts.name
from web_events
Join accounts
on web_events.account_id = accounts.id
ORDER BY occurred_at DESC
