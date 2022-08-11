with source as (
    select * from {{ source('RAW', 'CLUBS_FULL') }}

),

renamed as (
    select 
        CLUB as club,
        LEAGUE as league,
        LAT as latitude,
        LONG as longitude
    from source
)

select * from renamed