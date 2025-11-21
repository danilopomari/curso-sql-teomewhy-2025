-- Qual a media de saldo em carteira?

SELECT  
        avg(QtdePontos) AS avgPontosCar

FROM clientes

WHERE qtdePontos > 0 
