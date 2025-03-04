with

renamed as (

    select
        id as customer_id
        
    from {{ source('HAW', 'GENcustomers') }}

)

select * from renamed