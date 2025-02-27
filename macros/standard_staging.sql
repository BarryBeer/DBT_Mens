{% macro standard_staging(
        source_data_base,
        source_table_name,
        raw_id = id,
        new_id
    ) %}

with

renamed as (

    select
        {{ raw_id }} as {{ new_id }},
        
    from {{ source('{{ source_data_base }}', '{{ source_table_name }}') }}

)

select * from renamed

{% endmacro %}