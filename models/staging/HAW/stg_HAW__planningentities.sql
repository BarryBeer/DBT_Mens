with

renamed as (

    select
        id as planningentity_id,
        medicalcenterid as medicalcenter_id
        
    from {{ source('HAW', 'PlanningEntities') }}

)

select * from renamed