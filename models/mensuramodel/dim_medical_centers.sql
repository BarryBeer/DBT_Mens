with

medical_centers as (

    select
        medicalcenter_id,
        globalcenterid as globalcenter_id,

        Name as 'MedischCentrum_Naam'

)

select 
medical_centers.medicalcenter_id,

medical_centers.MedischCentrum_Naam,

global_centers.MedischCentrum_Naam AS 'GlobaalMedischCentrum_Naam'
from
medical_centers
LEFT JOIN
    medical_centers global_centers
    ON medical_centers.globalcenter_id = global_centers.medicalcenter_id