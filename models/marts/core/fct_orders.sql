select 
a.order_id,
b.customer_id,
sum(a.amount) amount
from {{ref('stg_payment')}} as a
left join {{ref('stg_orders')}} as b on a.order_id = b.order_id
group by a.order_id,
b.customer_id