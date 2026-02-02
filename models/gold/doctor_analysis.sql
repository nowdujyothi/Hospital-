


    select
        v.doctor_id,
        d.doctor_names,
        d.specialization,
        sum(v.bill_amount)as total_bill_amount
    from {{ ref('facts_visitis') }} v
    join {{ ref('bronze_doctors') }} d
        on v.doctor_id = d.doctor_id
    group by
        v.doctor_id,
        d.doctor_names,
        d.specialization





