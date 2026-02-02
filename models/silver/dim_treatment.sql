select treatment_id,
    treatment_name,
    cost,
{{treatment_category('department')}}  as category
from {{ref("bronze_treatment")}} 