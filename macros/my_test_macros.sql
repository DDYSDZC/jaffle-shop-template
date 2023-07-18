{# A basic example for a project-wide macro to cast a column uniformly #}

{% macro my_test_macros(column_name) -%}
    {{ return(123) }}
{%- endmacro %}
