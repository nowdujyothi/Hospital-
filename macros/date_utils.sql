

{% macro parse_dob(dob) %}
    coalesce(
        try_to_date({{ dob }}, 'YYYY.MM.DD'),
        try_to_date({{ dob }}, 'DD-MM-YYYY'),
        try_to_date({{ dob }}, 'YYYY/MM/DD'),
        try_to_date({{ dob }}, 'MM-DD-YYYY'),
        try_to_date({{ dob }}, 'YYYYMMDD'),
        try_to_date({{ dob }}, 'YYYY-MM-DD')
    )
{% endmacro %}
