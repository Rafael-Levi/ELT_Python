with source(
    SELECT
        "date",
        "symbol",
        "action",
        "quantity"
    FROM{{source("dbsales_ff4q","movimentacao_commodities")}}
),
renamed as (
    SELECT
        cast(date as date) as data,
        symbol as simbolo,
        action as acao,
        quantity as quantidade
    FROM source
)

SELECT * from renamed

