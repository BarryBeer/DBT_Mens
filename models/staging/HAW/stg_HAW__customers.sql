with

renamed as (

    select
        customerid as customer_id,
        naceid as nace_id,
        departmentid as department_id,
        medicalcenterid as medicalcenter_id,
        statisticalcodeid as statisticalcode_id
        
    from {{ source('HAW', 'HAWcustomers') }}

)

select * from renamed