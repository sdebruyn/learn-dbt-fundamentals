select
  orderid as order_id,
  sum(amount) as amount
from raw.stripe.payment
where status = 'success'
group by orderid