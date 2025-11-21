-- Quem iniciou o curso no primeiro dia, em média assistiu quantas aulas?

-- Quem participou da primeira aula
WITH tb_primeiro_dia AS (

    SELECT DISTINCT IdCliente

    FROM transacoes
    WHERE substr(dtCriacao,1,10) = '2025-08-25'

),

--quem participou do curso inteiro

tb_dias_curso AS (

    SELECT DISTINCT
           idCliente, 
           substr(DtCriacao,1,10) AS presenteDia 
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'

    ORDER BY idCliente, presenteDia
),

-- contando quantas vezes quem participou do primeiro dia, voltou

tb_cliente_dias AS (

    SELECT t1.idCliente,
       count(DISTINCT t2.presenteDia) AS qtdeDias

    FROM tb_primeiro_dia AS t1

    LEFT join tb_dias_curso AS t2
    ON t1.idCliente = t2.idCliente

    GROUP BY t1.idCliente

)

-- calculou a media

SELECT avg(qtdeDias), 
       max(qtdeDias),
       min(qtdeDias)
       
FROM tb_cliente_dias


