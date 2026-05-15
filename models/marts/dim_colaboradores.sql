with
    colaboradores as (
        select *
        from {{ ref('int_dimensao_colaborador') }}
    )

select * 
from colaboradores