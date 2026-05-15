with
    contas as (
        select *
        from {{ ref('stg_erp_contas') }}
    )

    , selecionar_colunas as (
        select 
            pk_conta
            , fk_cliente
            , fk_agencia
            , fk_colaborador
            , saldo_total
            , saldo_disponivel
            , ts_abertura_conta
        from contas
    )

select *
from selecionar_colunas