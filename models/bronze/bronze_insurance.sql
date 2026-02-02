{{ config(
    materialized='table'
    
) }}

select insurance_id,
       provider_name,
       initcap(plan_type) as plan_type

from hospital.raw.raw_insurance
