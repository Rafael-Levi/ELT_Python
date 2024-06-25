--import 

with source as (
    SELECT
        "Date",
        "Close",
        "simbolo"
    from 
        {{ source ('dbsales_ff4q', 'commodities') }}
),

--renamed
renamed as (
    SELECT
        cast("Date" as date) as data,
        "Close" as valor_fechamento,
        simbolo
    FROM
        source

)

SELECT * FROM renamed