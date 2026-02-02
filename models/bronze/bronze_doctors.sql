{{ config(
    materialized='table'
    
) }}


select doctor_id,
       initcap(doctor_name) as doctor_names,
       initcap(specialization) as specialization,
       branch_id
from hospital.raw.raw_doctors  

