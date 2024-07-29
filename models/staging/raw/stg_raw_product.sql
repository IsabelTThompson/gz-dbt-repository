with

source as (

    select * from {{ ('raw', 'product') }}

),

renamed as (

    select
        products_id
        , purchase_price

    from source
)

select * from renamed