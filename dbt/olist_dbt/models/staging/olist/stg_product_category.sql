with source as (
    select *
    from {{ source('olist', 'product_category') }}
)
select
    product_category_name_english as product_category
from source
