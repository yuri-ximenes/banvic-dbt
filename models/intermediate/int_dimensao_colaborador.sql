with
    colaboradores as (
        select *
        from {{ ref('stg_erp_colaboradores') }}
    )

    , localidades as (
        select *
        from {{ ref('stg_erp_localidades') }}
    )

    , colaboradores_enriquecido as (
        select
            colaboradores.pk_colaborador
            , colaboradores.fk_gerente
            , colaboradores.fk_localidade
            , colaboradores.nome_colaborador
            , colaboradores.email_colaborador
            , colaboradores.cpf_colaborador
            , colaboradores.data_nascimento_colaborador
            , colaboradores.endereco_colaborador
            , colaboradores.cep_colaborador
            , localidades.cidade as cidade_colaborador
            , localidades.uf as uf_colaborador
        from colaboradores
        left join localidades on colaboradores.fk_localidade = localidades.pk_localidade
    )

select *
from colaboradores_enriquecido