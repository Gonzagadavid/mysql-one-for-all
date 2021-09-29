CREATE VIEW cancoes_premium AS
    SELECT 
        c.cancao AS nome, COUNT(h.usuario_id) AS reproducoes
    FROM
        SpotifyClone.Cancao AS c
            JOIN
        SpotifyClone.Historico_reproducao AS h ON c.cancao_id = h.cancao_id
            AND h.usuario_id IN (SELECT 
                usuario_id
            FROM
                SpotifyClone.Usuario
            WHERE
                plano_id <> 1)
    GROUP BY nome
    ORDER BY nome;
