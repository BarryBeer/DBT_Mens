with

renamed as (

    select
        id as planning_id,
        
    from {{ source('HAW', 'EmployeePlanning') }}

)

select * from renamed