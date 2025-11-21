-- Quantos pontos já foram subtraidos dos clientes?

SELECT  
        sum(QtdePontos) AS totalPontosSub

FROM transacoes

WHERE QtdePontos < 0