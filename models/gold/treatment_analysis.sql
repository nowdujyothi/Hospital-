select t.TREATMENT_ID, 
       sum(v.bill_amount) as treatment_amount   
from {{ref("dim_treatment")}} t 
join {{ref('facts_visitis')}} v  on t.TREATMENT_ID=v.treatment_id

group by t.TREATMENT_ID
