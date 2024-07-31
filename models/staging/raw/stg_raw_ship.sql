with

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id
        , CAST(ship_cost as FLOAT64) AS ship_cost
        , logCost as log_cost
        , shipping_fee

    from source
)

select * from renamed