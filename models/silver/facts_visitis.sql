{{ config(
    materialized = 'incremental',
    unique_key = 'visit_id',
    on_schema_change = 'append_new_columns'
) }}

select
    visit_id,
    patient_id,
    doctor_id,
    branch_id,
    treatment_id,
    insurance_id,
    {{ parse_dates('visit_date') }} as visit_date,
    try_to_number(regexp_replace(bill_amount, '[^0-9]', '')) as bill_amount
from {{ ref('bronze_visits') }}

{% if is_incremental() %}
where {{ parse_dates('visit_date') }} >
      coalesce(
        (select max(visit_date) from {{ this }}),
        to_date('1900-01-01')
      )
{% endif %}
