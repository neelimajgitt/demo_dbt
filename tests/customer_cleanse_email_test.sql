select * from {{ref('customer_cleanse')}}
where email not like '%@%'