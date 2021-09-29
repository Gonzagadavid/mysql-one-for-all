CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        c.cancao AS cancao, COUNT(usuario_id) AS reproducoes
    FROM
        SpotifyClone.Historico_reproducao AS hr
            JOIN
        SpotifyClone.Cancao AS c ON hr.cancao_id = c.cancao_id
    GROUP BY cancao
    ORDER BY reproducoes DESC , cancao
    LIMIT 2;
