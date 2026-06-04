{{
    config(materialized='table',schema='cleansed',alias='invoices_vat_cleansed')
            
}}
select 

*,"{{var('domain')}}" as domain,
round({{ calculate_vat('amount')}}, 2) as vat,
current_timestamp() as created_at			
from  {{ source('raw','invoices') }} 