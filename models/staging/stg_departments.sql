with

renamed as (

    select
        id as department_id,
        
    from {{ source('HAW', 'departments') }}

)

select * from renamed