-- Création de la base de données si elle n'existe pas
CREATE DATABASE IF NOT EXISTS logistico_train;
USE logistico_train;

-- Création de la table Voie [cite: 38]
CREATE TABLE Voie (
    num_voie INT(11) NOT NULL, -- Identifiant unique de la voie [cite: 39]
    interdite TINYINT(1) NOT NULL, -- État de disponibilité (travaux, etc.) [cite: 40]
    PRIMARY KEY (num_voie)
);

-- Création de la table Rame [cite: 41]
CREATE TABLE Rame (
    num_serie VARCHAR(12) NOT NULL, -- Numéro de série unique [cite: 42]
    type_rame VARCHAR(50) NOT NULL, -- Modèle de la rame [cite: 43]
    voie INT(11) UNIQUE, -- Voie affectée (une seule rame par voie) [cite: 44]
    conducteur_entrant VARCHAR(50) NOT NULL, -- Identifiant du conducteur [cite: 45]
    PRIMARY KEY (num_serie),
    CONSTRAINT fk_voie FOREIGN KEY (voie) REFERENCES Voie(num_voie)
);

-- Création de la table Tache [cite: 46]
CREATE TABLE Tache (
    num_serie_rame VARCHAR(12) NOT NULL, -- Référence à la rame [cite: 47]
    num_tache INT(11) NOT NULL, -- Numéro de la tâche [cite: 48]
    tache TEXT NOT NULL, -- Description de l'opération [cite: 49]
    PRIMARY KEY (num_serie_rame, num_tache),
    CONSTRAINT fk_rame FOREIGN KEY (num_serie_rame) REFERENCES Rame(num_serie)
);