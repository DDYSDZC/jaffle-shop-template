{{
    config(
        materialized ="table"
    )
 }}

with

source as (

    select * from {{ source('ecom', 'raw_customers') }}

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- properties
        name as customer_name

    from source

)

select customer_name, count(*) as num from renamed group by customer_name order by customer_name asc
