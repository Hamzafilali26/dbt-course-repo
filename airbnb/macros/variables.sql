{% macro learn_variables() %}
{# there is 2 types of variables : dbt and jinja variables  #}

{% set your_name_jinja = "Hamza" %}
{{ log("Hello " ~ your_name_jinja, info=True) }}


{{ log('Hello dbt user ' ~ var('user_name', 'No Username is Set !!!') ~ '!', info=True) }}

{% endmacro %}