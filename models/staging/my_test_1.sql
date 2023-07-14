{{
    config(
        materialized ="table"
    )
 }}


with

source as (

    select * from {{ ref('my_test_0') }}

)


select * from source