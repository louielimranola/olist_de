-- models/marts/olist/monthly_sales.sql

select
    -- Truncate the order purchase timestamp to get the month
    date_trunc('month', o.order_purchase_timestamp) as month,
    
    -- Calculate the total sales for each month
    sum(oi.price * oi.freight_value) as total_sales

-- Start from the orders table
from {{ ref('stg_orders') }} o

-- Join the order_items table on order_id
join {{ ref('stg_order_items') }} oi on o.order_id = oi.order_id

-- Group by the month to aggregate total sales per month
group by 1
