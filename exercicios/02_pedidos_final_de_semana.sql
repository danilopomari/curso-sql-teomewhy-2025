-- Lista de Pedidos realizados no fim de semana

-- SELECT IdTransacao,

        -- DtCriacao,
        
        -- substr(DtCriacao, 1, 19) AS dtSubString,

        -- datetime(substr(DtCriacao, 1, 19)) AS dtCriacaoNova,

        -- strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS diaSemana


-- FROM transacoes

-- WHERE diaSemana = '0'
-- OR diaSemana = '6'

SELECT IdTransacao,

        DtCriacao,

        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS diaSemana


FROM transacoes

WHERE strftime('%w', datetime(substr(DtCriacao, 1, 19))) IN ('6','0')

















