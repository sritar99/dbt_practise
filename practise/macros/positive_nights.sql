{% macro positive_nights(model,col) %}
select * from {{model}} where {{col}} <1
{% endmacro %}