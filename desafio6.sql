CREATE VIEW faturamento_atual AS
    SELECT 
        FORMAT(MIN(p.valor_plano), 2) AS faturamento_minimo,
        FORMAT(MAX(p.valor_plano), 2) AS faturamento_maximo,
        FORMAT(ROUND(AVG(p.valor_plano), 2), 2) AS faturamento_medio,
        FORMAT(SUM(p.valor_plano), 2) AS faturamento_total
    FROM
        SpotifyClone.Usuario AS u
            JOIN
        SpotifyClone.Plano AS p ON u.plano_id = p.plano_id; 
