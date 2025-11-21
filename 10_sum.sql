SELECT 
        sum(QtdePontos),
        
        Sum(CASE    
            WHEN QtdePontos > 0 THEN QtdePontos 
        END) AS QtdePontosPos,

        sum(CASE 
            WHEN QtdePontos < 0 THEN QtdePontos
            ELSE 0 
        END) AS QtdePontosNegativos,

        count(CASE 
              WHEN QtdePontos < 0 THEN QtdePontos
        END) AS QtdeTransacoesNegativas

FROM transacoes 

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'
