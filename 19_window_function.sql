
WITH tb_clientes_dia AS (

    SELECT  idCliente,
            substr(DtCriacao,1,10) AS dtDia,
            count(DISTINCT IdTransacao) AS qtdeTransacao 
       
        
    FROM transacoes

    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'

    GROUP BY idCliente, dtDia

)

SELECT *,
        sum(qtdeTransacao) OVER (PARTITION BY IdCliente ORDER BY dtDIa) AS acum,
        lag(qtdeTransacao) OVER (PARTITION BY idCliente ORDER BY dtDia) AS lagTransacao
FROM tb_clientes_dia