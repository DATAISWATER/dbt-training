select
-- from raw_orders
o.*
-- from raw_customer
, c.*
-- from raw_product
, p.*
, (o.order_selling_price-o.order_cost_price) as order_profit
from
  {{ ref('raw_orders') }} as o 
left join 
  {{ ref('raw_customer') }} as c
on 
   c.customerid=o.customer_id
left join
   {{ ref('raw_product') }} as p
on
   p.productid=o.product_id