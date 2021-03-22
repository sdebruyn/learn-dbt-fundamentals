select
    orders.order_id,
    orders.customer_id,
    payments.amount
from {{ ref("stg_orders") }} orders

left outer join {{ ref("stg_payments") }} payments
on orders.order_id = payments.order_id