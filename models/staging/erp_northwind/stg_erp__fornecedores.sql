with
    source_fornecedores as (
        select 
            cast(supplier_id as int) as id_fornecedor
            , cast(company_name as string) as nome_fornecedor
            , cast(contact_name as string) as contato_fornecedor
            , cast(contact_title AS string) as titulo_de_cortesia_fornecedor
            , cast(address AS string) as endereco_fornecedor
            , cast(city AS string) as cidade_fornecedor
            , cast(region as string) as regiao_fornecedor
            , cast(postal_code as string) as cep_fornecedor
            , cast(country as string) as pais_fornecedor
            , cast(phone as string ) as telefone_fornecedor
            , cast(fax as string) as fax_fornecedor
            --, cast(homepage as string)
            
        from {{ source('erp','suppliers')}}
    )

select *
from source_fornecedores