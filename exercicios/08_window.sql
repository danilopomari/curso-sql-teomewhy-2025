-- Saldo de pontos acumulado de cada usuário?por dia?

WITH tb_clientes_dia AS (

    SELECT idCliente,
        substr(DtCriacao,1,19) AS dtDia,
        sum(qtdePontos) AS totalPontos,
        sum(CASE WHEN qtdePontos > 0 THEN qtdePontos ELSE 0 END) AS pontosPos
        

    FROM transacoes

    GROUP BY idCliente, dtDia

)

SELECT *,
        sum(totalPontos) OVER(PARTITION BY idCliente ORDER BY dtDia) AS saldoPontos,
        sum(pontosPos) OVER(PARTITION BY idCliente ORDER BY dtDia) AS totalPontosPos
        
FROM tb_clientes_dia