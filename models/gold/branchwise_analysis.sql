select b.state as states,
       sum(
            try_to_number(
                regexp_replace(v.bill_amount, '[^0-9]', '')
            )
        ) as total_bill_amount from {{ref("bronze_branch")}} b

join  {{ref("facts_visitis")}} v  on b.branch_id=v.branch_id

group by states