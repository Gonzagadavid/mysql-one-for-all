CREATE VIEW top_3_artistas AS
    SELECT 
        a.artista, COUNT(usuario_id) AS seguidores
    FROM
        SpotifyClone.Seguindo_artista AS sa
            JOIN
        SpotifyClone.Artista AS a ON sa.artista_id = a.artista_id
    GROUP BY a.artista_id
    ORDER BY seguidores DESC , artista
    LIMIT 3;
