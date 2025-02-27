with

renamed as (

    select
        id as customer_id,
        naceid as nace_id,
        departmentid as department_id,
        medicalcenterid as medicalcenter_id,
        statisticalcodeid as statisticalcode_id
        
    from {{ source('HAW', 'customers') }}

)

select * from renamed