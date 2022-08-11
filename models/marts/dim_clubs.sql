with transfers as (
    select * from {{ ref('stg_transfers') }}
),
clubs as (
    select * from {{ ref('stg_clubs') }}
)

select 
    a.club,
    a.league,
    sum(IFF(a.movement = 'in', a.fee * -1, a.fee)) as total_transfer_volume,
    max(b.latitude) as latitude,
    max(b.longitude) as longitude
from transfers as a
left join clubs as b on a.club = b.club AND a.league = b.league
group by 1,2