with

HAWcustomers as (

    select
        id as customer_id,
        naceid as nace_id,
        departmentid as department_id,
        medicalcenterid as medicalcenter_id,
        statisticalcodeid as statisticalcode_id
        ,*
        
    from {{ source('HAW', 'customers') }}

),

GENcustomers as (

    select
        id as customer_id

)

select * from renamed