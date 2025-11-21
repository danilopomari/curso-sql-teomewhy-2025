-- Lista de produtos que são "chapéu"

SELECT IdProduto,
        DescNomeProduto

FROM produtos

WHERE DescNomeProduto LIKE '%Chapéu%'

-- WHERE DescNOmeProduto NOT LIKE '%Chapéu%'