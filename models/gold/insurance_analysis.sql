select i.insurance_id,
       i.plan_type,
       sum(v.bill_amount) over (partition by i.plan_type) as insurance_amount
 from {{ref("bronze_insurance")}} i 
join {{ref("facts_visitis")}} v  
on i.insurance_id=v.insurance_id
