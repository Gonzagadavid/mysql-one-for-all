CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.usuario, c.cancao AS nome
    FROM
        SpotifyClone.Historico_reproducao AS h
            INNER JOIN
        SpotifyClone.Usuario AS u ON u.usuario_id = h.usuario_id
            INNER JOIN
        SpotifyClone.Cancao AS c ON h.cancao_id = c.cancao_id
    ORDER BY u.usuario , c.cancao;
