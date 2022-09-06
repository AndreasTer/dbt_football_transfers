with source as (

    select * from {{ source('DBT_DEMO', 'RAW_FOOTBALL_TRANSFERS') }}

),

renamed as (

    select
      "club" as club,
      "name" as player_name,
      "age" as player_age,
      "nationality" as nationality,
      "position" as position,
      "short_pos" as position_short,
      cast("market_value" as NUMBER(15,2)) as market_value,
      "dealing_club" as dealing_club,
      "dealing_country" as dealing_country,
      Cast("fee" as NUMBER(15,2)) as fee,
      "movement" as movement,
      "window" as window,
      "league" as league, 
      "season" as season,
      "is_loan" as flag_is_loan, 
      "loan_status" as loan_status

    from source

)

select * from renamed