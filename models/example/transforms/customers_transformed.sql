{{
    config(materialized='table',schema='gold',tags=['customerdaily'])
            
}}
select a.*, b.order_id
from  {{ source('RETAIL','customers') }} a
inner join {{ source('RETAIL','orders') }} b on a.customer_id = b.customer_id