select
    orders.*,
    ordersitems_summary.gross_item_sales_amount,
    ordersitems_summary.item_discount_amount
from
    {{ref('stg_tpch_orders')}} as orders
join
    {{ref('int_order_items_summary')}} as ordersitems_summary
        on orders.o_orderkey = ordersitems_summary.o_orderkey
order by
    o_orderdate