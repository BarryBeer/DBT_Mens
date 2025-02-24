with

renamed as (

    select
        id as customer_id,
        
    from {{ source('HAW', 'customers') }}

)

select * from renamed