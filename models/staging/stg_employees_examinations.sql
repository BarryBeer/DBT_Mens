with

renamed as (

    select
        id as planning_id,
        customerid as customer_id,
        planningentityid as planningentity_id,
        employeeid as employee_id,
        medicalcenterid as medicalcenter_id,
        MedicalExaminationsId as medicalexaminations_Id
        
    from {{ source('HAW', 'EmployeesExaminations') }}

)

select * from renamed