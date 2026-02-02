{% macro treatment_category(department) %}
    case
        when ({{department  }}) in ('gynaecology', 'gynecology')
            then 'Gynecology'

        
        when ({{ department }}) = 'neuro'
            then 'Neurology'

        else {{ department }}
    end
{% endmacro %}
