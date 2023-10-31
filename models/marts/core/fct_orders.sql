select
    order_id,
    customer_id,
    amount
from {{ ref("stg_customers") }}
join {{ ref("stg_payments") }} on id = customer_id