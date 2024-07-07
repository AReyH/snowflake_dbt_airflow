select
    line_item.order_item_key,
    line_item.part_key,
    line_item.line_number,
    orders.o_orderkey,
    orders.o_custkey,
    orders.o_orderdate
from
    {{ ref('stg_tpch_orders')}} as orders
join 
    {{ ref('stg_tpch_line_items')}} as line_item
        on orders.o_orderkey = line_item.order_key
order by
    orders.o_orderdate