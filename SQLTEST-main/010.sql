Select AVG(count), channel
 FROM  (SELECT count(*), channel, date_trunc('day',occurred_at)
  from web_events
  group by channel, date_trunc('day',occurred_at)) AS sub 
group by channel
