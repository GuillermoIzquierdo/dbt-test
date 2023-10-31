select
    pv.orderid as order_id,
    ct.id as customer_id,
    pv.amount as amount
from RAW.JAFFLE_SHOP.CUSTOMERS ct
join {{ ref('stg_payments')}} pv on ct.id = pv.orderid