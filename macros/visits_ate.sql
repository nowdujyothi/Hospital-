{% macro parse_dates(visit_date) %}
    coalesce(
        try_to_date({{ visit_date }}, 'YYYY.MM.DD'),
        try_to_date({{ visit_date }}, 'DD-MM-YYYY'),
        try_to_date({{ visit_date }}, 'YYYY/MM/DD'),
        try_to_date({{ visit_date }}, 'MM-DD-YYYY'),
        try_to_date({{ visit_date }}, 'YYYYMMDD'),
        try_to_date({{ visit_date }}, 'YYYY-MM-DD')
    )
{% endmacro %}
