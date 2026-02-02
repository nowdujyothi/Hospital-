{{ config(
    materialized='table'
    
) }}

select patient_id,
       initcap(patient_name) as patient_names,
       initcap(gender) as gender,
       dob,
       initcap(city) as city,
from hospital.raw.raw_patients
