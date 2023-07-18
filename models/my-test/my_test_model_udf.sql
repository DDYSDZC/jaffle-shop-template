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



select length_grapheme('aaa🤦🏼‍♂️🤦🏽‍♀️aaa') as duck_function, * from renamed
