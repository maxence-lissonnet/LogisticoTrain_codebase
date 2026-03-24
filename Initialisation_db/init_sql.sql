CREATE DATABASE IF NOT EXISTS logistico_train;
USE logistico_train;

CREATE TABLE Voie (
    num_voie INT(11) NOT NULL,
    interdite TINYINT(1) NOT NULL,
    PRIMARY KEY (num_voie)
);

CREATE TABLE Rame (
    num_serie VARCHAR(12) NOT NULL,
    type_rame VARCHAR(50) NOT NULL,
    voie INT(11) UNIQUE,
    conducteur_entrant VARCHAR(50) NOT NULL,
    PRIMARY KEY (num_serie),
    CONSTRAINT fk_voie FOREIGN KEY (voie) REFERENCES Voie(num_voie)
);

CREATE TABLE Tache (
    num_serie_rame VARCHAR(12) NOT NULL,
    num_tache INT(11) NOT NULL,
    tache TEXT NOT NULL,
    PRIMARY KEY (num_serie_rame, num_tache),
    CONSTRAINT fk_rame FOREIGN KEY (num_serie_rame) REFERENCES Rame(num_serie)
);