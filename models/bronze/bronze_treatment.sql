{{config(materialized='table')}}
 

select treatment_id,
       initcap(treatment_name) as treatment_name,
       initcap(department) as department,
       cost

from hospital.raw.raw_treatments
