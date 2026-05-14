with
    clientes as (
        select *
        from {{ ref('int_dimensao_cliente') }}
    )

select * 
from clientes