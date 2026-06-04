{{
    config(materialized='table',schema='cleansed')
            
}}
select 
{{ dbt_utils.generate_surrogate_key(['customer_id','email']) }} as sur_key,
customer_id	,	
first_name,	
last_name,			
email	,		
replace(phone,'x','')	phone,		
city	,	
state	,		
country	,		
created_at			
from  {{ source('raw','customers') }} 



