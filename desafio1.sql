DROP SCHEMA IF EXISTS SpotifyClone ;

CREATE SCHEMA IF NOT EXISTS SpotifyClone ;
USE SpotifyClone ;

CREATE TABLE IF NOT EXISTS SpotifyClone.Plano (
    plano_id INT NOT NULL AUTO_INCREMENT,
    plano VARCHAR(45) NOT NULL,
    valor_plano INT NOT NULL,
    PRIMARY KEY (plano_id)
);

CREATE TABLE IF NOT EXISTS SpotifyClone.Usuario (
    usuario_id INT NOT NULL AUTO_INCREMENT,
    usuario VARCHAR(70) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    PRIMARY KEY (usuario_id),
    FOREIGN KEY (plano_id)
        REFERENCES SpotifyClone.Plano (plano_id)
        ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE IF NOT EXISTS SpotifyClone.Artista (
    artista_id INT NOT NULL AUTO_INCREMENT,
    artista VARCHAR(70) NOT NULL,
    PRIMARY KEY (artista_id)
);

CREATE TABLE IF NOT EXISTS SpotifyClone.Album (
    album_id INT NOT NULL AUTO_INCREMENT,
    album VARCHAR(100) NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (album_id),
    FOREIGN KEY (artista_id)
        REFERENCES SpotifyClone.Artista (artista_id)
        ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE IF NOT EXISTS SpotifyClone.Cancao (
    cancao_id INT NOT NULL AUTO_INCREMENT,
    cancao VARCHAR(150) NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY (cancao_id),
    FOREIGN KEY (album_id)
        REFERENCES SpotifyClone.Album (album_id)
        ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE IF NOT EXISTS SpotifyClone.Historico_reproducao (
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    PRIMARY KEY (usuario_id , cancao_id),
    FOREIGN KEY (usuario_id)
        REFERENCES SpotifyClone.Usuario (usuario_id)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (cancao_id)
        REFERENCES SpotifyClone.Cancao (cancao_id)
        ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE IF NOT EXISTS SpotifyClone.Seguindo_artista (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (usuario_id , artista_id),
    FOREIGN KEY (artista_id)
        REFERENCES SpotifyClone.Artista (artista_id)
        ON DELETE RESTRICT ON UPDATE RESTRICT,
    FOREIGN KEY (usuario_id)
        REFERENCES SpotifyClone.Usuario (usuario_id)
        ON DELETE RESTRICT ON UPDATE RESTRICT
);


INSERT INTO SpotifyClone.Plano (plano_id, plano, valor_plano) VALUES (1, 'gratuito', 0.00);
INSERT INTO SpotifyClone.Plano (plano_id, plano, valor_plano) VALUES (2, 'familiar', 7.99);
INSERT INTO SpotifyClone.Plano (plano_id, plano, valor_plano) VALUES (3, 'universitário', 5.99);

INSERT INTO SpotifyClone.Usuario (usuario_id, usuario, idade, plano_id) VALUES (1, 'Thati', 23, 1);
INSERT INTO SpotifyClone.Usuario (usuario_id, usuario, idade, plano_id) VALUES (2, 'Cintia', 35, 2);
INSERT INTO SpotifyClone.Usuario (usuario_id, usuario, idade, plano_id) VALUES (3, 'Bill', 20, 3);
INSERT INTO SpotifyClone.Usuario (usuario_id, usuario, idade, plano_id) VALUES (4, 'Roger', 45, 1);

INSERT INTO SpotifyClone.Artista (artista_id, artista) VALUES (1, 'Walter Phoenix');
INSERT INTO SpotifyClone.Artista (artista_id, artista) VALUES (2, 'Peter Strong');
INSERT INTO SpotifyClone.Artista (artista_id, artista) VALUES (3, 'Lance Day');
INSERT INTO SpotifyClone.Artista (artista_id, artista) VALUES (4, 'Freedie Shannon');

INSERT INTO SpotifyClone.Album (album_id, album, artista_id) VALUES (1, 'Envious', 1);
INSERT INTO SpotifyClone.Album (album_id, album, artista_id) VALUES (2, 'Exuberant', 1);
INSERT INTO SpotifyClone.Album (album_id, album, artista_id) VALUES (3, 'Hallowed Steam', 2);
INSERT INTO SpotifyClone.Album (album_id, album, artista_id) VALUES (4, 'Incandescent', 3);
INSERT INTO SpotifyClone.Album (album_id, album, artista_id) VALUES (5, 'Temporary Cultu', 4);

INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (1, 'Soul For Us', 1);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (2, 'Reflections Of Magic', 1);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (3, 'Dance With Her Own', 1);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (4, 'Troubles Of My Inner Fire', 2);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (5, 'Time Fireworks', 2);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (6, 'Magic Circus', 3);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (7, 'Honey, So Do I', 3);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (8, 'Sweetie, Let\'s Go Wild', 3);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (9, 'She Knows', 3);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (10, 'Fantasy For Me', 4);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (11, 'Celebration Of More', 4);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (12, 'Rock His Everything', 4);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (13, 'Home Forever', 4);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (14, 'Diamond Power', 4);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (15, 'Honey, Let\'s Be Silly', 4);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (16, 'Thang Of Thunder', 5);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (17, 'Words Of Her Life', 5);
INSERT INTO SpotifyClone.Cancao (cancao_id, cancao, album_id) VALUES (18, 'Without My Streets', 5);

INSERT INTO SpotifyClone.Historico_reproducao (usuario_id, cancao_id) VALUES (1, 1);
INSERT INTO SpotifyClone.Historico_reproducao (usuario_id, cancao_id) VALUES (1, 6);
INSERT INTO SpotifyClone.Historico_reproducao (usuario_id, cancao_id) VALUES (1, 14);
INSERT INTO SpotifyClone.Historico_reproducao (usuario_id, cancao_id) VALUES (1, 16);
INSERT INTO SpotifyClone.Historico_reproducao (usuario_id, cancao_id) VALUES (2, 13);
INSERT INTO SpotifyClone.Historico_reproducao (usuario_id, cancao_id) VALUES (2, 17);
INSERT INTO SpotifyClone.Historico_reproducao (usuario_id, cancao_id) VALUES (2, 2);
INSERT INTO SpotifyClone.Historico_reproducao (usuario_id, cancao_id) VALUES (2, 15);
INSERT INTO SpotifyClone.Historico_reproducao (usuario_id, cancao_id) VALUES (3, 4);
INSERT INTO SpotifyClone.Historico_reproducao (usuario_id, cancao_id) VALUES (3, 16);
INSERT INTO SpotifyClone.Historico_reproducao (usuario_id, cancao_id) VALUES (3, 6);
INSERT INTO SpotifyClone.Historico_reproducao (usuario_id, cancao_id) VALUES (4, 3);
INSERT INTO SpotifyClone.Historico_reproducao (usuario_id, cancao_id) VALUES (4, 18);
INSERT INTO SpotifyClone.Historico_reproducao (usuario_id, cancao_id) VALUES (4, 11);

INSERT INTO SpotifyClone.Seguindo_artista (usuario_id, artista_id) VALUES (1, 1);
INSERT INTO SpotifyClone.Seguindo_artista (usuario_id, artista_id) VALUES (1, 3);
INSERT INTO SpotifyClone.Seguindo_artista (usuario_id, artista_id) VALUES (1, 4);
INSERT INTO SpotifyClone.Seguindo_artista (usuario_id, artista_id) VALUES (2, 1);
INSERT INTO SpotifyClone.Seguindo_artista (usuario_id, artista_id) VALUES (2, 3);
INSERT INTO SpotifyClone.Seguindo_artista (usuario_id, artista_id) VALUES (3, 1);
INSERT INTO SpotifyClone.Seguindo_artista (usuario_id, artista_id) VALUES (3, 2);
INSERT INTO SpotifyClone.Seguindo_artista (usuario_id, artista_id) VALUES (4, 4);
