{{ config(materialized="table") }}
select country, count(distinct customer_id) as number_of_customers
from {{ ref("customers_transformed") }}
group by country