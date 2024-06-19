select
customerid
, customername
, segment
, country
, sum(order_profit) as profit
from
{{ ref('stg_orders') }}
group by
customerid
, customername
, segment
, country
