{% macro standard_staging(
        source_table_name,
        raw_id = id,
        new_id
    ) %}

with

renamed as (

    select
        {{ raw_id }} as {{ new_id }},
        
    from {{ source('HAW', 'source_table') }}

)

select * from renamed

{% endmacro %}