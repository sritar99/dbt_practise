{% macro no_null_values(model) %}
select * from {{model}} where
{% for i in adapter.get_columns_in_relation(model) -%}
     {{i.column}} is null or
{% endfor %}
FALSE
{% endmacro %}
