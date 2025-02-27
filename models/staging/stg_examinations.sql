with

renamed as (

    select
        id as examination_id
        
    from {{ source('HAW', 'Examinations') }}

)

select * from renamed