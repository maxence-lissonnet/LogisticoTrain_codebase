CREATE DATABASE IF NOT EXISTS logistico_train;
USE logistico_train;

CREATE USER IF NOT EXISTS 'mariaUsr'@'%' IDENTIFIED BY 'restapiprod5129';
GRANT ALL PRIVILEGES ON logistico_train.* TO 'mariaUsr'@'%';
FLUSH PRIVILEGES;

CREATE TABLE Voie (
    __tablename__ = 'Voie'
    num_voie INT(11) NOT NULL,
    interdite TINYINT(1) NOT NULL,
    PRIMARY KEY (num_voie)
);

CREATE TABLE Rame (
    __tablename__ = 'Voie'
    num_serie VARCHAR(12) NOT NULL,
    type_rame VARCHAR(50) NOT NULL,
    voie INT(11) UNIQUE,
    conducteur_entrant VARCHAR(50) NOT NULL,
    PRIMARY KEY (num_serie),
    CONSTRAINT fk_voie FOREIGN KEY (voie) REFERENCES Voie(num_voie)
);

CREATE TABLE Tache (
    __tablename__ = 'Tache'
    num_serie VARCHAR(12) NOT NULL,
    num_tache INT(11) NOT NULL,
    tache TEXT NOT NULL,
    PRIMARY KEY (num_serie, num_tache),
    CONSTRAINT fk_rame FOREIGN KEY (num_serie) REFERENCES Rame(num_serie)
);