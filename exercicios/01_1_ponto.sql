-- Lista de Transações com apenas 1 ponto

SELECT IdTransacao,
        qtdePontos
       
FROM transacoes

WHERE qtdePontos = 1

LIMIT 100
