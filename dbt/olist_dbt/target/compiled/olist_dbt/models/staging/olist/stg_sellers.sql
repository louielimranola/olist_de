with source as (
    select *
    from "dev"."public"."sellers"
)
select
    seller_id,
    seller_zip_code_prefix,
    seller_city,
    seller_state
from source