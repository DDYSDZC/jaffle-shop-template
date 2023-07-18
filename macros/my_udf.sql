{% macro my_udf(column_name) -%}
    {{ udf('my_udf', 'my_upper')(column) }}
{%- endmacro %}