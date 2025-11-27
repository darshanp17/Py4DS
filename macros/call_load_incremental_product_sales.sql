{% macro call_load_incremental_product_sales(country, table_name) %}
    {% set sql %}
        CALL int.load_incremental_product_sales('{{ country }}', '{{ table_name }}');
    {% endset %}

    {{ log("Running stored procedure...", info=True) }}
    {% do run_query(sql) %}
    {{ log("Stored procedure executed successfully", info=True) }}
{% endmacro %}