-- Lista de produtos com nome que termine com 'Lover'

SELECT IdProduto,
        DescNomeProduto

FROM produtos

WHERE DescNomeProduto LIKE '%lover'