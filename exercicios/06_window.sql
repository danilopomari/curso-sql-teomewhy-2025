-- Quantidade de usuários cadastrados (absoluto e acumulado) ao longo do tempo?
WITH tb_clientes_dia AS (

    SELECT 
            substr(DtCriacao,1,10) AS dtDIa,
            count(DISTINCT IdCliente) AS qtdeClientes

    FROM Clientes

    GROUP BY dtDia

    ORDER BY dtDia 

),

tb_acum AS (

    SELECT *,
            sum(qtdeClientes) OVER(ORDER BY dtDia) AS qtdeClientesAcum

    FROM tb_clientes_dia

)

SELECT * 
FROM tb_acum
ORDER BY dtDia

