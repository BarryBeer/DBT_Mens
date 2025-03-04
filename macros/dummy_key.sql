{%-
  macro dummy_key (
    Buisnesskey,
    Required,
    SurrogateKey
  )
-%}

    {% if Buisnesskey IS NULL %}
        {% if Required = 'O' %}
            -999
        {% else %}
            -998
    {% else %}
        {% if SurrogateKey IS NULL %}
            -997
        {% else %}
            SurrogateKey

{% endmacro %}