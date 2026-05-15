with
    agencias as (
        select *
        from {{ ref('int_dimensao_agencia') }}
    )

select * 
from agencias