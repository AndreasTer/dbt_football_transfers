with source as (
    select * from {{ source('DBT_DEMO', 'RAW_CLUBS') }}

),

renamed as (
    select 
        "CLUB" as club,
        "LEAGUE" as league,
        "NAME" as stadium_name,
        "LAT" as latitude,
        "LONG" as longitude

    from source
)

select * from renamed