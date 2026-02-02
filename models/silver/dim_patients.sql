with cte as (
select *,
    case
        when gender in ('F', 'Female') then 'Female'
        when gender in ('M', 'Male') then 'Male'
        else 'unknown'
    end as genders,
    {{ parse_dob('dob') }} as DATE_OF_BIRTH
from {{ ref('bronze_patients') }}
)

select patient_id,patient_names,genders,DATE_OF_BIRTH
from cte 
