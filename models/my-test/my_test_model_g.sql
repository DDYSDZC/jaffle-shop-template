{{
    config(
        materialized ="table"
    )
 }}

select * 
from {{ ref('my_test_model_f') }} 
