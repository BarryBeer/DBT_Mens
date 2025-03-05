with

basic_customers as (
    
    select 
        customer_id,
        nace_id,
        department_id,
        medicalcenter_id,
        statisticalcode_id,

        ConnectionDate as 'Klant_ConnectieDatum',
        DismissalDate as 'Klant_OpzegDatum'

        
    from {{ ref('stg_HAW__customers') }}

),
extra_customers as (
    
    select 
        customer_id,

        Name as 'Klant_Naam',
        code as 'Klant_Code'
        
    from {{ ref('stg_HAW__GENcustomers') }}

),
nace_codes as (

    select
        nace_id,

        code as 'Nace_Code',
        DictionaryId_NL as 'Nace_Activiteit'

    from {{ ref('stg_HAW__nace') }}

),
departments as (

    select
        department_id,

        DictionaryId_NL AS 'Departement_Naam'

),
medical_centers as (

    select
        medicalcenter_id,
        globalcenterid as globalcenter_id,

        Name as 'MedischCentrum_Naam'

),
statistical_codes as (

    select
        statisticalcode_id

)

select
*
from
basic_customers
INNER JOIN 
    extra_customers
    ON extra_customers.customer_id = basic_customers.customer_id
INNER JOIN
    nace_codes 
    ON basic_customers.nace_id = nace_codes.nace_id
INNER JOIN 
    departments
    ON basic_customers.department_id = departments.department_id
INNER JOIN 
    medical_centers
    ON basic_customers.medicalcenter_id = medical_centers.medicalcenter_id
INNER JOIN 
    statistical_codes
    ON basic_customers.statisticalcode_id = statistical_codes.statisticalcode_id
