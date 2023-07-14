{{
    config(
        materialized ="table"
    )
 }}


select customer_name, count(*) as num 
from {{ ref('my_test_model_b') }} 
group by customer_name 
order by num desc
