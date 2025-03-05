with

examinations as (

    select
        planning_id,
        customer_id,
        planningentity_id,
        employee_id,
        medicalcenter_id,
        medicalexaminations_Id


    from {{ ref('stg_HAW__emloyees_examinations') }}
)