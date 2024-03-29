{{
    config(
        materialized ="table"
    )
 }}

with

source as (

    select * from {{ source('ecom', 'raw_customers_copy') }}

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- properties
        name as customer_name

    from source

)


select {{my_test_macros(id)}} as my_test_macros, * from renamed USING SAMPLE 2 ROWS
