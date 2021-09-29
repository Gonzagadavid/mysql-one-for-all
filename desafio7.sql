CREATE VIEW perfil_artistas AS
    SELECT 
        a.artista, al.album, COUNT(s.usuario_id) AS seguidores
    FROM
        SpotifyClone.Artista AS a
            JOIN
        SpotifyClone.Album AS al ON a.artista_id = al.artista_id
            JOIN
        SpotifyClone.Seguindo_artista AS s ON s.artista_id = a.artista_id
    GROUP BY al.album_id
    ORDER BY seguidores DESC , a.artista , al.album;
