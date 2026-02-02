{{ config (materialized='table')}}

select branch_id,
       initcap(branch_name) as branch_names,
       initcap(city) as cities,
       initcap(state) as state  
 from hospital.raw.raw_branches