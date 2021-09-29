USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON Usuario
FOR EACH ROW
BEGIN
SET SQL_SAFE_UPDATES = 0;
     DELETE FROM Historico_reproducao WHERE usuario_id = old.usuario_id;
     DELETE FROM Seguindo_artista WHERE usuario_id = old.usuario_id;
SET SQL_SAFE_UPDATES = 1;
END $$

DELIMITER ;
