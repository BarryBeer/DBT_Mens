with

basic_customers as (
    
    select 
        customer_id 
        
    from {{ ref('stg_customers')}}

),

nace_codes as (

    select
        nace_codes

    from {{ ref('stg_nace_codes')}}

)