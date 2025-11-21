-- Quantos Clientes tem Twitch?

SELECT  
        count(flTwitch) AS contasTwitch

FROM clientes

WHERE flTwitch = 1