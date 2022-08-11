with transfers as (
  select * from {{ ref('stg_transfers') }}
)

select * from transfers