{{
    config(
        materialized ="table"
    )
 }}


select customer_name, count(*) as num  from
(
    select *
    from {{ ref('my_test_model_a') }} 

    union all

    select *
    from {{ ref('my_test_model_b') }} 
) Tmp
group by customer_name 
order by num desc
