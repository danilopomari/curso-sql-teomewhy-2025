SELECT sum(QtdePontos) AS totalpontos,

        count(substr(DtCriacao,1,10)) AS qtdeDiasRepetidos,

        count(DISTINCT substr(DtCriacao,1,10)) AS qtdeDiasUnicos,

        sum(qtdePontos) / count(DISTINCT substr(DtCriacao,1,10)) AS avgPontosDia

FROM transacoes

WHERE QtdePontos > 0;

SELECT substr(DtCriacao, 1,10) AS dtDia,
        avg(QtdePontos) AS avgPontosDia


FROM transacoes

WHERE qtdePontos > 0

GROUP BY 1
ORDER BY 2;