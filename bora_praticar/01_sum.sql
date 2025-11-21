-- Qual o saldo de pontos total do sistema?

SELECT 
        
        sum(QtdePontos) AS totaldePontosSistema
        

FROM transacoes

WHERE QtdePontos > 0




