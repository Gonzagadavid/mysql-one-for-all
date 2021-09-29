USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(_artista VARCHAR(70))
BEGIN
  SELECT 
    a.artista, al.album
FROM
    Artista AS a
        JOIN
    Album AS al ON a.artista_id = al.artista_id
WHERE
    a.artista = _artista; 
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
