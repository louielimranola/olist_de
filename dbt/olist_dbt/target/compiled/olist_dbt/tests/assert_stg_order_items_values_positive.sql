WITH order_items AS (

    SELECT  *
    FROM "dev"."public_staging"."stg_order_items"

)

SELECT  order_id,
        SUM(price) AS total_value
FROM order_items
GROUP BY 1
HAVING total_value < 0