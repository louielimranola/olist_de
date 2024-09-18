
select
    c.customer_id,
    
    -- Count distinct orders per customer
    count(distinct o.order_id) as lifetime_order_count,
    
    -- Calculate the total sales value (price * quantity) for each customer
    sum(oi.price * oi.freight_value) as lifetime_sales_value,
    
    -- Count the unique product categories purchased by the customer
    count(distinct p.product_category_name) as unique_categories_purchased

-- Join customers with orders
from {{ ref('stg_customers') }} c
left join {{ ref('stg_orders') }} o on c.customer_id = o.customer_id

-- Join orders with order items
left join {{ ref('stg_order_items') }} oi on o.order_id = oi.order_id

-- Join order items with product categories
left join {{ ref('stg_products') }} p on oi.product_id = p.product_id

-- Group by customer to get individual lifetime statistics
group by c.customer_id