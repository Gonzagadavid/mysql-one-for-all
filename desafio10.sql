USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(_usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE historico INT;
SELECT 
    count(cancao_id)
FROM
    Historico_reproducao
WHERE
    usuario_id = _usuario_id INTO historico;
  RETURN historico;
END $$

DELIMITER ;

SELECT QUANTIDADE_MUSICAS_NO_HISTORICO(3);
