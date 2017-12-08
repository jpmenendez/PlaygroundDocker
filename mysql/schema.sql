DROP DATABASE IF EXISTS personajes;
CREATE DATABASE personajes;
USE personajes;

DROP TABLE IF EXISTS personajes;
CREATE TABLE personajes(
  id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO personajes(nombre) VALUES ('Eddan Stark'), ('Lancen Lannister'),
('Bronn'), ('Podrick Payne'), ('Shireen Baratheon'), ('Davos Seaworth'),
('Obara Arena'), ('Unella');
