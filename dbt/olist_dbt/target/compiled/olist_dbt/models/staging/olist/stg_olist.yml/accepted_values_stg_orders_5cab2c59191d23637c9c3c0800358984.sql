
    
    

with all_values as (

    select
        order_status as value_field,
        count(*) as n_records

    from "dev"."public_staging"."stg_orders"
    group by order_status

)

select *
from all_values
where value_field not in (
    'delivered','canceled','invoiced','processing','created','shipped','unavailable','approved'
)


