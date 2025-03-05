{%-
  macro dummy_key (
    Buisnesskey,
    Required,
    SurrogateKey
  )
-%}

    {% if Buisnesskey == NULL %}
        {% if Required == 'O' %}
            -999
        {% else %}
            -998
        {% endif %}
    {% else %}
        {% if SurrogateKey == NULL %}
            -997
        {% else %}
            SurrogateKey
        {% endif %}
    {% endif %}

{% endmacro %}