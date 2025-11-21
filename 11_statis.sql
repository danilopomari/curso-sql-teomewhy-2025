SELECT round(avg(QtdePontos), 2) AS mediaCarteira,
        1. * sum(QtdePontos) / count(IdCliente) AS mediaCarteiraRoots,
        min(QtdePontos) AS minCarteira,
        max(QtdePontos) AS maxCarteira,
        sum(flTwitch),
        sum(flEmail)

FROM clientes
