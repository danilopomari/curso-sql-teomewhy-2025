SELECT count(*) 

FROM produtos

WHERE DescCategoriaProduto = 'rpg';

SELECT DescCategoriaProduto,
        count(*)

FROM produtos

GROUP BY DescCategoriaProduto;