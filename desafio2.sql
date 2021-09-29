CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(artista_id) AS artistas,
        (SELECT 
                COUNT(cancao_id) AS cancoes
            FROM
                SpotifyClone.Cancao) AS cancoes,
        (SELECT 
                COUNT(album_id)
            FROM
                SpotifyClone.Album) AS albuns
    FROM
        SpotifyClone.Artista;
